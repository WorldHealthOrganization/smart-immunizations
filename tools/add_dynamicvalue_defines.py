#!/usr/bin/env python3
"""Add cql-identifier defines for PlanDefinition dynamicValue constants to each
*Logic.cql primary library.

`rulesets-plandefinition.fsh` resolves constant `dynamicValue`s
(`status`, `intent`, `medication`, `category.coding`, `priority`) via
`text/cql-identifier`, which requires the named define to exist in each
PlanDefinition's primary library. This script appends those defines.

It reads `fsh-generated/resources/PlanDefinition-*.json` to discover, per
primary library, which defines that library's PlanDefinition(s) reference,
then appends a `// @generated dynamicValue constants` block to the
corresponding `input/cql/{lib}.cql`.

Usage (from the repo root, after `sushi build`):

    python3 tools/add_dynamicvalue_defines.py .

Idempotent: skips files that already contain the marker. Re-run after
adding new PlanDefinitions; the script picks up new primary libraries and
new medication codes from the rebuilt `fsh-generated/` output.
"""
import glob
import json
import os
import re
import sys
from collections import defaultdict

REPO = sys.argv[1] if len(sys.argv) > 1 else "."
MARKER = "// @generated dynamicValue constants"


def immz_z_codes():
    """display → code, parsed from the canonical IMMZ.Z code system."""
    out = {}
    for line in open(f"{REPO}/input/fsh/codesystems/IMMZ.Z.fsh"):
        m = re.match(r'\* #(\S+)\s+"([^"]+)"', line)
        if m:
            out[m.group(2)] = m.group(1)
    return out


def medication_display(dv):
    """Extract the IMMZ.Z display string from a `medication` dynamicValue,
    whether it's still the inline `text/cql-expression` Concept constructor or
    already the `text/cql-identifier` form."""
    expr = dv["expression"]["expression"]
    m = re.search(r"display:\s*'([^']+)'", expr)
    if m:
        return m.group(1)
    if expr.endswith(" Medication"):
        return expr[: -len(" Medication")]
    return None


def load_requirements():
    """Map library name → {needs_mr, needs_cr, medications: set[(code, display)]}."""
    by_display = immz_z_codes()
    reqs = defaultdict(lambda: {"needs_mr": False, "needs_cr": False, "medications": set()})
    for f in glob.glob(f"{REPO}/fsh-generated/resources/PlanDefinition-IMMZD*.json"):
        pd = json.load(open(f))
        libs = pd.get("library", [])
        if not libs:
            continue
        lib = libs[0].rsplit("/", 1)[-1]
        for a in pd.get("action", []):
            dvs = a.get("dynamicValue", [])
            paths = {dv.get("path") for dv in dvs}
            if "medication" in paths:
                reqs[lib]["needs_mr"] = True
                for dv in dvs:
                    if dv.get("path") != "medication":
                        continue
                    display = medication_display(dv)
                    if display and display in by_display:
                        reqs[lib]["medications"].add((by_display[display], display))
            if "category.coding" in paths or "priority" in paths:
                reqs[lib]["needs_cr"] = True
            if any(
                dv.get("path") == "status"
                and dv["expression"]["expression"] in ("'active'", "Active Status")
                for dv in dvs
            ):
                reqs[lib]["needs_cr"] = True
            if any(
                dv.get("path") == "status"
                and dv["expression"]["expression"] in ("'draft'", "Draft Status")
                for dv in dvs
            ):
                reqs[lib]["needs_mr"] = True
    return reqs


def block_for(req):
    lines = [
        "",
        MARKER,
        "// Resolved via text/cql-identifier from PlanDefinition.action.dynamicValue,",
        "// avoiding per-$apply CQL→ELM compilation of inline text/cql-expression literals.",
        "// See input/fsh/rulesets/rulesets-plandefinition.fsh.",
    ]
    if req["needs_mr"]:
        lines.append('define "Draft Status": \'draft\'')
        lines.append('define "Proposal Intent": \'proposal\'')
    if req["needs_cr"]:
        lines.append('define "Active Status": \'active\'')
        lines.append(
            'define "Alert Category Coding": '
            "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
        )
        lines.append(
            'define "Routine Priority": '
            "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
        )
    for code, display in sorted(req["medications"]):
        lines.append(
            f'define "{display} Medication": '
            f"Concept {{ codes: {{ Code {{ system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', "
            f"code: '{code}', display: '{display}' }} }}, display: '{display}' }}"
        )
    lines.append("")
    return "\n".join(lines)


def main():
    reqs = load_requirements()
    print(f"Libraries needing defines: {len(reqs)}")
    written, skipped, missing = 0, 0, 0
    for lib, req in sorted(reqs.items()):
        path = f"{REPO}/input/cql/{lib}.cql"
        if not os.path.exists(path):
            print(f"  MISSING: {path}")
            missing += 1
            continue
        with open(path) as f:
            content = f.read()
        if MARKER in content:
            skipped += 1
            continue
        with open(path, "a") as f:
            f.write(block_for(req))
        written += 1
    print(f"Written: {written}, skipped (already done): {skipped}, missing: {missing}")


if __name__ == "__main__":
    main()
