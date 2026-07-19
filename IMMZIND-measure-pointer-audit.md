# IMMZIND Measure Pointer Audit

**Date:** 2026-03-20

## Background

Each file in `input/tests/measures/` is a **pseudo-symlink** — a plain text file (not an OS-level symlink) containing a relative path. The tooling reads these files and treats them as pointers to a directory under `input/tests/plandefinition/` containing the actual test data. This pattern allows multiple measures to share the same test data.

## Summary

| Status | Count |
|---|---|
| ✅ Working | 5 |
| ❌ Missing target (name mismatch) | 24 |
| ⛓️ Broken chain | 5 |
| ❌ Empty (no content) | 6 |
| **Total** | **40** |

Most missing-target cases are **name mismatches** — the plandefinition directory was likely renamed when the IG was restructured, but the pointer files were not updated.

## Detail Table

| File | Status | Points To | Closest Existing Directory |
|---|---|---|---|
| IMMZIND01Logic | ✅ OK | `IMMZD2DTBCGLogic` | — |
| IMMZIND02Logic | ❌ EMPTY | *(nothing)* | — |
| IMMZIND03Logic | ⛓️ BROKEN CHAIN | `IMMZIND02Logic` (empty) | — |
| IMMZIND04Logic | ⛓️ BROKEN CHAIN | `IMMZIND02Logic` (empty) | — |
| IMMZIND05Logic | ❌ MISSING | `IMMZD2DTHepatitisBBirthLogic` | `IMMZD2DTHepatitisBBirthDoseLogic` |
| IMMZIND06Logic | ❌ MISSING | `IMMZD2DTPoliobOPVIPVLogic` | `IMMZD2DTPolioBOPVPlusIPVLogic` |
| IMMZIND07Logic | ❌ MISSING | `IMMZD2DTPoliobOPVIPVLogic` | `IMMZD2DTPolioBOPVPlusIPVLogic` |
| IMMZIND08Logic | ❌ MISSING | `IMMZD2DTPoliobOPVIPVLogic` | `IMMZD2DTPolioBOPVPlusIPVLogic` |
| IMMZIND09Logic | ❌ MISSING | `IMMZD2DTPoliobOPVIPVLogic` | `IMMZD2DTPolioBOPVPlusIPVLogic` |
| IMMZIND10Logic | ❌ MISSING | `IMMZD2DTPoliobOPVIPVLogic` | `IMMZD2DTPolioBOPVPlusIPVLogic` |
| IMMZIND11Logic | ❌ MISSING | `IMMZD2DTPolioIPVLogic` | `IMMZD2DTPolioIPVOnlyLogic` |
| IMMZIND12Logic | ❌ MISSING | `IMMZD2DTMeaslesOngoingTxLogic` | `IMMZD2DTMeaslesOngoingTransmissionLogic` |
| IMMZIND13Logic | ⛓️ BROKEN CHAIN | `IMMZIND12Logic` (missing) | — |
| IMMZIND14Logic | ❌ MISSING | `IMMZD2DTHPV2DoseLogic` | `IMMZD2DTHPV2DosesLogic` |
| IMMZIND15Logic | ❌ MISSING | `IMMZD2DTHPV2DoseLogic` | `IMMZD2DTHPV2DosesLogic` |
| IMMZIND16Logic | ❌ MISSING | `IMMZD2DTMeningococcalMenA1Logic` | `IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic` |
| IMMZIND17Logic | ❌ MISSING | `IMMZD2DTPneumococcal3p0bLogic` | `IMMZD2DTPneumococcal3DosesLogic` |
| IMMZIND18Logic | ❌ MISSING | `IMMZD2DTPneumococcal3p0bLogic` | `IMMZD2DTPneumococcal3DosesLogic` |
| IMMZIND19Logic | ❌ MISSING | `IMMZD2DTPneumococcal3p0bLogic` | `IMMZD2DTPneumococcal3DosesLogic` |
| IMMZIND20Logic | ✅ OK | `IMMZD2DTRotavirusLogic` | — |
| IMMZIND21Logic | ✅ OK | `IMMZD2DTRotavirusLogic` | — |
| IMMZIND22Logic | ✅ OK | `IMMZD2DTRotavirusLogic` | — |
| IMMZIND23Logic | ❌ MISSING | `IMMZD2DTDTPOnTimeLogic` | `IMMZD2DTDTPOnTimeStartLogic` |
| IMMZIND24Logic | ❌ MISSING | `IMMZD2DTDTPOnTimeLogic` | `IMMZD2DTDTPOnTimeStartLogic` |
| IMMZIND25Logic | ❌ MISSING | `IMMZD2DTDTPOnTimeLogic` | `IMMZD2DTDTPOnTimeStartLogic` |
| IMMZIND26Logic | ❌ MISSING | `IMMZD2DTYellowfeverLogic` | `IMMZD2DTYellowfeverYellowFeverLogic` |
| IMMZIND27Logic | ❌ MISSING | `IMMZD2DTJEIVLogic` | `IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic` (?) |
| IMMZIND28Logic | ✅ OK | `IMMZD2DTTyphoidTCVLogic` | — |
| IMMZIND29Logic | ❌ MISSING | `IMMZD2DTSeasonalinfluenza2DoseLogic` | `IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic` |
| IMMZIND30Logic | ❌ EMPTY | *(nothing)* | — |
| IMMZIND31Logic | ❌ MISSING | `IMMZD2DTMalaria4DoseLogic` | `IMMZD2DTMalariaLogic` |
| IMMZIND32Logic | ❌ MISSING | `IMMZD2DTMalaria4DoseLogic` | `IMMZD2DTMalariaLogic` |
| IMMZIND33Logic | ❌ MISSING | `IMMZD2DTMalaria4DoseLogic` | `IMMZD2DTMalariaLogic` |
| IMMZIND34Logic | ❌ MISSING | `IMMZD2DTMalaria4DoseLogic` | `IMMZD2DTMalariaLogic` |
| IMMZIND35Logic | ❌ EMPTY | *(nothing)* | — |
| IMMZIND36Logic | ❌ EMPTY | *(nothing)* | — |
| IMMZIND37Logic | ⛓️ BROKEN CHAIN | `IMMZIND13Logic` → `IMMZIND12Logic` (missing) | — |
| IMMZIND38Logic | ⛓️ BROKEN CHAIN | `IMMZIND34Logic` (missing) | — |
| IMMZIND39Logic | ⛓️ BROKEN CHAIN | `IMMZIND34Logic` (missing) | — |
| IMMZIND44Logic | ❌ EMPTY | *(nothing)* | — |
| IMMZIND45Logic | ❌ EMPTY | *(nothing)* | — |

## Grouped by Issue

### Empty files (no pointer content)
- IMMZIND02Logic, IMMZIND30Logic, IMMZIND35Logic, IMMZIND36Logic, IMMZIND44Logic, IMMZIND45Logic

### Broken chains (point to another IMMZIND that is itself broken)
- IMMZIND03Logic, IMMZIND04Logic → `IMMZIND02Logic` (empty)
- IMMZIND13Logic → `IMMZIND12Logic` (missing target)
- IMMZIND37Logic → `IMMZIND13Logic` → `IMMZIND12Logic` (missing target)
- IMMZIND38Logic, IMMZIND39Logic → `IMMZIND34Logic` (missing target)

### Missing targets grouped by target name

| Target (in pointer file) | Likely intended directory | Affected IMMZIND files |
|---|---|---|
| `IMMZD2DTHepatitisBBirthLogic` | `IMMZD2DTHepatitisBBirthDoseLogic` | IND05 |
| `IMMZD2DTPoliobOPVIPVLogic` | `IMMZD2DTPolioBOPVPlusIPVLogic` | IND06–10 |
| `IMMZD2DTPolioIPVLogic` | `IMMZD2DTPolioIPVOnlyLogic` | IND11 |
| `IMMZD2DTMeaslesOngoingTxLogic` | `IMMZD2DTMeaslesOngoingTransmissionLogic` | IND12 (+ IND13, IND37 via chain) |
| `IMMZD2DTHPV2DoseLogic` | `IMMZD2DTHPV2DosesLogic` | IND14–15 |
| `IMMZD2DTMeningococcalMenA1Logic` | `IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic` | IND16 |
| `IMMZD2DTPneumococcal3p0bLogic` | `IMMZD2DTPneumococcal3DosesLogic` | IND17–19 |
| `IMMZD2DTDTPOnTimeLogic` | `IMMZD2DTDTPOnTimeStartLogic` | IND23–25 |
| `IMMZD2DTYellowfeverLogic` | `IMMZD2DTYellowfeverYellowFeverLogic` | IND26 |
| `IMMZD2DTJEIVLogic` | `IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic` (?) | IND27 |
| `IMMZD2DTSeasonalinfluenza2DoseLogic` | `IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic` | IND29 |
| `IMMZD2DTMalaria4DoseLogic` | `IMMZD2DTMalariaLogic` | IND31–34 (+ IND38–39 via chain) |
