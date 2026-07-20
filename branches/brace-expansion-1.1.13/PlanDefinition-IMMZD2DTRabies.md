# IMMZ.D2.DT.Rabies - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Rabies**

## PlanDefinition: IMMZ.D2.DT.Rabies 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRabies | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD2DTRabies |

 
IMMZ.D2.DT.Rabies Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Rabies](PlanDefinition-IMMZD2DTRabies.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Rabies
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Rabies Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTRabiesLogic](Library-IMMZD2DTRabiesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTRabies",
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Rabies Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Rabies containing Doses Administered to Patient\n*/\ndefine \"Rabies Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Rabies vaccines\""
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Rabies Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Rabies containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Rabies Primary Series Doses Administered to Patient\":\n  \"Rabies Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Rabies Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Rabies Primary Series doses\n*/\ndefine \"Number of Rabies Primary Series Doses Administered\":\n  Count(\"Rabies Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No rabies primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No rabies primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No rabies primary series doses were administered-115\n@decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure\n*/\ndefine \"No rabies primary series doses were administered\":\n  \"Number of Rabies Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for rabies vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for rabies vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for rabies vaccination Case 1\":\n  Encounter.\"No rabies primary series doses were administered\""
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One rabies primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One rabies primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One rabies primary series doses were administered-115\n@decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure\n*/\ndefine \"One rabies primary series doses were administered\":\n  \"Number of Rabies Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Rabies Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Rabies Dose\n*/\ndefine \"Date of Latest Rabies Dose\":\n  date from start of \"Rabies Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest rabies dose was administered less than 7 days ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest rabies dose was administered less than 7 days ago\n@pseudocode: ''Today's date - Latest \"Date of vaccination\" (where \"Vaccine type\" = \"Rabies vaccines\") < 7 days\n@code: The latest rabies dose was administered less than 7 days ago-97\n@decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure\n*/\ndefine \"The latest rabies dose was administered less than 7 days ago\":\n  \"Date of Latest Rabies Dose\" is not null\n  and duration in days between \"Date of Latest Rabies Dose\" and Today < 7"
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest rabies dose was administered more than 7 days ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest rabies dose was administered more than 7 days ago\n@pseudocode: ''Today's date - Latest \"Date of vaccination\" (where \"Vaccine type\" = \"Rabies vaccines\") ≥ 7 days\n@code: The latest rabies dose was administered more than 7 days ago-97\n@decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure\n*/\ndefine \"The latest rabies dose was administered more than 7 days ago\":\n  not \"The latest rabies dose was administered less than 7 days ago\""
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for rabies vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for rabies vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for rabies vaccination Case 2\":\n  Encounter.\"One rabies primary series doses were administered\"\n    and Encounter.\"The latest rabies dose was administered more than 7 days ago\""
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for rabies vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for rabies vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for rabies vaccination\":\n  \"Client is due for rabies vaccination Case 1\"\n    or \"Client is due for rabies vaccination Case 2\""
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for rabies vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for rabies vaccination Guidance\n@guidance = Should vaccinate client with first rabies dose as no rabies doses were administered and client is at high risk of exposure. \nCheck for contraindications.\n@guidance = Should vaccinate client with second rabies dose as the latest rabies dose was administerd 7 or more days ago. \nCheck for contraindications.\n*/\ndefine \"Client is due for rabies vaccination Guidance\":\n  case\n    when \"Client is due for rabies vaccination Case 1\" then 'Should vaccinate client with first rabies dose as no rabies doses were administered and client is at high risk of exposure. \nCheck for contraindications.'\n    when \"Client is due for rabies vaccination Case 2\" then 'Should vaccinate client with second rabies dose as the latest rabies dose was administerd 7 or more days ago. \nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for rabies vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for rabies vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for rabies vaccination\":\n  Encounter.\"One rabies primary series doses were administered\"\n    and Encounter.\"The latest rabies dose was administered less than 7 days ago\""
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for rabies vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for rabies vaccination Guidance\n@guidance: Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose.\n*/\ndefine \"Client is not due for rabies vaccination Guidance\":\n  'Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose.'"
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
        "valueString" : "IMMZD2DTRabiesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two rabies primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two rabies primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two rabies primary series doses were administered-115\n@decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure\n*/\ndefine \"Two rabies primary series doses were administered\":\n  \"Number of Rabies Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rabies immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rabies immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Rabies vaccines\")\n*/\ndefine \"Rabies immunization schedule is complete\":\n  Encounter.\"Two rabies primary series doses were administered\""
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rabies immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rabies immunization schedule is complete Guidance\n@guidance: Rabies immunization schedule is complete. Two rabies primary series doses were administered. \nCheck for any other vaccines due.\n*/\ndefine \"Rabies immunization schedule is complete Guidance\":\n  'Rabies immunization schedule is complete. Two rabies primary series doses were administered. \nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTRabiesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is due for rabies vaccination\" then \"Client is due for rabies vaccination Guidance\"\n    when \"Client is not due for rabies vaccination\" then \"Client is not due for rabies vaccination Guidance\"\n    when \"Rabies immunization schedule is complete\" then \"Rabies immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTRabiesLogic"
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
        "valueInteger" : 20
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
        "valueInteger" : 21
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
        "valueInteger" : 22
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
        "valueInteger" : 23
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 27
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTRabiesEncounterElements"
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
      "display" : "Value set Rabies vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE15"
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
      "name" : "Client is due for rabies vaccination",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRabies",
  "version" : "0.2.0",
  "name" : "IMMZD2DTRabies",
  "title" : "IMMZ.D2.DT.Rabies",
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
  "description" : "IMMZ.D2.DT.Rabies\nPre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTRabiesLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "The schedule is for a 2-site intradermal vaccine administered on days 0 and 7. \nIf intramuscular administration is used, WHO recommends a 1-site intramuscular vaccine administration on days 0 and 7.\nNote: This PrEP dose is recommended for individuals at high risk of rabies virus exposure. These include subpopulations \nin highly endemic settings with limited access to timely and adequate PrEP, individuals at occupational risk and travellers \nwho may be at risk of exposure. WHO recommendations apply only to inactivated modern, concentrated, purified cell culture and \nembryonated egg-based rabies vaccines (CCEEVs).\nPrEP schedule: 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, WHO \nrecommends a 1-site intramuscular vaccine administration on days 0 and 7.\nIf any doses are delayed, vaccination should be resumed, not restarted. A change in the route of administration or in \nvaccine product during a course is acceptable if such a change is unavoidable.\nThe schedule is for a 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, \nWHO recommends a 1-site intramuscular vaccine administration on days 0 and 7."
    }],
    "title" : "Determine if the client is due for Rabies.",
    "description" : "Determine if the client is due for Rabies vaccine according to the national immunization protocol.\nPre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for rabies vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for rabies vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE15', display: 'Rabies vaccines' } }, display: 'Rabies vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Rabies.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Rabies.",
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
