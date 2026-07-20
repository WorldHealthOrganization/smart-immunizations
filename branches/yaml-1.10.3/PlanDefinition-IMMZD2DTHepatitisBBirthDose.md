# IMMZ.D2.DT.Hepatitis B.Birth dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Hepatitis B.Birth dose**

## PlanDefinition: IMMZ.D2.DT.Hepatitis B.Birth dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisBBirthDose | *Version*:0.2.0 |
| Draft as of 2026-03-25 | *Computable Name*:IMMZD2DTHepatitisBBirthDose |

 
IMMZ.D2.DT.Hepatitis B.Birth dose Birth dose administration 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Hepatitis B.Birth dose](PlanDefinition-IMMZD2DTHepatitisBBirthDose.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Hepatitis B.Birth dose
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-25 23:30:34+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Hepatitis B.Birth dose Birth dose administration
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTHepatitisBBirthDoseLogic](Library-IMMZD2DTHepatitisBBirthDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTHepatitisBBirthDose",
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
        "valueString" : "IMMZD2DTHepatitisBElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis B containing Doses Administered to Patient\n*/\ndefine \"Hepatitis B Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Hepatitis B-containing vaccines\""
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
        "valueString" : "IMMZD2DTHepatitisBElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B Dose 0 Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis B Dose 0 Doses Administered to Patient\n*/\ndefine \"Hepatitis B Dose 0 Doses Administered to Patient\":\n  \"Hepatitis B Doses Administered to Patient\".seriesDose0()"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B Dose 0 Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis B Dose 0 Doses Administered to Patient\n*/\ndefine \"Hepatitis B Dose 0 Doses Administered to Patient\":\n  HepatitisBElements.\"Hepatitis B Dose 0 Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Hepatitis B Dose 0 Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Hepatitis B Dose 0 Doses Administered\n*/\ndefine \"Number of Hepatitis B Dose 0 Doses Administered\":\n  Count(\"Hepatitis B Dose 0 Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B birth dose was not administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Hepatitis B birth dose was not administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Birth dose\" = TRUE) = 0\n@code: Hepatitis B birth dose was not administered-117\n@decision: IMMZ.D2.DT.Hepatitis B.Birth dose: Birth dose administration\n*/\ndefine \"Hepatitis B birth dose was not administered\":\n  \"Number of Hepatitis B Dose 0 Doses Administered\" = 0"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Current Patient Age In Days"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in days\n */\ndefine \"Current Patient Age In Days\":\n  AgeInDaysAt(Today)"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than {Member States defined upper limit}"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than {Member States defined upper limit}\n@pseudocode: Today's date − \"Date of birth\" < Member States defined upper limit\n@code: Client's age is less than {Member States defined upper limit}-66\n@decision: IMMZ.D2.DT.Hepatitis B.Birth dose: Birth dose administration\n*/\ndefine \"Client's age is less than {Member States defined upper limit}\":\n  Encounter.\"Current Patient Age In Days\" < HepBBirthDoseAgeLimitDays"
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
        "valueString" : "IMMZD2DTHepatitisBBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for hepatitis B monovalent vaccine"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for hepatitis B monovalent vaccine\n@pseudocode: \"Immunization recommendation status\" = \"Due\" (where \"Type of hepatitis B dose\" = \"Hepatitis B monovalent vaccine\")\n*/\ndefine \"Client is due for hepatitis B monovalent vaccine\":\n  Encounter.\"Hepatitis B birth dose was not administered\"\n    and Encounter.\"Client's age is less than {Member States defined upper limit}\""
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
        "valueString" : "IMMZD2DTHepatitisBBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for hepatitis B monovalent vaccine Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for hepatitis B monovalent vaccine Guidance\n@guidance: Should vaccinate client with hepatitis B birth dose, as a monovalent dose. Check for contraindications.\n*/\ndefine \"Client is due for hepatitis B monovalent vaccine Guidance\":\n  'Should vaccinate client with hepatitis B birth dose, as a monovalent dose. Check for contraindications.'"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than {Member States defined upper limit}"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than {Member States defined upper limit}\n@pseudocode: Today's date - \"Date of birth\" > Member States defined upper limit\n@code: Client's age is more than {Member States defined upper limit}-66\n@decision: IMMZ.D2.DT.Hepatitis B.Birth dose: Birth dose administration\n*/\ndefine \"Client's age is more than {Member States defined upper limit}\":\n  Encounter.\"Current Patient Age In Days\" >= HepBBirthDoseAgeLimitDays"
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
        "valueString" : "IMMZD2DTHepatitisBBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client should follow delayed-start decision logic"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client should follow delayed-start decision logic\n@pseudocode: \n*/\ndefine \"Client should follow delayed-start decision logic\":\n  Encounter.\"Hepatitis B birth dose was not administered\"\n    and Encounter.\"Client's age is more than {Member States defined upper limit}\""
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
        "valueString" : "IMMZD2DTHepatitisBBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client should follow delayed-start decision logic Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client should follow delayed-start decision logic Guidance\n@guidance: The client has a delayed start. Please follow the delayed start schedule.\n*/\ndefine \"Client should follow delayed-start decision logic Guidance\":\n  'The client has a delayed start. Please follow the delayed start schedule.'"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B birth dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Hepatitis B birth dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Birth dose\" = TRUE) = 1\n@code: Hepatitis B birth dose was administered-117\n@decision: IMMZ.D2.DT.Hepatitis B.Birth dose: Birth dose administration\n*/\ndefine \"Hepatitis B birth dose was administered\":\n  \"Number of Hepatitis B Dose 0 Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTHepatitisBBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for the hepatitis B birth dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for the hepatitis B birth dose\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for the hepatitis B birth dose\":\n  Encounter.\"Hepatitis B birth dose was administered\""
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
        "valueString" : "IMMZD2DTHepatitisBBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for the hepatitis B birth dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for the hepatitis B birth dose Guidance\n@guidance: Hepatitis B birth dose was already administered. Check hepatitis B immunization schedule.\n*/\ndefine \"Client is not due for the hepatitis B birth dose Guidance\":\n  'Hepatitis B birth dose was already administered. Check hepatitis B immunization schedule.'"
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
        "valueString" : "IMMZD2DTHepatitisBBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is due for hepatitis B monovalent vaccine\" then \"Client is due for hepatitis B monovalent vaccine Guidance\"\n    when \"Client should follow delayed-start decision logic\" then \"Client should follow delayed-start decision logic Guidance\"\n    when \"Client is not due for the hepatitis B birth dose\" then \"Client is not due for the hepatitis B birth dose Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHepatitisBBirthDoseLogic"
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
        "valueInteger" : 17
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
        "valueInteger" : 18
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
        "valueString" : "seriesDose0"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the dose 0 series\n */\ndefine fluent function seriesDose0(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Dose 0' )"
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
        "valueInteger" : 20
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 24
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBEncounterElements"
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
      "display" : "Library HepatitisBElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBElements"
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
      "display" : "Value set Hepatitis B-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "HepBBirthDoseAgeLimitDays",
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
      "name" : "Client is due for hepatitis B monovalent vaccine",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisBBirthDose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHepatitisBBirthDose",
  "title" : "IMMZ.D2.DT.Hepatitis B.Birth dose",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-25T23:30:34+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.Hepatitis B.Birth dose\nBirth dose administration",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBBirthDoseLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Hepatitis B vaccination is recommended for all children worldwide. Since perinatal or early postnatal transmission \n  is the most important source of chronic hepatitis B virus infection globally, all infants (including low-birth-weight and premature \n  infants) should receive their first dose of hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours.  \n  If administration within 24 hours is not feasible, a late birth dose has some effectiveness. WHO recommends that all infants receive \n  the late birth dose during the first contact with health-care providers at any time up to the time of the next dose of the primary \n  schedule."
    }],
    "title" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule",
    "description" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule\nBirth dose administration",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for hepatitis B monovalent vaccine",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for hepatitis B monovalent vaccine"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE6', display: 'Hepatitis B-containing vaccines' } }, display: 'Hepatitis B-containing vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Hepatitis B.Birth dose.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Hepatitis B.Birth dose.",
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
