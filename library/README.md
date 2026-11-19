# Library — the immunizations DAK and the L1 sources it cites

The library behind the WHO Digital adaptation kit for immunizations. It was built with
[folio-assistant](https://github.com/litlfred/folio-assistant)'s
`dak-l1-library` skill:

1. **The DAK is ingested, and stays library-only.** A DAK is L2, not L1, so it
   has no L1 knowledge graph.
2. **Component 1 §1.2** ("WHO guidelines, recommendations and guidance") is
   read for the sources the DAK draws on.
3. **Each L1 source is fetched, ingested on its own, and given its own L1
   graph**: `smart-kg-l1-library.jsonld` beside its entry.

The graphs are [WHO smart-kg](https://github.com/WorldHealthOrganization/smart-kg)
**L1 3.0** documents (main `3f5e477`) using the `l1-library` layer from
[litlfred/smart-base](https://github.com/litlfred/smart-base) `kg/`. All of them
pass smart-base's Zod validator.

## They are JSON-LD

Each graph names `http://smart.who.int/kg/l1-library.context.jsonld`, generated
in litlfred/smart-base `kg/` from the same source as the FHIR models. The URL
is the layer's identity and is never fetched: smart-base's `src/loader.ts`
serves the context offline.

```ts
import jsonld from "jsonld";
import { documentLoader } from "<smart-base>/kg/src/loader.ts";
const nquads = await jsonld.toRDF(graph, { format: "application/n-quads", documentLoader });
```

Every node keeps its class, every property its name (Dublin Core where L1
inherits it), and each specialisation is a `prov:specializationOf` statement.
Leave no one behind alone gives 1,508 triples.

## The rule between library and L1

The library is **upstream** of L1 (owner, 2026-10-07):
- An L1 publication, its sections and its printed elements are each
  `specializationOf` the library node they were read from: the entry, a
  section, a block.
- Nothing in the library points at L1.
- L1 inherits whatever sectioning the ingest produced.

## The L1 graphs

| ref | source | fetched from | sectioning | sections | elements |
|---|---|---|---|---|---|
| (31) | [Leave no one behind: guidance for planning and implementing catch-up vaccination](https://github.com/litlfred/who-iris/tree/main/library/9789240016514-eng/) (in who-iris) (2021), implementation guidance | WHO IRIS 10665/340749 | inferred contents | 21 | 1 figure, 7 boxes, 7 tables |
| (15) | [Electronic Immunization Registry: practical considerations…](9789275119532-eng/) (PAHO, 2018) | PAHO IRIS 10665.2/34865 | inferred contents | 18 | 14 figures, 21 tables |
| (26) | [Analysis and use of health facility data: guidance for immunization programme managers](facilityanalysisguide-immunization/) (2018), implementation guidance | who.int item page | PDF outline | 57 | 1 figure |
| (29) | [Table 1: Summary of WHO position papers – recommendations for routine immunization](immunization-summary-table-1/), summary table | who.int item page | PDF outline | 2 | 1 table |
| (29) | [Table 2: … recommended routine immunizations for children](immunization-summary-table-2/), summary table | who.int item page | PDF outline | 3 | 1 table |
| (29) | [Table 3: Recommendations for interrupted or delayed routine immunization](immunization-summary-table-3/), summary table | who.int item page | PDF outline | 1 | 1 table |
| (29) | [Table 4: … immunization of health care workers](immunization-summary-table-4/), summary table | who.int item page | PDF outline | 1 | 1 table |
| (32) | [Monitoring metrics related to the global COVID-19 vaccination strategy in a changing world: July 2022 update](monitoring-metrics-related-to-the-global-covid-19-vaccinatio/) | who.int item page | pages (its inferred contents failed the trust tests) | 7 | 2 tables |

Each source's `uploads/<doc_id>/intake.json` records **why it is L1**. For a WHO IRIS item that intake lives in [litlfred/who-iris `uploads/`](https://github.com/litlfred/who-iris/tree/main/uploads), with the item, since 2026-10-30 ([who-iris#107](https://github.com/litlfred/who-iris/issues/107)).
§1.2 calls everything it cites "WHO guidelines and guidance", so each source
carries a `context` classification naming its reference number. LNOB also
carries the owner's `declared` one.

## Not L1, held or not

| | why |
|---|---|
| [`9789240099456-eng/`](https://github.com/litlfred/who-iris/tree/main/library/9789240099456-eng/) (in who-iris), the DAK itself | L2. Library only. |
| [`who-2019-ncov-digital-certificates-vaccination-20211-eng/`](https://github.com/litlfred/who-iris/tree/main/library/who-2019-ncov-digital-certificates-vaccination-20211-eng/) (in who-iris), (28) DDCC | Owner ruling, 2026-10-07. §1.2's context says L1; the declaration wins, and the run reports the disagreement. |
| (24) WHO Immunization Data Portal | A website, not a publication. Not fetched. |
| (30) Sample WHO/UNICEF joint reporting form | A blank spreadsheet form. Not fetched; data.unicef.org also refuses this environment. |
| (22) UHC compendium: health interventions for universal health coverage | A web compendium of interventions, not guidance. Not fetched. §1.1's unnumbered "WHO universal health coverage list of essential interventions" resolves to it: the DAK names it on PDF p. 18, "The list of health interventions is drawn from the universal health coverage menu of interventions compiled by WHO (22)." Reviewed 2026-10-06 (litlfred/smart-immunizations#3). |

## Decided by the owner, 2026-10-23

- **(29) is a newer edition than the one cited, and stays.** The DAK (2024)
  cites the tables "updated in 2024"; the entries hold the editions dated
  **1 December 2025** (fetched 2026-10-08, re-fetched 2026-10-23 with the same
  sha256). The 2024 editions were searched for and not found: WHO IRIS holds
  none; who.int replaced the 2024 files in place (its
  `table_N_dec_2024_english.pdf` names now redirect to the 2025 PDFs); the
  Internet Archive and third-party copies were not reachable from the agent's
  environment. Each table's README and intake says so, with what was
  searched. A Wayback snapshot of the cdn.who.int URLs (2024 to mid-2025) is
  where to look next.
- **Licences are read from each PDF, and no WHO default is assumed.**

  | ref | entry | licence | evidence |
  |---|---|---|---|
  | (15) | [PAHO EIR](9789275119532-eng/) | all rights reserved (`LicenseRef-All-Rights-Reserved`) | imprint, p. 2: "All rights reserved. … Requests for permission to reproduce or translate PAHO Publications should be addressed to the Communications Department"; "© Pan American Health Organization 2017" |
  | (26) | [Analysis and use of health facility data](facilityanalysisguide-immunization/) | all rights reserved (`LicenseRef-All-Rights-Reserved`) | p. 4: "© World Health Organization 2018 All rights reserved. This is a working document and should not be quoted, reproduced, translated or adapted, in part or in whole, in any form or by any means." |
  | (29) | Tables 1–4 | `unknown` | no copyright notice or licence on any page or in the metadata |
  | (32) | [Monitoring metrics, July 2022](monitoring-metrics-related-to-the-global-covid-19-vaccinatio/) | `unknown` | no copyright notice or licence on any page or in the metadata |

  Each entry's `licence.json` (and its upload's `intake.json`) carries the
  page and the quote. (26) asks not to be quoted or reproduced, and the
  library holds its extracted text: **a person decides whether it stays.**

## Follow-up

- **Model table rows and cells for the L1 summary tables (smart-immunizations
  (29)).** Each summary table is one `table` element; its rows and cells are
  the next step (`pdf-tables.py`). Recorded here because the work plan
  (`beans`) is not kept on this repository's remote and could not be written
  from it (owner, 2026-10-23: follow-up, not blocking).
- **Element types the library does not extract yet:** table rows, footnotes,
  charts, images, flowcharts and lists. Each publication's note names them.

**Image descriptions are drafts.** Every extracted image and every
vector-figure render of the three entries ingested before 2026-10-07 carries a
description, judged by looking at it and recorded in
[`image-verdicts.json`](image-verdicts.json) (applied by
`apply-image-verdicts.ts`). An agent drafted them and no person has reviewed
them yet (`bun run cat narratives` to confirm or reject).

`../uploads/<doc_id>/` holds each fetched item's `intake.json` and its Dublin
Core record. The PDFs are pinned there by sha256 and not committed. WHO IRIS
items do not stay here: since 2026-10-30 every IRIS item has one home, in
[litlfred/who-iris](https://github.com/litlfred/who-iris) (intakes in `uploads/`,
records in `catalogue/records/`, ingested libraries in `library/`;
[who-iris#107](https://github.com/litlfred/who-iris/issues/107)). The 26 Weekly
Epidemiological Record position papers, the IMMZ DAK, LNOB, DDCC:VS and the
other IRIS publications this IG cites are there.

## Regenerating

From a folio-assistant checkout beside this one:

```sh
# fetch (an IRIS handle into who-iris, or a who.int item page here)
bun run folio-assistant-core/scripts/fetch-dspace-item.ts <handle URL> --out ../who-iris/uploads
bun run folio-assistant-core/scripts/fetch-who-publication.ts <who.int item URL> --out ../smart-immunizations/uploads
# Component 1: record section 1.2's L1 context on each held source; writes nothing beside the DAK
bun run smart-base/scripts/extract-dak-l1-references.ts \
  --entry ../who-iris/library/9789240099456-eng --context-only --record-context
# each L1 source as L1 (a non-L1 entry is reported and skipped); --check to verify
bun run smart-base/scripts/l1-specialise.ts --entry ../smart-immunizations/library/<entry> --validate-zod <smart-base checkout>
```

The measles L1 recommendation-scenarios worked example is not a library entry,
so it lives in [`examples/l1-recommendation-scenarios/`](../examples/l1-recommendation-scenarios/README.md).
