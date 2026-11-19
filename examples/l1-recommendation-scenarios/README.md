# The measles scenarios — `examples/l1-recommendation-scenarios/measles/`

The worked example of smart-base's `recommendation-extraction` skill (Part 2,
"An authored L1, scenario half only"): the 75 recommendations of the WHO
measles position paper (WER 92(17), 2017) mapped against this guide's own
personas and processes. One user scenario per recommendation, every link a
candidate.

| file | what it is |
|---|---|
| `measles-position-paper-2017.l1.yaml` | the 75 recommendations, authored |
| `immz-vocabulary.json` | this guide's personas and processes, read from `input/pagecontent/` at `86898e6` |
| `measles-immz-mapping.yaml` | per recommendation: persona, process, act, outcome, domain, each with its source and basis |
| `candidates/` | the output: `scenario-candidates.l2.json` (an L2 graph document) and `scenario-warnings.md` (37 warnings) |

It lives in this guide's repository because smart-base sits below the guides
and may not name them, and outside `library/` so the library's readers do not
take it for a library entry. The generic rung (`DAK.Persona.*`) is smart-base's
own, so the run reads it from the smart-base mount. Run it from this
repository's root, with the layers in `index.config.json` mounted:

```sh
bun run l1-scenarios:measles:check   # fails when the candidates are not current with their inputs
bun run l1-scenarios:measles         # regenerate
```
