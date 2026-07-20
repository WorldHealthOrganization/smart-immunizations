# IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses**

## PlanDefinition: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD2DTCholeraWCRBSVaccine2Doses |

 
IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses](PlanDefinition-IMMZD2DTCholeraWCRBSVaccine2Doses.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-09 14:18:30+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTCholeraWCRBSVaccine2DosesLogic](Library-IMMZD2DTCholeraWCRBSVaccine2DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTCholeraWCRBSVaccine2Doses",
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
        "valueString" : "Current Patient Age In Years"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in years\n */\ndefine \"Current Patient Age In Years\":\n  AgeInYearsAt(Today)"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than 5 years\n@pseudocode: Today's date − \"Date of birth\" > 5 years\n@code: Client's age is more than 5 years-40\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"Client's age is more than 5 years\":\n  Encounter.\"Current Patient Age In Years\" > 5"
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
        "valueInteger" : 2
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
        "valueInteger" : 3
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Cholera Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Cholera containing Doses Administered to Patient\n*/\ndefine \"Cholera Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Cholera vaccines\""
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Cholera Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Cholera containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Cholera Primary Series Doses Administered to Patient\":\n  \"Cholera Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Cholera Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Cholera Primary Series doses\n*/\ndefine \"Number of Cholera Primary Series Doses Administered\":\n  Count(\"Cholera Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No cholera primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No cholera primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No cholera primary series dose was administered-116\n@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"No cholera primary series dose was administered\":\n  \"Number of Cholera Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for cholera vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for cholera vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for cholera vaccination Case 1\":\n  Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"No cholera primary series dose was administered\""
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "At least one cholera primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: At least one cholera primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") >= 1\n@code: At least one cholera primary series dose was administered-117\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"At least one cholera primary series dose was administered\":\n  \"Number of Cholera Primary Series Doses Administered\" >= 1"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Dose number of the latest primary series dose is one"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Dose number of the latest primary series dose is one\n@pseudocode: Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: Dose number of the latest primary series dose is one-106\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"Dose number of the latest primary series dose is one\":\n  \"Cholera Primary Series Doses Administered to Patient\".mostRecent().getDose('1') is not null"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Cholera Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Cholera Dose\n*/\ndefine \"Date of Latest Cholera Dose\":\n  date from start of \"Cholera Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest cholera dose was administered more than 1 week and less than 6 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest cholera dose was administered more than 1 week and less than 6 weeks ago\n@pseudocode: 1 week ≤ Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 6 weeks\n@code: The latest cholera dose was administered more than 1 week and less than 6 weeks ago-115\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"The latest cholera dose was administered more than 1 week and less than 6 weeks ago\":\n  \"Date of Latest Cholera Dose\" is not null\n  and duration in weeks between \"Date of Latest Cholera Dose\" and Today >= 1\n  and duration in weeks between \"Date of Latest Cholera Dose\" and Today < 6"
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for cholera vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for cholera vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for cholera vaccination Case 2\":\n  Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"At least one cholera primary series dose was administered\"\n    and Encounter.\"Dose number of the latest primary series dose is one\"\n    and Encounter.\"The latest cholera dose was administered more than 1 week and less than 6 weeks ago\""
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest cholera dose was administered more than 6 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest cholera dose was administered more than 6 weeks ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 6 weeks\n@code: The latest cholera dose was administered more than 6 weeks ago-106\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"The latest cholera dose was administered more than 6 weeks ago\":\n  \"Date of Latest Cholera Dose\" is not null\n  and duration in weeks between \"Date of Latest Cholera Dose\" and Today >= 6"
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for cholera vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for cholera vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n\"Completed the booster series\" (where \"Vaccine type\" = \"Cholera vaccines\") = FALSE when dose 1 is administered\n*/\ndefine \"Client is due for cholera vaccination Case 3\":\n  Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"At least one cholera primary series dose was administered\"\n    and Encounter.\"Dose number of the latest primary series dose is one\"\n    and Encounter.\"The latest cholera dose was administered more than 6 weeks ago\""
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Dose number of the latest primary series dose is more than or equal to two"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Dose number of the latest primary series dose is more than or equal to two\n@pseudocode: Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") >= 2\n@code: Dose number of the latest primary series dose is more than or equal to two-107\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"Dose number of the latest primary series dose is more than or equal to two\":\n  ((\"Cholera Primary Series Doses Administered to Patient\".mostRecent()) I\n    where exists( I.protocolApplied pa where ToInteger(pa.doseNumber) >= 2)) is not null"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") > 2 years ± Member States defined interval\n@code: The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}-139\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}\":\n  \"Date of Latest Cholera Dose\" is not null\n  and duration in days between (\"Date of Latest Cholera Dose\" + 2 years) and Today > CholeraExactIntervalDays"
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for cholera vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for cholera vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n\"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Cholera vaccines\") = FALSE when dose 1 is administered\n*/\ndefine \"Client is due for cholera vaccination Case 4\":\n  Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"At least one cholera primary series dose was administered\"\n    and Encounter.\"Dose number of the latest primary series dose is more than or equal to two\"\n    and Encounter.\"The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}\""
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for cholera vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for cholera vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for cholera vaccination\":\n  \"Client is due for cholera vaccination Case 1\"\n    or \"Client is due for cholera vaccination Case 2\"\n    or \"Client is due for cholera vaccination Case 3\"\n    or \"Client is due for cholera vaccination Case 4\""
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for cholera vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for cholera vaccination Guidance\n@guidance = Should vaccinate client with cholera dose as no cholera doses have been administered.\nCheck for contraindications.\n@guidance = Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.\nCheck for contraindications.\n@guidance = Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.\nCheck for contraindications.\n@guidance = Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered approximately more than 2 years ago. \nCheck for contraindications.\n*/\ndefine \"Client is due for cholera vaccination Guidance\":\n  case\n    when \"Client is due for cholera vaccination Case 1\" then 'Should vaccinate client with cholera dose as no cholera doses have been administered.\nCheck for contraindications.'\n    when \"Client is due for cholera vaccination Case 2\" then 'Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.\nCheck for contraindications.'\n    when \"Client is due for cholera vaccination Case 3\" then 'Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.\nCheck for contraindications.'\n    when \"Client is due for cholera vaccination Case 4\" then 'Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered approximately more than 2 years ago. \nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest cholera dose was administered less than 1 week ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest cholera dose was administered less than 1 week ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 1 week\n@code: The latest cholera dose was administered less than 1 week ago-105\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"The latest cholera dose was administered less than 1 week ago\":\n  \"Date of Latest Cholera Dose\" is not null\n  and duration in weeks between \"Date of Latest Cholera Dose\" and Today < 1"
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for cholera vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for cholera vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for cholera vaccination\":\n  Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"At least one cholera primary series dose was administered\"\n    and Encounter.\"Dose number of the latest primary series dose is one\"\n    and Encounter.\"The latest cholera dose was administered less than 1 week ago\""
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for cholera vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for cholera vaccination Guidance\n@guidance: Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose.\n*/\ndefine \"Client is not due for cholera vaccination Guidance\":\n  'Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose.'"
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
        "valueString" : "IMMZD2DTCholeraEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≤ 2 years ± Member States defined interval\n@code: The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}-139\n@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years\n*/\ndefine \"The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}\":\n  \"Date of Latest Cholera Dose\" is not null\n  and duration in months between \"Date of Latest Cholera Dose\" and Today > 21\n  and duration in days between (\"Date of Latest Cholera Dose\" + 2 years) and Today <= CholeraExactIntervalDays"
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is due for cholera booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is due for cholera booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n\"Completed the booster series\" (where \"Vaccine type\" = \"Cholera vaccines\") = TRUE\n*/\ndefine \"Primary series is complete. Client is due for cholera booster dose\":\n  Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"At least one cholera primary series dose was administered\"\n    and Encounter.\"Dose number of the latest primary series dose is more than or equal to two\"\n    and Encounter.\"The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}\""
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is due for cholera booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is due for cholera booster dose Guidance\n@guidance: Should vaccinate client with cholera booster dose as the latest cholera dose was administered approximately less than 2 years ago. \nCheck for contraindications.\n*/\ndefine \"Primary series is complete. Client is due for cholera booster dose Guidance\":\n  'Should vaccinate client with cholera booster dose as the latest cholera dose was administered approximately less than 2 years ago. \nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is due for cholera vaccination\" then \"Client is due for cholera vaccination Guidance\"\n    when \"Client is not due for cholera vaccination\" then \"Client is not due for cholera vaccination Guidance\"\n    when \"Primary series is complete. Client is due for cholera booster dose\" then \"Primary series is complete. Client is due for cholera booster dose Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
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
        "valueInteger" : 28
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueInteger" : 32
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
        "valueString" : "toInterval"
      },
      {
        "url" : "statement",
        "valueString" : "/*\nFrom FHIRCommon 4.1.0:\n*/\n\n/*\n@description: Normalizes a value that is a choice of timing-valued types to an equivalent interval\n@comment: Normalizes a choice type of FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instance, FHIR.string, FHIR.Age, or FHIR.Range types\nto an equivalent interval. This selection of choice types is a superset of the majority of choice types that are used as possible\nrepresentations for timing-valued elements in FHIR, allowing this function to be used across any resource.\n\nThe input can be provided as a dateTime, Period, Timing, instant, string, Age, or Range.\nThe intent of this function is to provide a clear and concise mechanism to treat single\nelements that have multiple possible representations as intervals so that logic doesn't have to account\nfor the variability. More complex calculations (such as medication request period or dispense period\ncalculation) need specific guidance and consideration. That guidance may make use of this function, but\nthe focus of this function is on single element calculations where the semantics are unambiguous.\nIf the input is a dateTime, the result a DateTime Interval beginning and ending on that dateTime.\nIf the input is a Period, the result is a DateTime Interval.\nIf the input is a Timing, an error is raised indicating a single interval cannot be computed from a Timing.\nIf the input is an instant, the result is a DateTime Interval beginning and ending on that instant.\nIf the input is a string, an error is raised indicating a single interval cannot be computed from a string.\nIf the input is an Age, the result is a DateTime Interval beginning when the patient was the given Age,\nand ending immediately prior to when the patient was the given Age plus one year.\nIf the input is a Range, the result is a DateTime Interval beginning when the patient was the Age given\nby the low end of the Range, and ending immediately prior to when the patient was the Age given by the\nhigh end of the Range plus one year.\n\nNOTE: Due to the\ncomplexity of determining a single interval from a Timing or String type, this function will throw a run-time exception if it is used\nwith a Timing or String.\n*/\ndefine fluent function toInterval(choice Choice<FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instant, FHIR.string, FHIR.Age, FHIR.Range>):\n  case\n    when choice is FHIR.dateTime then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.dateTime), FHIRHelpers.ToDateTime(choice as FHIR.dateTime)]\n    when choice is FHIR.Period then\n      FHIRHelpers.ToInterval(choice as FHIR.Period)\n    when choice is FHIR.instant then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.instant), FHIRHelpers.ToDateTime(choice as FHIR.instant)]\n    when choice is FHIR.Age then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age) + 1 year)\n    when choice is FHIR.Range then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).low),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).high) + 1 year)\n    when choice is FHIR.Timing then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a Timing value is not supported')\n    when choice is FHIR.string then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported')\n    else\n      null as Interval<DateTime>\n  end"
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
        "valueInteger" : 34
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
        "valueInteger" : 35
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
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
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
        "valueString" : "getDose"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets a given immunization from a list that matches the dose number\n */\ndefine fluent function getDose(immunization Immunization, doseNumber String):\n  immunization I where\n    exists( I.protocolApplied pa where pa.doseNumber = doseNumber )"
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
        "valueString" : "mostRecent"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function mostRecent(immunizations List<Immunization>):\n  Last(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 43
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTCholeraEncounterElements"
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
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Cholera vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "CholeraExactIntervalDays",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "integer"
    },
    {
      "name" : "Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Has Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Primary series is complete. Client is due for cholera booster dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Client is due for cholera vaccination",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    }],
    "dataRequirement" : [{
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["birthDate"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "protocolApplied", "occurrence"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      }]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["occurrence", "protocolApplied"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status",
      "isSubpotent",
      "occurrence",
      "vaccineCode",
      "protocolApplied"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      },
      {
        "path" : "vaccineCode",
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2"
      }]
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses",
  "version" : "1.0.0",
  "name" : "IMMZD2DTCholeraWCRBSVaccine2Doses",
  "title" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-09T14:18:30+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses\nWhole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTCholeraWCRBSVaccine2DosesLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "For WC-rBS vaccine (Dukoral), 2 doses should be given to children aged ≥6 years and adults, \nwith an interval of 1–6 weeks between doses. If the interval since the last dose ≥ 6 weeks, restart the primary series.\nFor those aged ≥6 years, if less than 2 years have passed, 1 dose for revaccination. If more than 2 years \nhave passed, the primary series of 2 doses should be repeated."
    }],
    "title" : "Determine if the client is due for Cholera.",
    "description" : "Determine if the client is due for Cholera vaccine according to the national immunization protocol.\nWhole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for cholera vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for cholera vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE2', display: 'Cholera vaccines' } }, display: 'Cholera vaccines' }"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "For those aged ≥6 years, if less than 2 years have passed, 1 dose for revaccination. If more than 2 years \nhave passed, the primary series of 2 doses should be repeated."
    }],
    "title" : "Determine if the client is due for Cholera.",
    "description" : "Determine if the client is due for Cholera vaccine according to the national immunization protocol.\nWhole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Primary series is complete. Client is due for cholera booster dose",
        "language" : "text/cql-identifier",
        "expression" : "Primary series is complete. Client is due for cholera booster dose"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE2', display: 'Cholera vaccines' } }, display: 'Cholera vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses.",
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
