# IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule**

## PlanDefinition: IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPPregnancyStartingWith4Doses | *Version*:0.2.0 |
| Draft as of 2026-03-24 | *Computable Name*:IMMZD18SDTPPregnancyStartingWith4Doses |

 
IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood diphtheria–tetanus–pertussis (DTP) doses 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule](PlanDefinition-IMMZD18SDTPPregnancyStartingWith4Doses.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-24 11:36:08+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood diphtheria–tetanus–pertussis (DTP) doses
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SDTPPregnancyStartingWith4DosesLogic](Library-IMMZD18SDTPPregnancyStartingWith4DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SDTPPregnancyStartingWith4Doses",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "contained" : [{
    "resourceType" : "Library",
    "id" : "effective-data-requirements",
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE161",
        "display" : "Potential contraindications"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE162",
        "display" : "Currently pregnant"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "recurrence"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "relapse"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "82810-3",
        "display" : "Pregnancy status"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA15173-0",
        "display" : "Pregnant"
      }
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @dataElement All Doses Administered to Patient\n */\ndefine \"Doses Administered to Patient\":\n  [Immunization] I\n    where I.status = 'completed'\n    and I.isSubpotent is not true"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 0
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPElements"
      },
      {
        "url" : "name",
        "valueString" : "Td Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Td Doses Administered to Patient\n*/\ndefine \"Td Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Tetanus and diphtheria-containing vaccines\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 1
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPElements"
      },
      {
        "url" : "name",
        "valueString" : "Td Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Td Booster Series Doses Administered to Patient\n*/\ndefine \"Td Booster Series Doses Administered to Patient\":\n  \"Td Doses Administered to Patient\".seriesBooster()"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 2
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Td Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Td Booster Series Doses Administered to Patient\n*/\ndefine \"Td Booster Series Doses Administered to Patient\":\n  DTPElements.\"Td Booster Series Doses Administered to Patient\".onOrBefore(Today)"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 3
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Td Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Td Booster Series Doses Administered\n*/\ndefine \"Number of Td Booster Series Doses Administered\":\n  Count(\"Td Booster Series Doses Administered to Patient\")"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 4
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two tetanus and diphtheria booster doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two tetanus and diphtheria booster doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\n@code: Two tetanus and diphtheria booster doses were administered-140\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n@decision: IMMZ.D2.DT.DTP.Pregnancy: Determine whether DTP-containing vaccines are needed for pregnant women\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood DTP doses\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses\n*/\ndefine \"Two tetanus and diphtheria booster doses were administered\":\n  \"Number of Td Booster Series Doses Administered\" = 2"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 5
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second tetanus and diphtheria booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second tetanus and diphtheria booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\n*/\ndefine \"Second tetanus and diphtheria booster dose was administered\":\n  Encounter.\"Two tetanus and diphtheria booster doses were administered\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 6
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Three tetanus and diphtheria booster doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three tetanus and diphtheria booster doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 3\n@code: Three tetanus and diphtheria booster doses were administered-140\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Pregnancy: Determine whether DTP-containing vaccines are needed for pregnant women\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood DTP doses\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses\n*/\ndefine \"Three tetanus and diphtheria booster doses were administered\":\n  \"Number of Td Booster Series Doses Administered\" = 3"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 7
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Third tetanus and diphtheria-containing booster dose was administered. Tetanus and diphtheria immunization schedule has been completed."
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Third tetanus and diphtheria-containing booster dose was administered. Tetanus and diphtheria immunization schedule has been completed.\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 3\n\"Immunization recommendation status\" = \"Complete\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\")\n*/\ndefine \"Third tetanus and diphtheria-containing booster dose was administered. Tetanus and diphtheria immunization schedule has been completed.\":\n  Encounter.\"Three tetanus and diphtheria booster doses were administered\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 8
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tetanus and diphtheria-containing vaccine booster dose 3\n@description: Provision of tetanus and diphtheria booster dose 3 for pregnant women who received 4 tetanus-containing vaccines doses during childhood or pre-adulthood\n@trigger: Second tetanus and diphtheria booster dose was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\n@triggerDate: Latest \"Date and time of vaccination\" where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\"\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 3\":\n  \"Second tetanus and diphtheria booster dose was administered\" and\n  not \"Third tetanus and diphtheria-containing booster dose was administered. Tetanus and diphtheria immunization schedule has been completed.\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 9
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPElements"
      },
      {
        "url" : "name",
        "valueString" : "DTP Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: DTP containing Doses Administered to Patient\n*/\ndefine \"DTP Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"DTP-containing vaccines\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 10
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPElements"
      },
      {
        "url" : "name",
        "valueString" : "DTP Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: DTP containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"DTP Primary Series Doses Administered to Patient\":\n  \"DTP Doses Administered to Patient\".seriesPrimary()"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 11
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "DTP Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: DTP containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"DTP Primary Series Doses Administered to Patient\":\n  DTPElements.\"DTP Primary Series Doses Administered to Patient\".onOrBefore(Today)"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 12
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of DTP Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of DTP Primary Series doses\n*/\ndefine \"Number of DTP Primary Series Doses Administered\":\n  Count(\"DTP Primary Series Doses Administered to Patient\")"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 13
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Three DTP primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three DTP primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three DTP primary series doses were administered-123\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n@decision: IMMZ.D2.DT.DTP.Pregnancy: Determine whether DTP-containing vaccines are needed for pregnant women\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood DTP doses\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses\n*/\ndefine \"Three DTP primary series doses were administered\":\n  \"Number of DTP Primary Series Doses Administered\" = 3"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 14
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One tetanus and diphtheria booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One tetanus and diphtheria booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n@code: One tetanus and diphtheria booster dose was administered-140\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n@decision: IMMZ.D2.DT.DTP.Pregnancy: Determine whether DTP-containing vaccines are needed for pregnant women\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses\n*/\ndefine \"One tetanus and diphtheria booster dose was administered\":\n  \"Number of Td Booster Series Doses Administered\" = 1"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 15
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Potential contraindications"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Potential contraindications observations\n*/\ndefine \"Potential contraindications\":\n  ([Observation: Concepts.\"Potential contraindications\"]).complete()"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 16
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Currently pregnant Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for currently pregnant\n*/\ndefine \"CI Currently pregnant Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Currently pregnant\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 17
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Currently pregnant Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for currently pregnant\n*/\ndefine \"CI Currently pregnant Observation\":\n  Elements.\"CI Currently pregnant Observation\" O\n    where O.encounter.references(EncounterId)\n      or O.effective.toInterval() starts same day or after Today - 9 months"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 18
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Currently pregnant Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for currently pregnant\n*/\ndefine \"CI Currently pregnant Condition\":\n  [Condition: Concepts.\"CI-Currently pregnant\"]"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 19
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Currently pregnant Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for currently pregnant\n*/\ndefine \"CI Currently pregnant Condition\":\n  Elements.\"CI Currently pregnant Condition\" C\n    where C.prevalenceInterval() includes Today"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 20
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOElements"
      },
      {
        "url" : "name",
        "valueString" : "Pregnancy Status Observation"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Pregnancy Status Observation\":\n  [Observation: Concepts.\"Pregnancy status\"] O\n    where O.status in { 'final', 'amended', 'corrected' }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 21
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOElements"
      },
      {
        "url" : "name",
        "valueString" : "Pregnant Observation"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Pregnant Observation\":\n  \"Pregnancy Status Observation\" O\n    where O.value ~ Concepts.\"Pregnant\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 22
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Pregnant Observation"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Pregnant Observation\":\n  Elements.\"Pregnant Observation\" O\n    where O.encounter.references(EncounterId)\n      or O.effective.toInterval() starts same day or after AsOf - 9 months"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 23
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is pregnant"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is pregnant\n@pseudocode: \"Potential contraindications\" = \"Currently pregnant\"\n*/\ndefine \"The client is pregnant\":\n  exists \"CI Currently pregnant Observation\"\n  or exists \"CI Currently pregnant Condition\"\n  or exists WE.\"Pregnant Observation\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 24
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is currently pregnant"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is currently pregnant\n@pseudocode: \"Currently pregnant\" = TRUE\n@code: Client is currently pregnant-27\n@decision: IMMZ.D2.DT.DTP.Pregnancy: Determine whether DTP-containing vaccines are needed for pregnant women\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood DTP doses\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses\n*/\ndefine \"Client is currently pregnant\":\n  Encounter.\"The client is pregnant\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 25
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)\n@description: Provision of tetanus and diphtheria booster dose 2 for pregnant women who received 4 tetanus-containing vaccines doses during childhood or pre-adulthood\n@trigger: The primary DTP series has been completed, first tetanus and diphtheria booster dose was administered and client is currently pregnant\n@pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\") AND Count of vaccines administered where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1 AND \"Currently pregnant\" = TRUE\n@triggerDate: First ANC contact date\n\"Contact date\" WHEN \"ANC contact number\" = 1\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)\":\n  Encounter.\"Three DTP primary series doses were administered\" and\n  Encounter.\"One tetanus and diphtheria booster dose was administered\" and\n  Encounter.\"Client is currently pregnant\" and\n  not \"Second tetanus and diphtheria booster dose was administered\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 26
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Due Date\n@pseudocode: \"Contact date\" WHEN \"ANC contact number\" = 1\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Due Date\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)\" then Today\n  else null"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 27
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Overdue\n@pseudocode: Every subsequent contact until 38 weeks\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Overdue\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)\" then Today\n  else null"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 28
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Expiration\n@pseudocode: Two weeks before birth for the pregnancy; however individuals remain eligible to be vaccinated\n\"Gestational age\" < 38 weeks\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Expiration\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)\" then 'Two weeks before birth'\n  else null"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 29
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Create\n@create: Women who received 4 tetanus-containing vaccine doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity.\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Create\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)\"\n  then 'Women who received 4 tetanus-containing vaccine doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity.' + '\nDue Date: ' + ToString(\"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Due Date\") + '\nOverdue: ' + ToString(\"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Overdue\") + '\nExpiration: ' + \"Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Expiration\"\n  else ''"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 30
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Td Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Td Doses Administered to Patient\n*/\ndefine \"Td Doses Administered to Patient\":\n  DTPElements.\"Td Doses Administered to Patient\".onOrBefore(Today)"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 31
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Td Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Td Dose\n*/\ndefine \"Date of Latest Td Dose\":\n  date from start of \"Td Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 32
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 3 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Tetanus and diphtheria-containing vaccine booster dose 3 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\") + 1 year or during next pregnancy\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 3 Due Date\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 3\" then Encounter.\"Date of Latest Td Dose\" + 1 year\n  else null"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 33
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 3 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tetanus and diphtheria-containing vaccine booster dose 3 Create\n@create: To provide lifelong protection for tetanus, a sixth dose should be provided at least 1 year after the fifth dose, or in next pregnancy.\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 3 Create\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 3\"\n  then 'To provide lifelong protection for tetanus, a sixth dose should be provided at least 1 year after the fifth dose, or in next pregnancy.' + '\nDue Date: ' + ToString(\"Tetanus and diphtheria-containing vaccine booster dose 3 Due Date\")\n  else ''"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 34
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "onOrBefore"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets immunizations on or before a date\n */\ndefine fluent function onOrBefore(immunizations List<Immunization>, beforeDate Date):\n  immunizations I where\n    I.occurrence.toInterval() same day or before beforeDate"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 35
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "seriesBooster"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the Booster series\n */\ndefine fluent function seriesBooster(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Booster dose' )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 36
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 37
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 38
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 39
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 40
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 41
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "seriesPrimary"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the primary series\n */\ndefine fluent function seriesPrimary(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Primary series' )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 42
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "complete"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function complete(observations List<Observation>):\n  observations O where O.status in { 'final', 'amended', 'corrected' }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 43
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ObservationStatus): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 44
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if the given reference is to the given resourceId\n@comment: Returns true if the `resourceId` parameter exactly equals the tail of the given reference.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(reference FHIR.Reference, resourceId String):\n  resourceId = Last(Split(reference.reference, '/'))"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 45
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "prevalenceInterval"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns an interval representing the normalized prevalence period of a given Condition resource.\n@comment: Uses the toInterval and toAbatementInterval functions to determine the widest potential interval from\nonset to abatement as specified in the given Condition.\n*/\ndefine fluent function prevalenceInterval(condition Condition):\nif condition.clinicalStatus ~ \"active\"\n  or condition.clinicalStatus ~ \"recurrence\"\n  or condition.clinicalStatus ~ \"relapse\" then\n  Interval[start of condition.onset.toInterval(), end of condition.abatementInterval()]\nelse\n  (end of condition.abatementInterval()) abatementDate\n    return \n\t  if abatementDate is null then\n        Interval[start of condition.onset.toInterval(), abatementDate)\n      else\n        Interval[start of condition.onset.toInterval(), abatementDate]"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 46
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "abatementInterval"
      },
      {
        "url" : "statement",
        "valueString" : "// Was getting error on this for this particular choice set not being found\n\n\n/*\n@description: Returns an interval representing the normalized Abatement of a given Condition resource.\n@comment: NOTE: Due to the complexity of determining an interval from a String, this function will throw\na run-time exception if used with a Condition instance that has a String as the abatement value.\n*/\ndefine fluent function abatementInterval(condition Condition):\n  if condition.abatement is FHIR.dateTime then\n    Interval[FHIRHelpers.ToDateTime(condition.abatement as FHIR.dateTime), FHIRHelpers.ToDateTime(condition.abatement as FHIR.dateTime)]\n  else if condition.abatement is FHIR.Period then\n    FHIRHelpers.ToInterval(condition.abatement as FHIR.Period)\n  else if condition.abatement is FHIR.string then\n    Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported')\n  else if condition.abatement is FHIR.Age then\n    Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(condition.abatement as FHIR.Age),\n      FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(condition.abatement as FHIR.Age) + 1 year)\n  else if condition.abatement is FHIR.Range then\n    Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((condition.abatement as FHIR.Range).low),\n      FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((condition.abatement as FHIR.Range).high) + 1 year)\n  else if condition.abatement is FHIR.boolean then\n    Interval[end of condition.onset.toInterval(), condition.recordedDate)\n  else \n    null"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 47
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 48
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 49
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 50
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 51
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 52
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "mostRecent"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function mostRecent(immunizations List<Immunization>):\n  Last(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 53
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    }],
    "name" : "EffectiveDataRequirements",
    "status" : "active",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/library-type",
        "code" : "module-definition"
      }]
    },
    "relatedArtifact" : [{
      "type" : "depends-on",
      "display" : "FHIR model information",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1"
    },
    {
      "type" : "depends-on",
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTDTPEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Common",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library DTPElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTDTPElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library FHIRHelpers",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
    },
    {
      "type" : "depends-on",
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library FHIRHelpers",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
    },
    {
      "type" : "depends-on",
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Library WE",
      "resource" : "http://smart.who.int/immunizations/Library/WHOEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Library Common",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Code system IMMZD",
      "resource" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
    },
    {
      "type" : "depends-on",
      "display" : "Code system ConditionClinicalStatusCodes",
      "resource" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
    },
    {
      "type" : "depends-on",
      "display" : "Code system LOINC",
      "resource" : "http://loinc.org"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Tetanus and diphtheria-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE28"
    },
    {
      "type" : "depends-on",
      "display" : "Value set DTP-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE24"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "EncounterId",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "AsOf",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "Tetanus and diphtheria-containing vaccine booster dose 3",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Tetanus and diphtheria-containing vaccine booster dose 3 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    }],
    "dataRequirement" : [{
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value", "encounter", "effective"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE162",
          "display" : "Currently pregnant"
        }]
      }]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE162",
          "display" : "Currently pregnant"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "82810-3",
          "display" : "Pregnancy status"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "status", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "82810-3",
          "display" : "Pregnancy status"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "status", "value", "encounter", "effective"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "82810-3",
          "display" : "Pregnancy status"
        }]
      }]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    }]
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  },
  {
    "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-effectiveDataRequirements",
    "valueCanonical" : "#effective-data-requirements"
  }],
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPPregnancyStartingWith4Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SDTPPregnancyStartingWith4Doses",
  "title" : "IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-24T11:36:08+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule\nDiphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood diphtheria–tetanus–pertussis (DTP) doses",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SDTPPregnancyStartingWith4DosesLogic"],
  "action" : [{
    "title" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)",
    "description" : "Provision of tetanus and diphtheria booster dose 2 for pregnant women who received 4 tetanus-containing vaccines doses during childhood or pre-adulthood\nTrigger event: The primary DTP series has been completed, first tetanus and diphtheria booster dose was administered and client is currently pregnant\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\") AND Count of vaccines administered where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1 AND \"Currently pregnant\" = TRUE\nTrigger date: First ANC contact date\n\"Contact date\" WHEN \"ANC contact number\" = 1\nCreate condition: Women who received 4 tetanus-containing vaccine doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)",
        "language" : "text/cql-identifier",
        "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)"
      }
    }],
    "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
    "dynamicValue" : [{
      "path" : "status",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'active'"
      }
    },
    {
      "path" : "payload.contentString",
      "expression" : {
        "language" : "text/cql-identifier",
        "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Create"
      }
    },
    {
      "path" : "category.coding",
      "expression" : {
        "description" : "Category of communication",
        "language" : "text/cql-expression",
        "expression" : "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
      }
    },
    {
      "path" : "priority",
      "expression" : {
        "description" : "Alert priority",
        "language" : "text/cql-expression",
        "expression" : "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
      }
    }]
  },
  {
    "title" : "Tetanus and diphtheria-containing vaccine booster dose 3",
    "description" : "Provision of tetanus and diphtheria booster dose 3 for pregnant women who received 4 tetanus-containing vaccines doses during childhood or pre-adulthood\nTrigger event: Second tetanus and diphtheria booster dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\nTrigger date: Latest \"Date and time of vaccination\" where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\"\nCreate condition: To provide lifelong protection for tetanus, a sixth dose should be provided at least 1 year after the fifth dose, or in next pregnancy.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Tetanus and diphtheria-containing vaccine booster dose 3",
        "language" : "text/cql-identifier",
        "expression" : "Tetanus and diphtheria-containing vaccine booster dose 3"
      }
    }],
    "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
    "dynamicValue" : [{
      "path" : "status",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'active'"
      }
    },
    {
      "path" : "payload.contentString",
      "expression" : {
        "language" : "text/cql-identifier",
        "expression" : "Tetanus and diphtheria-containing vaccine booster dose 3 Create"
      }
    },
    {
      "path" : "category.coding",
      "expression" : {
        "description" : "Category of communication",
        "language" : "text/cql-expression",
        "expression" : "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
      }
    },
    {
      "path" : "priority",
      "expression" : {
        "description" : "Alert priority",
        "language" : "text/cql-expression",
        "expression" : "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
      }
    }]
  }]
}

```
