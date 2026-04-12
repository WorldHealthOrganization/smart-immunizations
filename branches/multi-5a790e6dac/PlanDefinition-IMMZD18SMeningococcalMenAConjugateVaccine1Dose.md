# IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule**

## PlanDefinition: IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine1Dose | *Version*:0.2.0 |
| Draft as of 2026-04-03 | *Computable Name*:IMMZD18SMeningococcalMenAConjugateVaccine1Dose |

 
IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule MenA conjugate vaccine, 1-dose schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule](PlanDefinition-IMMZD18SMeningococcalMenAConjugateVaccine1Dose.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-03 22:35:55+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule MenA conjugate vaccine, 1-dose schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic](Library-IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeningococcalMenAConjugateVaccine1Dose",
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Meningococcal containing Doses Administered to Patient\n*/\ndefine \"Meningococcal Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Meningococcal vaccines\""
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Meningococcal containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Meningococcal Primary Series Doses Administered to Patient\":\n  \"Meningococcal Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Meningococcal Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Meningococcal Primary Series doses\n*/\ndefine \"Number of Meningococcal Primary Series Doses Administered\":\n  Count(\"Meningococcal Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No meningococcal primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No meningococcal primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No meningococcal primary series dose was administered-122\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose: MenA conjugate vaccine, 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses: MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose: Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)\n*/\ndefine \"No meningococcal primary series dose was administered\":\n  \"Number of Meningococcal Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One meningococcal primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One meningococcal primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One meningococcal primary series dose was administered-122\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose: MenA conjugate vaccine, 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses: MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose: Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)\n*/\ndefine \"One meningococcal primary series dose was administered\":\n  \"Number of Meningococcal Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "One meningococcal dose from the primary series was administered. The primary series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: One meningococcal dose from the primary series was administered. The primary series has been completed\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Meningococcal vaccines\")\n*/\ndefine \"One meningococcal dose from the primary series was administered. The primary series has been completed\":\n  Encounter.\"One meningococcal primary series dose was administered\""
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
        "valueString" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Meningococcal dose 1\n@description: Provision of the meningococcal dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"Meningococcal dose 1\":\n  Encounter.\"No meningococcal primary series dose was administered\"\n  and not \"One meningococcal dose from the primary series was administered. The primary series has been completed\""
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
        "valueString" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Meningococcal dose 1 Due Date\n@pseudocode: \"Date of birth\" + 9 months\n*/\ndefine \"Meningococcal dose 1 Due Date\":\n  if \"Meningococcal dose 1\" then Patient.birthDate + 9 months\n  else null"
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
        "valueString" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal dose 1 Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Meningococcal dose 1 Overdue\n@pseudocode: \"Date of birth\" + 18 months\n*/\ndefine \"Meningococcal dose 1 Overdue\":\n  if \"Meningococcal dose 1\" then Patient.birthDate + 18 months\n  else null"
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
        "valueString" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Meningococcal dose 1 Create\n@create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age\n*/\ndefine \"Meningococcal dose 1 Create\":\n  if \"Meningococcal dose 1\"\n  then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + '\nDue Date: ' + ToString(\"Meningococcal dose 1 Due Date\") + '\nOverdue: ' + ToString(\"Meningococcal dose 1 Overdue\")\n  else ''"
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
        "valueString" : "seriesPrimary"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the primary series\n */\ndefine fluent function seriesPrimary(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Primary series' )"
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMeningococcalEncounterElements"
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
      "display" : "Value set Meningococcal vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "Meningococcal dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Meningococcal dose 1 Create",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine1Dose",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeningococcalMenAConjugateVaccine1Dose",
  "title" : "IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule",
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
  "description" : "IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule\nMenA conjugate vaccine, 1-dose schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic"],
  "action" : [{
    "title" : "Meningococcal dose 1",
    "description" : "Provision of the meningococcal dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Meningococcal dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Meningococcal dose 1"
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
        "expression" : "Meningococcal dose 1 Create"
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
