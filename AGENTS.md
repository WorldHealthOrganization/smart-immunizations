# AGENTS.md — smart-immunizations

This file is agent-generic: Claude Code, Gemini CLI, Cursor, Copilot and others
read it natively. What binds everywhere is the harness's
[`AGENTS.md`](https://github.com/litlfred/cat-harness/blob/HEAD/AGENTS.md); what
this repository *is* is [`README.md`](README.md).

## What this instance is

The WHO SMART Guidelines immunizations implementation guide: FHIR IG source
under `input/`, built by the IG Publisher. It has no harness of its own:
`index.config.json` mounts `smart-base` and the layers below it, and
`smart-immunizations.json` declares what an index may mount from here.

## The one rule

**The declaration names only what an index mounting this instance has.** A
directory declared but not mounted is scanned by no consumer, which then
reports a clean run over it. So when you add a directory to an index's
override, declare it here in the same change, and when you remove one, drop it
from both.

## What an index mounts from here

`smart-immunizations.json` declares these directories. `input/` and the rest
stay in this repository.

| directory | id | what it holds |
|---|---|---|
| `library/` | `library` | the L1 library |
| `examples/l1-recommendation-scenarios/` | `l1-recommendation-scenarios` | the measles worked example (smart-base's `l1-extraction` kind), outside `library/` so it is not read as a library entry |
| `document-kinds/` | `smart-immunizations-document-kinds` | this IG's DAK coverage report |
| `annexes/` | `smart-immunizations-annexes` | fhir-harness's `ig-annex` page hook: `annexes.json` places each annex on its page |
| `web-annexes/` | `smart-immunizations-web-annexes` | smart-base's `web-annex` kind: the data dictionary, Web Annex A of the DAK |
| `catalogue/` | `smart-immunizations-catalogue` | catalogue records of the works the IG cites that are not ingested |
| `test/results/` | `qa` | QA verdicts, stored on the `cat/cat-harness/qa-reports` branch |

The swimlane annexes in `annexes/` (`personas-swimlanes.md`,
`processes-swimlanes.md`) and `web-annexes/dak-data-dictionary.json` are
written by smart-base scripts: regenerate them, never edit them. A declaration
naming a kind the pinned layers do not register is refused when it is read, so
a new kind needs fhir-harness and smart-base pins that know it.
