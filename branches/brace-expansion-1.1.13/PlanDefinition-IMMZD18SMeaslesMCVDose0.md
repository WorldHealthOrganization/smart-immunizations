# IMMZ.D18.S.Measles.MCV dose 0 schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Measles.MCV dose 0 schedule**

## PlanDefinition: IMMZ.D18.S.Measles.MCV dose 0 schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesMCVDose0 | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD18SMeaslesMCVDose0 |

 
IMMZ.D18.S.Measles.MCV dose 0 schedule Measles-containing vaccine dose 0 (MCV0) schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Measles.MCV dose 0 schedule](PlanDefinition-IMMZD18SMeaslesMCVDose0.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Measles.MCV dose 0 schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Measles.MCV dose 0 schedule Measles-containing vaccine dose 0 (MCV0) schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SMeaslesMCVDose0Logic](Library-IMMZD18SMeaslesMCVDose0Logic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeaslesMCVDose0",
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
        "valueString" : "IMMZD2DTMeaslesElements"
      },
      {
        "url" : "name",
        "valueString" : "MCV Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: MCV Doses Administered to Patient\n*/\ndefine \"MCV Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Measles-containing vaccines\""
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
        "valueString" : "IMMZD2DTMeaslesElements"
      },
      {
        "url" : "name",
        "valueString" : "MCV Dose 0 Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: MCV Dose 0 Doses Administered to Patient\n*/\ndefine \"MCV Dose 0 Doses Administered to Patient\":\n  \"MCV Doses Administered to Patient\".seriesDose0()"
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "MCV Dose 0 Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: MCV Dose 0 Doses Administered to Patient\n*/\ndefine \"MCV Dose 0 Doses Administered to Patient\":\n  MeaslesElements.\"MCV Dose 0 Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of MCV Dose 0 Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of MCV Dose 0 Doses Administered\n*/\ndefine \"Number of MCV Dose 0 Doses Administered\":\n  Count(\"MCV Dose 0 Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "MCV0 was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: MCV0 was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Measles-containing vaccines\" and \"Type of dose\" = \"Dose 0\") = 1\n@code: MCV0 was administered-119\n@decision: IMMZ.D2.DT.Measles.MCV dose 0: Measles-containing vaccine dose 0 (MCV0) administration\n*/\ndefine \"MCV0 was administered\":\n  \"Number of MCV Dose 0 Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SMeaslesMCVDose0Logic"
      },
      {
        "url" : "name",
        "valueString" : "MCV0 was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: MCV0 was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Measles-containing vaccines\" and \"Type of dose\" = \"Dose 0\") = 1\n*/\ndefine \"MCV0 was administered\":\n  Encounter.\"MCV0 was administered\""
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
        "valueString" : "IMMZD18SMeaslesMCVDose0Logic"
      },
      {
        "url" : "name",
        "valueString" : "MCV0 Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: MCV0 Expiration\n@pseudocode: \"Date of birth\" + 9 months for countries with ongoing transmission in which the risk of measles mortality remains high\nOR\n\"Date of birth\" + 12 months for countries with low levels of measles transmission\n*/\ndefine \"MCV0 Expiration\":\n  Patient.birthDate + 12 months"
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
        "valueString" : "IMMZD18SMeaslesMCVDose0Logic"
      },
      {
        "url" : "name",
        "valueString" : "MCV0"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: MCV0\n@description: Provision of the MCV0\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"MCV0\":\n  not \"MCV0 was administered\" and \"MCV0 Expiration\" after Today"
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
        "valueString" : "IMMZD18SMeaslesMCVDose0Logic"
      },
      {
        "url" : "name",
        "valueString" : "MCV0 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: MCV0 Due Date\n@pseudocode: \"Date of birth\" + 6 months\n*/\ndefine \"MCV0 Due Date\":\n  if \"MCV0\" then Patient.birthDate + 6 months\n  else null"
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
        "valueString" : "IMMZD18SMeaslesMCVDose0Logic"
      },
      {
        "url" : "name",
        "valueString" : "MCV0 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: MCV0 Create\n@create: In the following situations, a supplementary dose of MCV should be given to infants from 6 months of age: \n• during a measles outbreak as part of intensified service delivery;\n• during campaigns in settings where the risk of measles among infants aged under 9 months remains high (e.g. in endemic countries experiencing regular outbreaks);\n• for internally displaced populations and refugees, and populations in conflict zones;\n• for individual infants at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks such as day-care facilities);\n• for infants travelling to countries experiencing measles outbreaks;\n• for infants known to be HIV-infected or exposed (i.e. born to a woman infected with HIV).\n*/\ndefine \"MCV0 Create\":\n  if \"MCV0\"\n  then 'In the following situations, a supplementary dose of MCV should be given to infants from 6 months of age:\n• during a measles outbreak as part of intensified service delivery;\n• during campaigns in settings where the risk of measles among infants aged under 9 months remains high (e.g. in endemic countries experiencing regular outbreaks);\n• for internally displaced populations and refugees, and populations in conflict zones;\n• for individual infants at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks such as day-care facilities);\n• for infants travelling to countries experiencing measles outbreaks;\n• for infants known to be HIV-infected or exposed (i.e. born to a woman infected with HIV).' + '\nDue Date: ' + ToString(\"MCV0 Due Date\") + '\nExpiration: ' + ToString(\"MCV0 Expiration\")\n  else ''"
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
        "valueInteger" : 11
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
        "valueInteger" : 12
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
        "valueInteger" : 13
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
        "valueInteger" : 14
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
        "valueInteger" : 15
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
        "valueInteger" : 16
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
        "valueInteger" : 17
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
        "valueInteger" : 18
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMeaslesEncounterElements"
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
      "display" : "Library MeaslesElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMeaslesElements"
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
      "display" : "Value set Measles-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE9"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "MCV0",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "MCV0 Create",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesMCVDose0",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeaslesMCVDose0",
  "title" : "IMMZ.D18.S.Measles.MCV dose 0 schedule",
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
  "description" : "IMMZ.D18.S.Measles.MCV dose 0 schedule\nMeasles-containing vaccine dose 0 (MCV0) schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SMeaslesMCVDose0Logic"],
  "action" : [{
    "title" : "MCV0",
    "description" : "Provision of the MCV0\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: In the following situations, a supplementary dose of MCV should be given to infants from 6 months of age: \n• during a measles outbreak as part of intensified service delivery;\n• during campaigns in settings where the risk of measles among infants aged under 9 months remains high (e.g. in endemic countries experiencing regular outbreaks);\n• for internally displaced populations and refugees, and populations in conflict zones;\n• for individual infants at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks such as day-care facilities);\n• for infants travelling to countries experiencing measles outbreaks;\n• for infants known to be HIV-infected or exposed (i.e. born to a woman infected with HIV).",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "MCV0",
        "language" : "text/cql-identifier",
        "expression" : "MCV0"
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
        "expression" : "MCV0 Create"
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
