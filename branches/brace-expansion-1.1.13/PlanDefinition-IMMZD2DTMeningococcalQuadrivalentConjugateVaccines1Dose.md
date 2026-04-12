# IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose**

## PlanDefinition: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose |

 
IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose](PlanDefinition-IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic](Library-IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose",
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 2 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 2 years\n@pseudocode: Today's date − \"Date of birth\" < 2 years\n@code: Client's age is less than 2 years-40\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose: Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)\n*/\ndefine \"Client's age is less than 2 years\":\n  Encounter.\"Current Patient Age In Years\" < 2"
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
        "valueString" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for meningococcal vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for meningococcal vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for meningococcal vaccination\":\n  Encounter.\"Client's age is less than 2 years\""
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
        "valueString" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for meningococcal vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for meningococcal vaccination Guidance\n@guidance: Should not vaccinate client with first meningococcal dose as client's age is less than 2 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.\n*/\ndefine \"Client is not due for meningococcal vaccination Guidance\":\n  'Should not vaccinate client with first meningococcal dose as client\\'s age is less than 2 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.'"
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
        "valueInteger" : 6
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
        "valueInteger" : 7
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
        "valueInteger" : 8
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
        "valueInteger" : 9
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
        "valueString" : "Client's age is more than or equal to 2 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 2 years\n@pseudocode: Today's date − \"Date of birth\" ≥ 2 years\n@code: Client's age is more than or equal to 2 years-40\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose: Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule\n*/\ndefine \"Client's age is more than or equal to 2 years\":\n  Encounter.\"Current Patient Age In Years\" >= 2"
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
        "valueString" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for meningococcal vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for meningococcal vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for meningococcal vaccination\":\n  Encounter.\"No meningococcal primary series dose was administered\"\n    and Encounter.\"Client's age is more than or equal to 2 years\""
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
        "valueString" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for meningococcal vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for meningococcal vaccination Guidance\n@guidance: Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client's age is within appropriate age range.\nCheck for contraindications.\n*/\ndefine \"Client is due for meningococcal vaccination Guidance\":\n  'Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client\\'s age is within appropriate age range.\nCheck for contraindications.'"
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
        "valueInteger" : 13
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Meningococcal immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Meningococcal vaccines\") = TRUE\n*/\ndefine \"Meningococcal immunization schedule is complete\":\n  Encounter.\"One meningococcal primary series dose was administered\""
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
        "valueString" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Meningococcal immunization schedule is complete Guidance\n@guidance: Meningococcal immunization schedule is complete. One primary series dose was administered.\nCheck for any other vaccines due.\n*/\ndefine \"Meningococcal immunization schedule is complete Guidance\":\n  'Meningococcal immunization schedule is complete. One primary series dose was administered.\nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for meningococcal vaccination\" then \"Client is not due for meningococcal vaccination Guidance\"\n    when \"Client is due for meningococcal vaccination\" then \"Client is due for meningococcal vaccination Guidance\"\n    when \"Meningococcal immunization schedule is complete\" then \"Meningococcal immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
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
        "valueString" : "seriesPrimary"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the primary series\n */\ndefine fluent function seriesPrimary(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Primary series' )"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 23
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
      "name" : "Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Client is due for meningococcal vaccination",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose",
  "title" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose",
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
  "description" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose\nQuadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Quadrivalent conjugate vaccine A,C,W135,Y-CRM should be administered as one single intramuscular dose to individuals aged ≥ 2 years."
    }],
    "title" : "Determine if the client is due for Meningococcal.",
    "description" : "Determine if the client is due for Meningococcal vaccine according to the national immunization protocol.\nQuadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for meningococcal vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for meningococcal vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE10', display: 'Meningococcal vaccines' } }, display: 'Meningococcal vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose.",
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
