# IMMZ.D18.S.DTP.Delayed or interrupted schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.DTP.Delayed or interrupted schedule**

## PlanDefinition: IMMZ.D18.S.DTP.Delayed or interrupted schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries | *Version*:0.2.0 |
| Draft as of 2026-04-12 | *Computable Name*:IMMZD18SDTPDelayedOrInterruptedSeries |

 
IMMZ.D18.S.DTP.Delayed or interrupted schedule Diphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.DTP.Delayed or interrupted schedule](PlanDefinition-IMMZD18SDTPDelayedOrInterruptedSeries.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.DTP.Delayed or interrupted schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-12 07:49:12+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.DTP.Delayed or interrupted schedule Diphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SDTPDelayedOrInterruptedSeriesLogic](Library-IMMZD18SDTPDelayedOrInterruptedSeriesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SDTPDelayedOrInterruptedSeries",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "contained" : [{
    "resourceType" : "Library",
    "id" : "effective-data-requirements",
    "extension" : [{
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
        "valueString" : "DTP Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: DTP containing Doses Administered to Patient\n*/\ndefine \"DTP Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"DTP-containing vaccines\""
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
        "valueString" : "DTP Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: DTP containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"DTP Primary Series Doses Administered to Patient\":\n  \"DTP Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "DTP Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: DTP containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"DTP Primary Series Doses Administered to Patient\":\n  DTPElements.\"DTP Primary Series Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "Number of DTP Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of DTP Primary Series doses\n*/\ndefine \"Number of DTP Primary Series Doses Administered\":\n  Count(\"DTP Primary Series Doses Administered to Patient\")"
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
        "valueString" : "Three DTP primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three DTP primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three DTP primary series doses were administered-123\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n@decision: IMMZ.D2.DT.DTP.Pregnancy: Determine whether DTP-containing vaccines are needed for pregnant women\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood DTP doses\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses\n*/\ndefine \"Three DTP primary series doses were administered\":\n  \"Number of DTP Primary Series Doses Administered\" = 3"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Third DTP dose from the primary series was administered. The primary DTP series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Third DTP dose from the primary series was administered. The primary DTP series has been completed\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\")\n*/\ndefine \"Third DTP dose from the primary series was administered. The primary DTP series has been completed\":\n  Encounter.\"Three DTP primary series doses were administered\""
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
        "valueInteger" : 7
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
        "valueInteger" : 8
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
        "valueInteger" : 9
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
        "valueInteger" : 10
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
        "valueString" : "No tetanus and diphtheria booster doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No tetanus and diphtheria booster doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 0\n@code: No tetanus and diphtheria booster doses were administered-140\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n@decision: IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses: Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood DTP doses\n*/\ndefine \"No tetanus and diphtheria booster doses were administered\":\n  \"Number of Td Booster Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)\n@description: Provision of tetanus and diphtheria booster dose 1\n@trigger: The primary DTP series has been completed\n@pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\")\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)\":\n  \"Third DTP dose from the primary series was administered. The primary DTP series has been completed\" and\n  Encounter.\"No tetanus and diphtheria booster doses were administered\""
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
        "valueString" : "DTP Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: DTP containing Doses Administered to Patient\n*/\ndefine \"DTP Doses Administered to Patient\":\n  DTPElements.\"DTP Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "Date of Latest DTP Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest DTP Dose\n*/\ndefine \"Date of Latest DTP Dose\":\n  date from start of \"DTP Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\") + 1 year\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Due Date\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)\" then Encounter.\"Date of Latest DTP Dose\" + 1 year\n  else null"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Create\n@create: Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Create\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)\"\n  then 'Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.' + '\nDue Date: ' + ToString(\"Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Due Date\")\n  else ''"
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
        "valueInteger" : 17
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "First tetanus and diphtheria booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First tetanus and diphtheria booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n*/\ndefine \"First tetanus and diphtheria booster dose was administered\":\n  Encounter.\"One tetanus and diphtheria booster dose was administered\""
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
        "valueInteger" : 19
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second tetanus and diphtheria booster dose was administered. Tetanus and diphtheria immunization schedule has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second tetanus and diphtheria booster dose was administered. Tetanus and diphtheria immunization schedule has been completed\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\n\"Immunization recommendation status\" = \"Complete\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\")\n*/\ndefine \"Second tetanus and diphtheria booster dose was administered. Tetanus and diphtheria immunization schedule has been completed\":\n  Encounter.\"Two tetanus and diphtheria booster doses were administered\""
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)\n@description: Provision of tetanus and diphtheria booster dose 2\n@trigger: First tetanus and diphtheria booster dose was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\")\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)\":\n  \"First tetanus and diphtheria booster dose was administered\" and\n  not \"Second tetanus and diphtheria booster dose was administered. Tetanus and diphtheria immunization schedule has been completed\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Current Patient Age In Years"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in years\n */\ndefine \"Current Patient Age In Years\":\n  AgeInYearsAt(Today)"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is between 1 year and 6 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is between 1 year and 6 years\n@pseudocode: 1 year ≤ Today's date − \"Date of birth\" ≤ 6 years\n@code: Client's age is between 1 year and 6 years-49\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n*/\ndefine \"Client's age is between 1 year and 6 years\":\n  1 <= Encounter.\"Current Patient Age In Years\"\n  and Encounter.\"Current Patient Age In Years\" <= 6"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis-containing vaccine booster dose 1 (delayed start) Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pertussis-containing vaccine booster dose 1 (delayed start) Expiration\n@pseudocode: \"Date of birth\" + 7 years\n*/\ndefine \"Pertussis-containing vaccine booster dose 1 (delayed start) Expiration\":\n  Patient.birthDate + 7 years"
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
        "valueString" : "IMMZD2DTDTPElements"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pertussis Doses Administered to Patient\n*/\ndefine \"Pertussis Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Pertussis-containing vaccines\""
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
        "valueString" : "IMMZD2DTDTPElements"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pertussis Booster Series Doses Administered to Patient\n*/\ndefine \"Pertussis Booster Series Doses Administered to Patient\":\n  \"Pertussis Doses Administered to Patient\".seriesBooster()"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pertussis Booster Series Doses Administered to Patient\n*/\ndefine \"Pertussis Booster Series Doses Administered to Patient\":\n  DTPElements.\"Pertussis Booster Series Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Pertussis Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Pertussis Booster Series Doses Administered\n*/\ndefine \"Number of Pertussis Booster Series Doses Administered\":\n  Count(\"Pertussis Booster Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One pertussis booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One pertussis booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pertussis-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n@code: One pertussis booster dose was administered-127\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n*/\ndefine \"One pertussis booster dose was administered\":\n  \"Number of Pertussis Booster Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis-containing booster dose was administered. Pertussis immunization schedule has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Pertussis-containing booster dose was administered. Pertussis immunization schedule has been completed\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pertussis-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n\"Immunization recommendation status\" = \"Complete\" (where \"Vaccine type\" = \"Pertussis-containing vaccines\")\n*/\ndefine \"Pertussis-containing booster dose was administered. Pertussis immunization schedule has been completed\":\n  Encounter.\"One pertussis booster dose was administered\""
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis-containing vaccine booster dose 1 (delayed start)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pertussis-containing vaccine booster dose 1 (delayed start)\n@description: Provision of the pertussis-containing booster dose 1\n@trigger: The primary DTP series has been completed and client's age is between 1 year and 6 years\n@pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\") AND 1 year ≤ Today's date − \"Date of birth\" ≤ 6 years\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\")\n*/\ndefine \"Pertussis-containing vaccine booster dose 1 (delayed start)\":\n  \"Third DTP dose from the primary series was administered. The primary DTP series has been completed\" and\n  Encounter.\"Client's age is between 1 year and 6 years\" and\n  \"Pertussis-containing vaccine booster dose 1 (delayed start) Expiration\" after day of Today and\n  not \"Pertussis-containing booster dose was administered. Pertussis immunization schedule has been completed\""
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
        "valueString" : "Pertussis Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pertussis Doses Administered to Patient\n*/\ndefine \"Pertussis Doses Administered to Patient\":\n  DTPElements.\"Pertussis Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Pertussis Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Pertussis Dose\n*/\ndefine \"Date of Latest Pertussis Dose\":\n  date from start of \"Pertussis Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis-containing vaccine booster dose 1 (delayed start) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pertussis-containing vaccine booster dose 1 (delayed start) Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pertussis-containing vaccines\") + 6 months\n*/\ndefine \"Pertussis-containing vaccine booster dose 1 (delayed start) Due Date\":\n  if \"Pertussis-containing vaccine booster dose 1 (delayed start)\" then Encounter.\"Date of Latest Pertussis Dose\" + 6 months\n  else null"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis-containing vaccine booster dose 1 (delayed start) Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pertussis-containing vaccine booster dose 1 (delayed start) Overdue\n@pseudocode: \"Date of birth\" + 7 years\n*/\ndefine \"Pertussis-containing vaccine booster dose 1 (delayed start) Overdue\":\n  if \"Pertussis-containing vaccine booster dose 1 (delayed start)\" then Patient.birthDate + 7 years\n  else null"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pertussis-containing vaccine booster dose 1 (delayed start) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pertussis-containing vaccine booster dose 1 (delayed start) Create\n@create: A booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥ 6 months after last primary dose).\n*/\ndefine \"Pertussis-containing vaccine booster dose 1 (delayed start) Create\":\n  if \"Pertussis-containing vaccine booster dose 1 (delayed start)\"\n  then 'A booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥ 6 months after last primary dose).' + '\nDue Date: ' + ToString(\"Pertussis-containing vaccine booster dose 1 (delayed start) Due Date\") + '\nOverdue: ' + ToString(\"Pertussis-containing vaccine booster dose 1 (delayed start) Overdue\") + '\nExpiration: ' + ToString(\"Pertussis-containing vaccine booster dose 1 (delayed start) Expiration\")\n  else ''"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two DTP primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two DTP primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two DTP primary series doses were administered-123\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n*/\ndefine \"Two DTP primary series doses were administered\":\n  \"Number of DTP Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second DTP dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second DTP dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n*/\ndefine \"Second DTP dose from the primary series was administered\":\n  Encounter.\"Two DTP primary series doses were administered\""
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 3 (delayed start)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: DTP dose 3 (delayed start)\n@description: Provision of DTP dose 3 with a delayed start\n@trigger: Second DTP dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\n*/\ndefine \"DTP dose 3 (delayed start)\":\n  \"Second DTP dose from the primary series was administered\" and\n  not \"Third DTP dose from the primary series was administered. The primary DTP series has been completed\""
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 3 (delayed start) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: DTP dose 3 (delayed start) Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\") + 6 months\n*/\ndefine \"DTP dose 3 (delayed start) Due Date\":\n  if \"DTP dose 3 (delayed start)\" then Encounter.\"Date of Latest DTP Dose\" + 6 months\n  else null"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 3 (delayed start) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: DTP dose 3 (delayed start) Create\n@create: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.\n*/\ndefine \"DTP dose 3 (delayed start) Create\":\n  if \"DTP dose 3 (delayed start)\"\n  then 'For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.' + '\nDue Date: ' + ToString(\"DTP dose 3 (delayed start) Due Date\")\n  else ''"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No DTP primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No DTP primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No DTP primary series doses were administered-123\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n@decision: IMMZ.D2.DT.DTP.Pregnancy: Determine whether DTP-containing vaccines are needed for pregnant women\n*/\ndefine \"No DTP primary series doses were administered\":\n  \"Number of DTP Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than 1 year"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than 1 year\n@pseudocode: Today's date − \"Date of birth\" > 1 year\n@code: Client's age is more than 1 year-39\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n*/\ndefine \"Client's age is more than 1 year\":\n  Encounter.\"Current Patient Age In Years\" >= 1"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 1 (delayed start)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: DTP dose 1 (delayed start)\n@description: Provision of DTP dose 1 with a delayed start\n@trigger: No DTP doses were administered and client's age is more than 1 year\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\") = 0 AND Today's date − \"Date of birth\" > 1 year\n@triggerDate: Date of birth\n*/\ndefine \"DTP dose 1 (delayed start)\":\n  Encounter.\"No DTP primary series doses were administered\"\n  and Encounter.\"Client's age is more than 1 year\""
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 1 (delayed start) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: DTP dose 1 (delayed start) Due Date\n@pseudocode: As soon as possible\n*/\ndefine \"DTP dose 1 (delayed start) Due Date\":\n  if \"DTP dose 1 (delayed start)\" then Patient.birthDate + 1 year\n  else null"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 1 (delayed start) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: DTP dose 1 (delayed start) Create\n@create: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.\n*/\ndefine \"DTP dose 1 (delayed start) Create\":\n  if \"DTP dose 1 (delayed start)\"\n  then 'For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.' + '\nDue Date: ' + ToString(\"DTP dose 1 (delayed start) Due Date\")\n  else ''"
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
        "valueString" : "IMMZD2DTDTPEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One DTP primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One DTP primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One DTP primary series dose was administered-123\n@decision: IMMZ.D2.DT.DTP.On-time start: DTP vaccination schedule, on-time start (at ≤ 12 months of age)\n@decision: IMMZ.D2.DT.DTP.Delayed or interrupted series: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age\n*/\ndefine \"One DTP primary series dose was administered\":\n  \"Number of DTP Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "First DTP dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First DTP dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n*/\ndefine \"First DTP dose from the primary series was administered\":\n  Encounter.\"One DTP primary series dose was administered\""
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 2 (delayed start)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: DTP dose 2 (delayed start)\n@description: Provision of DTP dose 2 with a delayed start\n@trigger: First DTP dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\n*/\ndefine \"DTP dose 2 (delayed start)\":\n  \"First DTP dose from the primary series was administered\" and\n  not \"Second DTP dose from the primary series was administered\""
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 2 (delayed start) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: DTP dose 2 (delayed start) Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\") + 4 weeks\n*/\ndefine \"DTP dose 2 (delayed start) Due Date\":\n  if \"DTP dose 2 (delayed start)\" then Encounter.\"Date of Latest DTP Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "DTP dose 2 (delayed start) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: DTP dose 2 (delayed start) Create\n@create: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.\n*/\ndefine \"DTP dose 2 (delayed start) Create\":\n  if \"DTP dose 2 (delayed start)\"\n  then 'For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.' + '\nDue Date: ' + ToString(\"DTP dose 2 (delayed start) Due Date\")\n  else ''"
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
        "valueInteger" : 52
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
        "valueInteger" : 53
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\") + 1 year\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Due Date\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)\" then Encounter.\"Date of Latest Td Dose\" + 1 year\n  else null"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 54
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Create\n@create: Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.\n*/\ndefine \"Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Create\":\n  if \"Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)\"\n  then 'Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.' + '\nDue Date: ' + ToString(\"Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Due Date\")\n  else ''"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 55
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
        "valueInteger" : 56
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
        "valueInteger" : 57
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
        "valueInteger" : 58
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
        "valueInteger" : 59
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
        "valueInteger" : 60
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
        "valueInteger" : 61
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
        "valueInteger" : 62
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
        "valueInteger" : 63
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
        "valueInteger" : 64
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
        "valueInteger" : 65
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
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Value set DTP-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE24"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Tetanus and diphtheria-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE28"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Pertussis-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE12"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Pertussis-containing vaccine booster dose 1 (delayed start) Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "DTP dose 3 (delayed start) Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "DTP dose 1 (delayed start) Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "DTP dose 2 (delayed start)",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "DTP dose 2 (delayed start) Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "DTP dose 3 (delayed start)",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Pertussis-containing vaccine booster dose 1 (delayed start)",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "DTP dose 1 (delayed start)",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
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
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries",
  "version" : "0.2.0",
  "name" : "IMMZD18SDTPDelayedOrInterruptedSeries",
  "title" : "IMMZ.D18.S.DTP.Delayed or interrupted schedule",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-12T07:49:12+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D18.S.DTP.Delayed or interrupted schedule\nDiphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SDTPDelayedOrInterruptedSeriesLogic"],
  "action" : [{
    "title" : "DTP dose 1 (delayed start)",
    "description" : "Provision of DTP dose 1 with a delayed start\nTrigger event: No DTP doses were administered and client's age is more than 1 year\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\") = 0 AND Today's date − \"Date of birth\" > 1 year\nTrigger date: Date of birth\nCreate condition: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "DTP dose 1 (delayed start)",
        "language" : "text/cql-identifier",
        "expression" : "DTP dose 1 (delayed start)"
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
        "expression" : "DTP dose 1 (delayed start) Create"
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
    "title" : "DTP dose 2 (delayed start)",
    "description" : "Provision of DTP dose 2 with a delayed start\nTrigger event: First DTP dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\nCreate condition: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "DTP dose 2 (delayed start)",
        "language" : "text/cql-identifier",
        "expression" : "DTP dose 2 (delayed start)"
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
        "expression" : "DTP dose 2 (delayed start) Create"
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
    "title" : "DTP dose 3 (delayed start)",
    "description" : "Provision of DTP dose 3 with a delayed start\nTrigger event: Second DTP dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\nCreate condition: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "DTP dose 3 (delayed start)",
        "language" : "text/cql-identifier",
        "expression" : "DTP dose 3 (delayed start)"
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
        "expression" : "DTP dose 3 (delayed start) Create"
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
    "title" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)",
    "description" : "Provision of tetanus and diphtheria booster dose 1\nTrigger event: The primary DTP series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\nCreate condition: Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)",
        "language" : "text/cql-identifier",
        "expression" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)"
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
        "expression" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Create"
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
    "title" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)",
    "description" : "Provision of tetanus and diphtheria booster dose 2\nTrigger event: First tetanus and diphtheria booster dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\")\nCreate condition: Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)",
        "language" : "text/cql-identifier",
        "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)"
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
        "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Create"
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
    "title" : "Pertussis-containing vaccine booster dose 1 (delayed start)",
    "description" : "Provision of the pertussis-containing booster dose 1\nTrigger event: The primary DTP series has been completed and client's age is between 1 year and 6 years\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\") AND 1 year ≤ Today's date − \"Date of birth\" ≤ 6 years\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\")\nCreate condition: A booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥ 6 months after last primary dose).",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Pertussis-containing vaccine booster dose 1 (delayed start)",
        "language" : "text/cql-identifier",
        "expression" : "Pertussis-containing vaccine booster dose 1 (delayed start)"
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
        "expression" : "Pertussis-containing vaccine booster dose 1 (delayed start) Create"
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
