# IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses**

## PlanDefinition: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV2Doses | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD2DTHepatitisAInactivatedHAV2Doses |

 
IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses Inactivated hepatitis A virus (HAV), 2-dose schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses](PlanDefinition-IMMZD2DTHepatitisAInactivatedHAV2Doses.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses Inactivated hepatitis A virus (HAV), 2-dose schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTHepatitisAInactivatedHAV2DosesLogic](Library-IMMZD2DTHepatitisAInactivatedHAV2DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTHepatitisAInactivatedHAV2Doses",
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Current Patient Age In Months"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in months\n */\ndefine \"Current Patient Age In Months\":\n  AgeInMonthsAt(Today)"
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 12 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 12 months\n@pseudocode: Today's date − \"Date of birth\" < 12 months\n@code: Client's age is less than 12 months-42\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose: Inactivated hepatitis A virus (HAV), 1-dose schedule\n*/\ndefine \"Client's age is less than 12 months\":\n  Encounter.\"Current Patient Age In Months\" < 12"
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hepatitis A vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hepatitis A vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Hepatitis A vaccination Case 1\":\n  Encounter.\"Client's age is less than 12 months\""
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
        "valueInteger" : 3
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
        "valueInteger" : 4
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis A Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis A containing Doses Administered to Patient\n*/\ndefine \"Hepatitis A Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Hepatitis A-containing vaccines\""
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis A Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis A containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Hepatitis A Primary Series Doses Administered to Patient\":\n  \"Hepatitis A Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Hepatitis A Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Hepatitis A Primary Series doses\n*/\ndefine \"Number of Hepatitis A Primary Series Doses Administered\":\n  Count(\"Hepatitis A Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One hepatitis A primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One hepatitis A primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One hepatitis A primary series dose was administered-131\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose: Inactivated hepatitis A virus (HAV), 1-dose schedule\n@decision: IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose: Live attenuated hepatitis A virus (HAV), 1 dose schedule\n*/\ndefine \"One hepatitis A primary series dose was administered\":\n  \"Number of Hepatitis A Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Hepatitis A Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Hepatitis A Dose\n*/\ndefine \"Date of Latest Hepatitis A Dose\":\n  date from start of \"Hepatitis A Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest Hepatitis A dose was administered less than 6 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest Hepatitis A dose was administered less than 6 months ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\") < 6 months\n@code: The latest Hepatitis A dose was administered less than 6 months ago-115\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule\n*/\ndefine \"The latest Hepatitis A dose was administered less than 6 months ago\":\n  \"Date of Latest Hepatitis A Dose\" is not null\n    and duration in months between \"Date of Latest Hepatitis A Dose\" and Today < 6"
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hepatitis A vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hepatitis A vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Hepatitis A vaccination Case 2\":\n  Encounter.\"One hepatitis A primary series dose was administered\"\n    and Encounter.\"The latest Hepatitis A dose was administered less than 6 months ago\""
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hepatitis A vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hepatitis A vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Hepatitis A vaccination\":\n  \"Client is not due for Hepatitis A vaccination Case 1\"\n    or \"Client is not due for Hepatitis A vaccination Case 2\""
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hepatitis A vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hepatitis A vaccination Guidance\n@guidance = Should not vaccinate client with first hepatitis A dose as client's age is less than 12 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose.\n@guidance = Should not vaccinate client with second hepatitis A dose as the latest hepatitis A dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the second dose.\n*/\ndefine \"Client is not due for Hepatitis A vaccination Guidance\":\n  case\n    when \"Client is not due for Hepatitis A vaccination Case 1\" then 'Should not vaccinate client with first hepatitis A dose as client\\'s age is less than 12 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose.'\n    when \"Client is not due for Hepatitis A vaccination Case 2\" then 'Should not vaccinate client with second hepatitis A dose as the latest hepatitis A dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the second dose.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No hepatitis A primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No hepatitis A primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No hepatitis A primary series doses were administered-131\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule\n*/\ndefine \"No hepatitis A primary series doses were administered\":\n  \"Number of Hepatitis A Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to 12 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 12 months\n@pseudocode: Today's date − \"Date of birth\" ≥ 12 months\n@code: Client's age is more than or equal to 12 months-42\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose: Inactivated hepatitis A virus (HAV), 1-dose schedule\n*/\ndefine \"Client's age is more than or equal to 12 months\":\n  Encounter.\"Current Patient Age In Months\" >= 12"
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Hepatitis A vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Hepatitis A vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for Hepatitis A vaccination Case 1\":\n  Encounter.\"No hepatitis A primary series doses were administered\"\n    and Encounter.\"Client's age is more than or equal to 12 months\""
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest Hepatitis A dose was administered more than 6 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest Hepatitis A dose was administered more than 6 months ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\") ≥ 6 months\n@code: The latest Hepatitis A dose was administered more than 6 months ago-115\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule\n*/\ndefine \"The latest Hepatitis A dose was administered more than 6 months ago\":\n  not \"The latest Hepatitis A dose was administered less than 6 months ago\""
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Hepatitis A vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Hepatitis A vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for Hepatitis A vaccination Case 2\":\n  Encounter.\"One hepatitis A primary series dose was administered\"\n    and Encounter.\"The latest Hepatitis A dose was administered more than 6 months ago\""
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Hepatitis A vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Hepatitis A vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for Hepatitis A vaccination\":\n  \"Client is due for Hepatitis A vaccination Case 1\"\n    or \"Client is due for Hepatitis A vaccination Case 2\""
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Hepatitis A vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Hepatitis A vaccination Guidance\n@guidance = Should vaccinate client with first hepatitis A dose as no Hepatitis A doses were administered and client is within the appropriate age range. \nCheck for contraindications.\n@guidance = Should vaccinate client with second hepatitis A dose as the latest hepatitis A dose was administered more than 6 months ago. \nCheck for contraindications.\n*/\ndefine \"Client is due for Hepatitis A vaccination Guidance\":\n  case\n    when \"Client is due for Hepatitis A vaccination Case 1\" then 'Should vaccinate client with first hepatitis A dose as no Hepatitis A doses were administered and client is within the appropriate age range. \nCheck for contraindications.'\n    when \"Client is due for Hepatitis A vaccination Case 2\" then 'Should vaccinate client with second hepatitis A dose as the latest hepatitis A dose was administered more than 6 months ago. \nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHepatitisAEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two hepatitis A primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two hepatitis A primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two hepatitis A primary series doses were administered-131\n@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule\n*/\ndefine \"Two hepatitis A primary series doses were administered\":\n  \"Number of Hepatitis A Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis A immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis A immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\")\n*/\ndefine \"Hepatitis A immunization schedule is complete\":\n  Encounter.\"Two hepatitis A primary series doses were administered\""
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis A immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis A immunization schedule is complete Guidance\n@guidance: Hepatitis A immunization schedule is complete. Two hepatitis A primary series doses were administered. \nCheck for any other vaccines due.\n*/\ndefine \"Hepatitis A immunization schedule is complete Guidance\":\n  'Hepatitis A immunization schedule is complete. Two hepatitis A primary series doses were administered. \nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for Hepatitis A vaccination\" then \"Client is not due for Hepatitis A vaccination Guidance\"\n    when \"Client is due for Hepatitis A vaccination\" then \"Client is due for Hepatitis A vaccination Guidance\"\n    when \"Hepatitis A immunization schedule is complete\" then \"Hepatitis A immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Has Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Has Guidance\":\n  \"Guidance\" is not null and \"Guidance\" != ''"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 32
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisAEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
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
      "display" : "Value set Hepatitis A-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE5"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Client is due for Hepatitis A vaccination",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Has Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    }],
    "dataRequirement" : [{
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
    },
    {
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV2Doses",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHepatitisAInactivatedHAV2Doses",
  "title" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-29T17:23:09+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses\nInactivated hepatitis A virus (HAV), 2-dose schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "For children, inactivated hepatitis A-containing vaccines can be given as a single-dose or \n2-dose schedule, and administered intramuscularly.  \nFor adults aged over 40 years, vaccination with inactivated vaccines using the 2-dose schedule is preferred \nsince there is insufficient evidence on the immunogenicity and long-term protection from a single dose in this age group. \nWith a 2-dose schedule, the first dose should be given from ≥ 12 months of age.\nThe interval between doses is flexible, from 6 months to 4–5 years or more, but is usually 6–18 months."
    }],
    "title" : "Determine if the client is due for HepatitisA.",
    "description" : "Determine if the client is due for HepatitisA vaccine according to the national immunization protocol.\nInactivated hepatitis A virus (HAV), 2-dose schedule",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for Hepatitis A vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for Hepatitis A vaccination"
      }
    }],
    "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTMR",
    "dynamicValue" : [{
      "path" : "status",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'draft'"
      }
    },
    {
      "path" : "intent",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'proposal'"
      }
    },
    {
      "path" : "medication",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE5', display: 'Hepatitis A-containing vaccines' } }, display: 'Hepatitis A-containing vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Has Guidance",
        "language" : "text/cql-identifier",
        "expression" : "Has Guidance"
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
        "expression" : "Guidance"
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
