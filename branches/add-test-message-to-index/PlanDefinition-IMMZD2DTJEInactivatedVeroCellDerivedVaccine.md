# IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine**

## PlanDefinition: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine | *Version*:0.2.0 |
| Draft as of 2026-03-03 | *Computable Name*:IMMZD2DTJEInactivatedVeroCellDerivedVaccine |

 
IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine Inactivated Vero cell-derived vaccination schedule (2-dose scheme) JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine](PlanDefinition-IMMZD2DTJEInactivatedVeroCellDerivedVaccine.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-03 13:07:11+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine Inactivated Vero cell-derived vaccination schedule (2-dose scheme) JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic](Library-IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccine",
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 6 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 6 months\n@pseudocode: Today's date − \"Date of birth\" < 6 months\n@code: Client's age is less than 6 months-41\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"Client's age is less than 6 months\":\n  Encounter.\"Current Patient Age In Months\" < 6"
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for JE vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for JE vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for JE vaccination Case 1\":\n  Encounter.\"Client's age is less than 6 months\""
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "JE Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: JE containing Doses Administered to Patient\n*/\ndefine \"JE Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"JE vaccines\""
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "JE Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: JE containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"JE Primary Series Doses Administered to Patient\":\n  \"JE Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of JE Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of JE Primary Series doses\n*/\ndefine \"Number of JE Primary Series Doses Administered\":\n  Count(\"JE Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One JE primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One JE primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One JE primary series dose was administered-111\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n@decision: IMMZ.D2.DT.JE.Live attenuated vaccine: Live attenuated vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"One JE primary series dose was administered\":\n  \"Number of JE Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest JE Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest JE Dose\n*/\ndefine \"Date of Latest JE Dose\":\n  date from start of \"JE Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest JE dose was administered less than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest JE dose was administered less than 4 weeks ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"JE vaccines\") < 4 weeks\n@code: The latest JE dose was administered less than 4 weeks ago-94\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"The latest JE dose was administered less than 4 weeks ago\":\n  \"Date of Latest JE Dose\" is not null\n    and duration in weeks between \"Date of Latest JE Dose\" and Today < 4"
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for JE vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for JE vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for JE vaccination Case 2\":\n  Encounter.\"One JE primary series dose was administered\"\n    and Encounter.\"The latest JE dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for JE vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for JE vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for JE vaccination\":\n  \"Client is not due for JE vaccination Case 1\"\n    or \"Client is not due for JE vaccination Case 2\""
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for JE vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for JE vaccination Guidance\n@guidance = Should not vaccinate client with first JE dose as client's age is under 6 months. \nCheck for any vaccines due and inform the caregiver of when to come back for the first JE dose.\n@guidance = Should not vaccinate client with second JE dose as the latest JE dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver when to come back for the second JE dose.\n*/\ndefine \"Client is not due for JE vaccination Guidance\":\n  case\n    when \"Client is not due for JE vaccination Case 1\" then 'Should not vaccinate client with first JE dose as client\\'s age is under 6 months. \nCheck for any vaccines due and inform the caregiver of when to come back for the first JE dose.'\n    when \"Client is not due for JE vaccination Case 2\" then 'Should not vaccinate client with second JE dose as the latest JE dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver when to come back for the second JE dose.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No JE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No JE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No JE primary series doses were administered-111\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n@decision: IMMZ.D2.DT.JE.Live attenuated vaccine: Live attenuated vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n@decision: IMMZ.D2.DT.JE.Live recombinant vaccine: Live recombinant vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"No JE primary series doses were administered\":\n  \"Number of JE Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to 6 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 6 months\n@pseudocode: Today's date − \"Date of birth\" ≥ 6 months\n@code: Client's age is more than or equal to 6 months-41\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"Client's age is more than or equal to 6 months\":\n  Encounter.\"Current Patient Age In Months\" >= 6"
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for JE vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for JE vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for JE vaccination Case 1\":\n  Encounter.\"No JE primary series doses were administered\"\n    and Encounter.\"Client's age is more than or equal to 6 months\""
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest JE dose was administered more than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest JE dose was administered more than 4 weeks ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"JE vaccines\") ≥ 4 weeks\n@code: The latest JE dose was administered more than 4 weeks ago-94\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"The latest JE dose was administered more than 4 weeks ago\":\n  not \"The latest JE dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for JE vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for JE vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for JE vaccination Case 2\":\n  Encounter.\"One JE primary series dose was administered\"\n    and Encounter.\"The latest JE dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for JE vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for JE vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for JE vaccination\":\n  \"Client is due for JE vaccination Case 1\"\n    or \"Client is due for JE vaccination Case 2\""
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for JE vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for JE vaccination Guidance\n@guidance = Should vaccinate client with first JE dose as no JE doses were administered and client is within the appropriate age range. \nCheck for contraindications.\n@guidance = Should vaccinate client with second JE dose as the latest JE dose was administered more than 4 weeks ago.\nCheck for contraindications.\n*/\ndefine \"Client is due for JE vaccination Guidance\":\n  case\n    when \"Client is due for JE vaccination Case 1\" then 'Should vaccinate client with first JE dose as no JE doses were administered and client is within the appropriate age range. \nCheck for contraindications.'\n    when \"Client is due for JE vaccination Case 2\" then 'Should vaccinate client with second JE dose as the latest JE dose was administered more than 4 weeks ago.\nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two JE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two JE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two JE primary series doses were administered-111\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"Two JE primary series doses were administered\":\n  \"Number of JE Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "JE immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: JE immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"JE vaccines\")\n*/\ndefine \"JE immunization schedule is complete\":\n  Encounter.\"Two JE primary series doses were administered\""
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "JE immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: JE immunization schedule is complete Guidance\n@guidance: JE immunization schedule is complete. Two JE primary series doses were administered. \nCheck for any other vaccines due.\n*/\ndefine \"JE immunization schedule is complete Guidance\":\n  'JE immunization schedule is complete. Two JE primary series doses were administered. \nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for JE vaccination\" then \"Client is not due for JE vaccination Guidance\"\n    when \"Client is due for JE vaccination\" then \"Client is due for JE vaccination Guidance\"\n    when \"JE immunization schedule is complete\" then \"JE immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTJEEncounterElements"
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
      "display" : "Value set JE vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE8"
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
      "name" : "Has Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Client is due for JE vaccination",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine",
  "version" : "0.2.0",
  "name" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccine",
  "title" : "IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-03T13:07:11+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine\nInactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Inactivated Vero cell-derived vaccine: Primary series according to manufacturer’s recommendations \n(these vary by product), generally 2 doses at 4-week intervals starting the primary series at ≥ 6 months of age in endemic settings."
    }],
    "title" : "Determine if the client is due for JE.",
    "description" : "Determine if the client is due for JE vaccine according to the national immunization protocol.\nInactivated Vero cell-derived vaccination schedule (2-dose scheme) JE vaccination should be integrated \ninto national immunization schedules in all areas where JE is recognized as a public health priority",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for JE vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for JE vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE8', display: 'JE vaccines' } }, display: 'JE vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine.",
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
