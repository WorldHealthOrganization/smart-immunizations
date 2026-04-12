# IMMZ.D18.S.Seasonal influenza schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Seasonal influenza schedule**

## PlanDefinition: IMMZ.D18.S.Seasonal influenza schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza | *Version*:0.2.0 |
| Draft as of 2026-04-03 | *Computable Name*:IMMZD18SSeasonalinfluenzaSeasonalInfluenza |

 
IMMZ.D18.S.Seasonal influenza schedule Inactivated trivalent and quadrivalent vaccines, 2-dose schedule for children aged under 9 years 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Seasonal influenza schedule](PlanDefinition-IMMZD18SSeasonalinfluenzaSeasonalInfluenza.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Seasonal influenza schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-03 22:35:55+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Seasonal influenza schedule Inactivated trivalent and quadrivalent vaccines, 2-dose schedule for children aged under 9 years
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic](Library-IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenza",
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @dataElement All Doses Administered to Patient\n */\ndefine \"Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n    where I.occurrence.toInterval() same day or before Today"
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
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Seasonal influenza containing Doses Administered to Patient\n*/\ndefine \"Seasonal influenza Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Seasonal influenza vaccines\""
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
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Seasonal influenza containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Seasonal influenza Primary Series Doses Administered to Patient\":\n  \"Seasonal influenza Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Seasonal influenza Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Seasonal influenza Primary Series doses\n*/\ndefine \"Number of Seasonal influenza Primary Series Doses Administered\":\n  Count(\"Seasonal influenza Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One seasonal influenza primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One seasonal influenza primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One seasonal influenza primary series doses were administered-127\n@decision: IMMZ.D2.DT.Seasonal influenza: Inactivated trivalent and quadrivalent vaccines, 2-dose schedule\n*/\ndefine \"One seasonal influenza primary series doses were administered\":\n  \"Number of Seasonal influenza Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "First seasonal influenza dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First seasonal influenza dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n*/\ndefine \"First seasonal influenza dose from the primary series was administered\":\n  Encounter.\"One seasonal influenza primary series doses were administered\""
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
        "valueInteger" : 7
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 9 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 9 years\n@pseudocode: Today's date − \"Date of birth\" < 9 years\n@code: Client's age is less than 9 years-40\n@decision: IMMZ.D2.DT.Seasonal influenza: Inactivated trivalent and quadrivalent vaccines, 2-dose schedule\n*/\ndefine \"Client's age is less than 9 years\":\n  Encounter.\"Current Patient Age In Years\" < 9"
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
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two seasonal influenza primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two seasonal influenza primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two seasonal influenza primary series doses were administered-127\n@decision: IMMZ.D2.DT.Seasonal influenza: Inactivated trivalent and quadrivalent vaccines, 2-dose schedule\n*/\ndefine \"Two seasonal influenza primary series doses were administered\":\n  \"Number of Seasonal influenza Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second seasonal influenza dose from the primary series was administered. The primary series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second seasonal influenza dose from the primary series was administered. The primary series has been completed\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\n*/\ndefine \"Second seasonal influenza dose from the primary series was administered. The primary series has been completed\":\n  Encounter.\"Two seasonal influenza primary series doses were administered\""
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza dose 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Seasonal influenza dose 2\n@description: Provision of the seasonal influenza vaccine dose 2\n@trigger: First seasonal influenza dose from the primary series was administered and client is less than 9 years\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND (Today's date − \"Date of birth\" < 9 years)\n@triggerDate: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\n*/\ndefine \"Seasonal influenza dose 2\":\n  \"First seasonal influenza dose from the primary series was administered\"\n  and Encounter.\"Client's age is less than 9 years\"\n  and not \"Second seasonal influenza dose from the primary series was administered. The primary series has been completed\""
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
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Seasonal influenza Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Seasonal influenza Dose\n*/\ndefine \"Date of Latest Seasonal influenza Dose\":\n  date from start of \"Seasonal influenza Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza dose 2 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Seasonal influenza dose 2 Due Date\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") + 4 weeks\n*/\ndefine \"Seasonal influenza dose 2 Due Date\":\n  if \"Seasonal influenza dose 2\" then Encounter.\"Date of Latest Seasonal influenza Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza dose 2 Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Seasonal influenza dose 2 Expiration\n@pseudocode: \"Date of birth\" + 9 years\n*/\ndefine \"Seasonal influenza dose 2 Expiration\":\n  if \"Seasonal influenza dose 2\" then Patient.birthDate + 9 years\n  else null"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza dose 2 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Seasonal influenza dose 2 Create\n@create: Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart\n*/\ndefine \"Seasonal influenza dose 2 Create\":\n  if \"Seasonal influenza dose 2\"\n  then 'Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart' + '\nDue Date: ' + ToString(\"Seasonal influenza dose 2 Due Date\") + '\nExpiration: ' + ToString(\"Seasonal influenza dose 2 Expiration\")\n  else ''"
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
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No seasonal influenza primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No seasonal influenza primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No seasonal influenza primary series doses were administered-127\n@decision: IMMZ.D2.DT.Seasonal influenza: Inactivated trivalent and quadrivalent vaccines, 2-dose schedule\n*/\ndefine \"No seasonal influenza primary series doses were administered\":\n  \"Number of Seasonal influenza Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Seasonal influenza dose 1\n@description: Provision of the seasonal influenza vaccine dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"Seasonal influenza dose 1\":\n  Encounter.\"No seasonal influenza primary series doses were administered\"\n  and not \"First seasonal influenza dose from the primary series was administered\""
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Seasonal influenza dose 1 Due Date\n@pseudocode: \"Date of birth\" + 6 months\n*/\ndefine \"Seasonal influenza dose 1 Due Date\":\n  if \"Seasonal influenza dose 1\" then Patient.birthDate + 6 months\n  else null"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Seasonal influenza dose 1 Create\n@create: Influenza vaccines are safe and effective in children from 6 months of age\n*/\ndefine \"Seasonal influenza dose 1 Create\":\n  if \"Seasonal influenza dose 1\"\n  then 'Influenza vaccines are safe and effective in children from 6 months of age' + '\nDue Date: ' + ToString(\"Seasonal influenza dose 1 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD2DTSeasonalinfluenzaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to 9 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 9 years\n@pseudocode: Today's date − \"Date of birth\" ≥ 9 years\n@code: Client's age is more than or equal to 9 years-40\n@decision: IMMZ.D2.DT.Seasonal influenza: Inactivated trivalent and quadrivalent vaccines, 2-dose schedule\n*/\ndefine \"Client's age is more than or equal to 9 years\":\n  Encounter.\"Current Patient Age In Years\" >= 9"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza annual dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Seasonal influenza annual dose\n@description: Provision of the seasonal influenza vaccine annual dose\n@trigger: The primary series has been completed\n@pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\n*/\ndefine \"Seasonal influenza annual dose\":\n  ( \"Second seasonal influenza dose from the primary series was administered. The primary series has been completed\"\n  or ( \"First seasonal influenza dose from the primary series was administered\"\n    and Encounter.\"Client's age is more than or equal to 9 years\"\n   ) )"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza annual dose Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Seasonal influenza annual dose Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") + 1 year\n*/\ndefine \"Seasonal influenza annual dose Due Date\":\n  if \"Seasonal influenza annual dose\" then Encounter.\"Date of Latest Seasonal influenza Dose\" + 1 year\n  else null"
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
        "valueString" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Seasonal influenza annual dose Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Seasonal influenza annual dose Create\n@create: Seasonal influenza vaccine annual dose should be provided 1 year after the previous dose\n*/\ndefine \"Seasonal influenza annual dose Create\":\n  if \"Seasonal influenza annual dose\"\n  then 'Seasonal influenza vaccine annual dose should be provided 1 year after the previous dose' + '\nDue Date: ' + ToString(\"Seasonal influenza annual dose Due Date\")\n  else ''"
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
        "valueInteger" : 24
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
        "valueInteger" : 25
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
        "valueInteger" : 26
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
        "valueInteger" : 27
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
        "valueInteger" : 28
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
        "valueInteger" : 29
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
        "valueInteger" : 30
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
        "valueInteger" : 31
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTSeasonalinfluenzaEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Common",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library FHIRHelpers",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
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
      "display" : "Value set Seasonal influenza vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE18"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "Seasonal influenza dose 2 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Seasonal influenza dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Seasonal influenza dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Seasonal influenza dose 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Seasonal influenza annual dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Seasonal influenza annual dose Create",
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
      "mustSupport" : ["status", "isSubpotent", "occurrence"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "occurrence", "vaccineCode"]
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
      "mustSupport" : ["status", "isSubpotent", "occurrence", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "occurrence", "vaccineCode"]
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza",
  "version" : "0.2.0",
  "name" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenza",
  "title" : "IMMZ.D18.S.Seasonal influenza schedule",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-03T22:35:55+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D18.S.Seasonal influenza schedule\nInactivated trivalent and quadrivalent vaccines, 2-dose schedule for children aged under 9 years",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"],
  "action" : [{
    "title" : "Seasonal influenza dose 1",
    "description" : "Provision of the seasonal influenza vaccine dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Influenza vaccines are safe and effective in children from 6 months of age",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Seasonal influenza dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Seasonal influenza dose 1"
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
        "expression" : "Seasonal influenza dose 1 Create"
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
    "title" : "Seasonal influenza dose 2",
    "description" : "Provision of the seasonal influenza vaccine dose 2\nTrigger event: First seasonal influenza dose from the primary series was administered and client is less than 9 years\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND (Today's date − \"Date of birth\" < 9 years)\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\nCreate condition: Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Seasonal influenza dose 2",
        "language" : "text/cql-identifier",
        "expression" : "Seasonal influenza dose 2"
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
        "expression" : "Seasonal influenza dose 2 Create"
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
    "title" : "Seasonal influenza annual dose",
    "description" : "Provision of the seasonal influenza vaccine annual dose\nTrigger event: The primary series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\nCreate condition: Seasonal influenza vaccine annual dose should be provided 1 year after the previous dose",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Seasonal influenza annual dose",
        "language" : "text/cql-identifier",
        "expression" : "Seasonal influenza annual dose"
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
        "expression" : "Seasonal influenza annual dose Create"
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
