# IMMZ.D18.S.Polio.Birth dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Polio.Birth dose schedule**

## PlanDefinition: IMMZ.D18.S.Polio.Birth dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioBirthDose | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD18SPolioBirthDose |

 
IMMZ.D18.S.Polio.Birth dose schedule Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Polio.Birth dose schedule](PlanDefinition-IMMZD18SPolioBirthDose.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Polio.Birth dose schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Polio.Birth dose schedule Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule)
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SPolioBirthDoseLogic](Library-IMMZD18SPolioBirthDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPolioBirthDose",
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
        "valueString" : "IMMZD2DTPolioElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio containing Doses Administered to Patient\n*/\ndefine \"Polio Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Poliovirus-containing vaccines\""
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
        "valueString" : "IMMZD2DTPolioElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Dose 0 Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio Dose 0 Doses Administered to Patient\n*/\ndefine \"Polio Dose 0 Doses Administered to Patient\":\n  \"Polio Doses Administered to Patient\".seriesDose0()"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Dose 0 Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio Dose 0 Doses Administered to Patient\n*/\ndefine \"Polio Dose 0 Doses Administered to Patient\":\n  PolioElements.\"Polio Dose 0 Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Polio Dose 0 Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Polio Dose 0 Doses Administered\n*/\ndefine \"Number of Polio Dose 0 Doses Administered\":\n  Count(\"Polio Dose 0 Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "bOPV birth dose (a zero dose) was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: bOPV birth dose (a zero dose) was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" and \"Type of dose\" = \"Dose 0\" AND \"Birth dose\" = TRUE) = 1\n@code: bOPV birth dose (a zero dose) was administered-146\n@decision: IMMZ.D2.DT.Polio.Birth dose: Birth dose administration as part of \"bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)\n*/\ndefine \"bOPV birth dose (a zero dose) was administered\":\n  \"Number of Polio Dose 0 Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SPolioBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Polio birth dose (a zero dose) was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Polio birth dose (a zero dose) was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" and \"Type of dose\" = \"Dose 0\" AND \"Birth dose\" = TRUE) = 1\n*/\ndefine \"Polio birth dose (a zero dose) was administered\":\n  Encounter.\"bOPV birth dose (a zero dose) was administered\""
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
        "valueString" : "IMMZD18SPolioBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "bOPV birth dose (a zero dose) Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: bOPV birth dose (a zero dose) Expiration\n@pseudocode: \"Date of birth\" + 1 week\n*/\ndefine \"bOPV birth dose (a zero dose) Expiration\":\n  Patient.birthDate + 1 week"
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
        "valueString" : "IMMZD18SPolioBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "bOPV birth dose (a zero dose)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: bOPV birth dose (a zero dose)\n@description: Provision of bOPV birth dose (a zero dose)\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"bOPV birth dose (a zero dose)\":\n  not \"Polio birth dose (a zero dose) was administered\"\n  and \"bOPV birth dose (a zero dose) Expiration\" after day of Today"
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
        "valueString" : "IMMZD18SPolioBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "bOPV birth dose (a zero dose) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: bOPV birth dose (a zero dose) Due Date\n@pseudocode: \"Date of birth\"\n*/\ndefine \"bOPV birth dose (a zero dose) Due Date\":\n  if \"bOPV birth dose (a zero dose)\" then Patient.birthDate\n  else null"
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
        "valueString" : "IMMZD18SPolioBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "bOPV birth dose (a zero dose) Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: bOPV birth dose (a zero dose) Overdue\n@pseudocode: \"Date of birth\" + 1 day\n*/\ndefine \"bOPV birth dose (a zero dose) Overdue\":\n  if \"bOPV birth dose (a zero dose)\" then Patient.birthDate + 1 day\n  else null"
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
        "valueString" : "IMMZD18SPolioBirthDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "bOPV birth dose (a zero dose) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: bOPV birth dose (a zero dose) Create\n@create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio\n*/\ndefine \"bOPV birth dose (a zero dose) Create\":\n  if \"bOPV birth dose (a zero dose)\"\n  then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + '\nDue Date: ' + ToString(\"bOPV birth dose (a zero dose) Due Date\") + '\nOverdue: ' + ToString(\"bOPV birth dose (a zero dose) Overdue\") + '\nExpiration: ' + ToString(\"bOPV birth dose (a zero dose) Expiration\")\n  else ''"
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
        "valueString" : "onOrBefore"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets immunizations on or before a date\n */\ndefine fluent function onOrBefore(immunizations List<Immunization>, beforeDate Date):\n  immunizations I where\n    I.occurrence.toInterval() same day or before beforeDate"
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
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 19
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPolioEncounterElements"
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
      "display" : "Library PolioElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPolioElements"
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
      "display" : "Value set Poliovirus-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "bOPV birth dose (a zero dose) Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "bOPV birth dose (a zero dose)",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioBirthDose",
  "version" : "0.2.0",
  "name" : "IMMZD18SPolioBirthDose",
  "title" : "IMMZ.D18.S.Polio.Birth dose schedule",
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
  "description" : "IMMZ.D18.S.Polio.Birth dose schedule\nBirth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule)",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SPolioBirthDoseLogic"],
  "action" : [{
    "title" : "bOPV birth dose (a zero dose)",
    "description" : "Provision of bOPV birth dose (a zero dose)\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "bOPV birth dose (a zero dose)",
        "language" : "text/cql-identifier",
        "expression" : "bOPV birth dose (a zero dose)"
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
        "expression" : "bOPV birth dose (a zero dose) Create"
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
