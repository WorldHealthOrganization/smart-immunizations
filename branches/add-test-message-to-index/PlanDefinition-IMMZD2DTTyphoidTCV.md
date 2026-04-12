# IMMZ.D2.DT.Typhoid.TCV - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Typhoid.TCV**

## PlanDefinition: IMMZ.D2.DT.Typhoid.TCV 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTyphoidTCV | *Version*:0.2.0 |
| Draft as of 2026-03-03 | *Computable Name*:IMMZD2DTTyphoidTCV |

 
IMMZ.D2.DT.Typhoid.TCV Typhoid conjugate vaccine (TCV) schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Typhoid.TCV](PlanDefinition-IMMZD2DTTyphoidTCV.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Typhoid.TCV
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-03 13:07:11+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Typhoid.TCV Typhoid conjugate vaccine (TCV) schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTTyphoidTCVLogic](Library-IMMZD2DTTyphoidTCVLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTTyphoidTCV",
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 6 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 6 months\n@pseudocode: Today's date − \"Date of birth\" < 6 months\n@code: Client's age is less than 6 months-41\n@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule\n*/\ndefine \"Client's age is less than 6 months\":\n  Encounter.\"Current Patient Age In Months\" < 6"
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Typhoid vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Typhoid vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Typhoid vaccination\":\n  Encounter.\"Client's age is less than 6 months\""
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Typhoid vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Typhoid vaccination Guidance\n@guidance: Should not vaccinate client with typhoid dose as client's age is less than 6 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.\n*/\ndefine \"Client is not due for Typhoid vaccination Guidance\":\n  'Should not vaccinate client with typhoid dose as client\\'s age is less than 6 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.'"
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
        "valueInteger" : 4
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
        "valueInteger" : 5
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Typhoid containing Doses Administered to Patient\n*/\ndefine \"Typhoid Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Typhoid vaccines\""
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Typhoid containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Typhoid Primary Series Doses Administered to Patient\":\n  \"Typhoid Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Typhoid Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Typhoid Primary Series doses\n*/\ndefine \"Number of Typhoid Primary Series Doses Administered\":\n  Count(\"Typhoid Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No typhoid primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No typhoid primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Typhoid vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No typhoid primary series doses were administered-116\n@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule\n@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule\n*/\ndefine \"No typhoid primary series doses were administered\":\n  \"Number of Typhoid Primary Series Doses Administered\" = 0"
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
        "valueInteger" : 10
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is between 6 months and 45 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is between 6 months and 45 years\n@pseudocode: 6 months ≤ Today's date − \"Date of birth\" < 45 years\n@code: Client's age is between 6 months and 45 years-52\n@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule\n*/\ndefine \"Client's age is between 6 months and 45 years\":\n  6 <= Encounter.\"Current Patient Age In Months\"\n  and Encounter.\"Current Patient Age In Years\" < 45"
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Typhoid vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Typhoid vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for Typhoid vaccination\":\n  Encounter.\"No typhoid primary series doses were administered\"\n    and Encounter.\"Client's age is between 6 months and 45 years\""
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Typhoid vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Typhoid vaccination Guidance\n@guidance: Should vaccinate client with typhoid dose as no typhoid doses were administered and client is within appropriate age range.\nCheck for contraindications.\n*/\ndefine \"Client is due for Typhoid vaccination Guidance\":\n  'Should vaccinate client with typhoid dose as no typhoid doses were administered and client is within appropriate age range.\nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to 45 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 45 years\n@pseudocode: Today's date − \"Date of birth\" ≥ 45 years\n@code: Client's age is more than or equal to 45 years-41\n@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule\n*/\ndefine \"Client's age is more than or equal to 45 years\":\n  Encounter.\"Current Patient Age In Years\" >= 45"
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note\":\n  Encounter.\"No typhoid primary series doses were administered\"\n    and Encounter.\"Client's age is more than or equal to 45 years\""
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Guidance\n@guidance: Member States should update this action according to the national immunization programme.\n*/\ndefine \"Clinical judgement is required. Create a clinical note Guidance\":\n  'Member States should update this action according to the national immunization programme.'"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One typhoid primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One typhoid primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Typhoid vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One typhoid primary series dose was administered-116\n@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule\n@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule\n*/\ndefine \"One typhoid primary series dose was administered\":\n  \"Number of Typhoid Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Typhoid immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Typhoid vaccines\")\n*/\ndefine \"Typhoid immunization schedule is complete\":\n  Encounter.\"One typhoid primary series dose was administered\""
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Typhoid immunization schedule is complete Guidance\n@guidance: Typhoid immunization schedule is complete. One typhoid primary series dose was administered.\nCheck for any other vaccines due.\n*/\ndefine \"Typhoid immunization schedule is complete Guidance\":\n  'Typhoid immunization schedule is complete. One typhoid primary series dose was administered.\nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for Typhoid vaccination\" then \"Client is not due for Typhoid vaccination Guidance\"\n    when \"Client is due for Typhoid vaccination\" then \"Client is due for Typhoid vaccination Guidance\"\n    when \"Clinical judgement is required. Create a clinical note\" then \"Clinical judgement is required. Create a clinical note Guidance\"\n    when \"Typhoid immunization schedule is complete\" then \"Typhoid immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTTyphoidTCVLogic"
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
        "valueInteger" : 21
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
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTTyphoidEncounterElements"
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
      "display" : "Value set Typhoid vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21"
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
      "name" : "Client is due for Typhoid vaccination",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTyphoidTCV",
  "version" : "0.2.0",
  "name" : "IMMZD2DTTyphoidTCV",
  "title" : "IMMZ.D2.DT.Typhoid.TCV",
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
  "description" : "IMMZ.D2.DT.Typhoid.TCV\nTyphoid conjugate vaccine (TCV) schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTTyphoidTCVLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "WHO recommends the TCV as a 0.5 mL single dose for infants and children from 6 months of \n  age and in adults up to 45 years in typhoid endemic regions."
    }],
    "title" : "Determine if the client is due for Typhoid.",
    "description" : "Determine if the client is due for Typhoid vaccine according to the national immunization protocol.\nTyphoid conjugate vaccine (TCV) schedule",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for Typhoid vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for Typhoid vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE21', display: 'Typhoid vaccines' } }, display: 'Typhoid vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Typhoid.TCV.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Typhoid.TCV.",
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
