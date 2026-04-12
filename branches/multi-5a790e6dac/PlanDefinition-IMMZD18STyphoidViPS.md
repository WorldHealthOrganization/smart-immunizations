# IMMZ.D18.S.Typhoid.ViPS schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Typhoid.ViPS schedule**

## PlanDefinition: IMMZ.D18.S.Typhoid.ViPS schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18STyphoidViPS | *Version*:0.2.0 |
| Draft as of 2026-04-03 | *Computable Name*:IMMZD18STyphoidViPS |

 
IMMZ.D18.S.Typhoid.ViPS schedule Unconjugated Vi polysaccharide (ViPS), 1 dose schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Typhoid.ViPS schedule](PlanDefinition-IMMZD18STyphoidViPS.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Typhoid.ViPS schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-03 22:35:55+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Typhoid.ViPS schedule Unconjugated Vi polysaccharide (ViPS), 1 dose schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18STyphoidViPSLogic](Library-IMMZD18STyphoidViPSLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18STyphoidViPS",
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
        "valueInteger" : 2
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
        "valueInteger" : 3
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
        "valueInteger" : 4
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
        "valueInteger" : 5
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18STyphoidViPSLogic"
      },
      {
        "url" : "name",
        "valueString" : "One typhoid dose from the primary series was administered. The primary series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: One typhoid dose from the primary series was administered. The primary series has been completed\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Typhoid vaccines\")\n*/\ndefine \"One typhoid dose from the primary series was administered. The primary series has been completed\":\n  Encounter.\"One typhoid primary series dose was administered\""
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
        "valueString" : "IMMZD18STyphoidViPSLogic"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid booster dose(s)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Typhoid booster dose(s)\n@description: Provision of the typhoid ViPS booster dose\n@trigger: The primary series has been completed\n@pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Typhoid vaccines\")\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Typhoid vaccines\")\n*/\ndefine \"Typhoid booster dose(s)\":\n  \"One typhoid dose from the primary series was administered. The primary series has been completed\""
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
        "valueString" : "No typhoid primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No typhoid primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Typhoid vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No typhoid primary series doses were administered-116\n@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule\n@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule\n*/\ndefine \"No typhoid primary series doses were administered\":\n  \"Number of Typhoid Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD18STyphoidViPSLogic"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Typhoid dose 1\n@description: Provision of the typhoid ViPS dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"Typhoid dose 1\":\n  Encounter.\"No typhoid primary series doses were administered\"\n  and not \"One typhoid dose from the primary series was administered. The primary series has been completed\""
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
        "valueString" : "IMMZD18STyphoidViPSLogic"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Typhoid dose 1 Due Date\n@pseudocode: \"Date of birth\" + 2 years\n*/\ndefine \"Typhoid dose 1 Due Date\":\n  if \"Typhoid dose 1\" then Patient.birthDate + 2 years\n  else null"
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
        "valueString" : "IMMZD18STyphoidViPSLogic"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Typhoid dose 1 Create\n@create: Typhoid dose 1 should be provided if the client's age is over 2 years, and the region recommends typhoid vaccination.\n*/\ndefine \"Typhoid dose 1 Create\":\n  if \"Typhoid dose 1\"\n  then 'Typhoid dose 1 should be provided if the client\\'s age is over 2 years, and the region recommends typhoid vaccination.' + '\nDue Date: ' + ToString(\"Typhoid dose 1 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Typhoid Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Typhoid Dose\n*/\ndefine \"Date of Latest Typhoid Dose\":\n  date from start of \"Typhoid Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18STyphoidViPSLogic"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid booster dose(s) Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Typhoid booster dose(s) Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Typhoid vaccines\") + 3 years\n*/\ndefine \"Typhoid booster dose(s) Due Date\":\n  if \"Typhoid booster dose(s)\" then Encounter.\"Date of Latest Typhoid Dose\" + 3 years\n  else null"
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
        "valueString" : "IMMZD18STyphoidViPSLogic"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid booster dose(s) Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Typhoid booster dose(s) Create\n@create: Revaccination is recommended every 3 years for ViPS.\n*/\ndefine \"Typhoid booster dose(s) Create\":\n  if \"Typhoid booster dose(s)\"\n  then 'Revaccination is recommended every 3 years for ViPS.' + '\nDue Date: ' + ToString(\"Typhoid booster dose(s) Due Date\")\n  else ''"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueInteger" : 22
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
      "name" : "Typhoid booster dose(s)",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Typhoid dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Typhoid dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Typhoid booster dose(s) Create",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18STyphoidViPS",
  "version" : "0.2.0",
  "name" : "IMMZD18STyphoidViPS",
  "title" : "IMMZ.D18.S.Typhoid.ViPS schedule",
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
  "description" : "IMMZ.D18.S.Typhoid.ViPS schedule\nUnconjugated Vi polysaccharide (ViPS), 1 dose schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18STyphoidViPSLogic"],
  "action" : [{
    "title" : "Typhoid dose 1",
    "description" : "Provision of the typhoid ViPS dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Typhoid dose 1 should be provided if the client's age is over 2 years, and the region recommends typhoid vaccination.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Typhoid dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Typhoid dose 1"
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
        "expression" : "Typhoid dose 1 Create"
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
    "title" : "Typhoid booster dose(s)",
    "description" : "Provision of the typhoid ViPS booster dose\nTrigger event: The primary series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Typhoid vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Typhoid vaccines\")\nCreate condition: Revaccination is recommended every 3 years for ViPS.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Typhoid booster dose(s)",
        "language" : "text/cql-identifier",
        "expression" : "Typhoid booster dose(s)"
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
        "expression" : "Typhoid booster dose(s) Create"
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
