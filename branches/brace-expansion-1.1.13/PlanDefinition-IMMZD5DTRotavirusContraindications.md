# IMMZ.D5.DT.Rotavirus contraindications - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.Rotavirus contraindications**

## PlanDefinition: IMMZ.D5.DT.Rotavirus contraindications 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTRotavirusContraindications | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD5DTRotavirusContraindications |

 
IMMZ.D5.DT.Rotavirus contraindications IMMZ.D5.DT.Rotavirus contraindications 

* **Actions: **: **Url: **
  * : [IMMZ.D5.DT.Rotavirus contraindications](PlanDefinition-IMMZD5DTRotavirusContraindications.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D5.DT.Rotavirus contraindications
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D5.DT.Rotavirus contraindications IMMZ.D5.DT.Rotavirus contraindications
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD5DTRotavirusContraindicationsLogic](Library-IMMZD5DTRotavirusContraindicationsLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD5DTRotavirusContraindications",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "contained" : [{
    "resourceType" : "Library",
    "id" : "effective-data-requirements",
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE161",
        "display" : "Potential contraindications"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE196",
        "display" : "Prior history of intussusception"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "recurrence"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "relapse"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE187",
        "display" : "Immunodeficiency syndromes"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE167",
        "display" : "Severe allergic reactions"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE166",
        "display" : "History of anaphylactic reactions"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE197",
        "display" : "Altered immunocompetence"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE192",
        "display" : "Spina bifida"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE193",
        "display" : "Bladder exstrophy"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DEXXX",
        "display" : "Chronic gastrointestinal disease"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE194",
        "display" : "Acute gastroenteritis"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE195",
        "display" : "Moderate to severe fever"
      }
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Potential contraindications"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Potential contraindications observations\n*/\ndefine \"Potential contraindications\":\n  ([Observation: Concepts.\"Potential contraindications\"]).complete()"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Prior history of intussusception Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Prior history of intussusception\n*/\ndefine \"CI Prior history of intussusception Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Prior history of intussusception\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Prior history of intussusception Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Prior history of intussusception\n*/\ndefine \"CI Prior history of intussusception Observation\":\n  Elements.\"CI Prior history of intussusception Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "CI Prior history of intussusception Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Prior history of intussusception\n*/\ndefine \"CI Prior history of intussusception Condition\":\n  [Condition: Concepts.\"CI-Prior history of intussusception\"]"
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
        "valueString" : "CI Prior history of intussusception Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Prior history of intussusception\n*/\ndefine \"CI Prior history of intussusception Condition\":\n  Elements.\"CI Prior history of intussusception Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "The client has prior history of intussusception"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has prior history of intussusception\n@pseudocode: \"Potential contraindications\" = \"Prior history of intussusception\"\n*/\ndefine \"The client has prior history of intussusception\":\n  exists \"CI Prior history of intussusception Observation\"\n    or exists \"CI Prior history of intussusception Condition\""
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
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has prior history of intussusception"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has prior history of intussusception\n@pseudocode: \"Potential contraindications\" = \"Prior history of intussusception\"\n@code: The client has prior history of intussusception-66\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has prior history of intussusception\":\n  Encounter.\"The client has prior history of intussusception\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rotavirus vaccination is contraindicated Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rotavirus vaccination is contraindicated Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rotavirus vaccination is contraindicated Case 1\":\n  Encounter.\"The client has prior history of intussusception\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Immunodeficiency syndromes Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Immunodeficiency syndromes\n*/\ndefine \"CI Immunodeficiency syndromes Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Immunodeficiency syndromes\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Immunodeficiency syndromes Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Immunodeficiency syndromes\n*/\ndefine \"CI Immunodeficiency syndromes Observation\":\n  Elements.\"CI Immunodeficiency syndromes Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Immunodeficiency syndromes Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Immunodeficiency syndromes\n*/\ndefine \"CI Immunodeficiency syndromes Condition\":\n  [Condition: Concepts.\"CI-Immunodeficiency syndromes\"]"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Immunodeficiency syndromes Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Immunodeficiency syndromes\n*/\ndefine \"CI Immunodeficiency syndromes Condition\":\n  Elements.\"CI Immunodeficiency syndromes Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has immunodeficiency syndromes"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has immunodeficiency syndromes\n@pseudocode: \"Potential contraindications\" = \"Immunodeficiency syndromes\"\n*/\ndefine \"The client has immunodeficiency syndromes\":\n  exists \"CI Immunodeficiency syndromes Observation\"\n    or exists \"CI Immunodeficiency syndromes Condition\""
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
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has severe immunodeficiency"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has severe immunodeficiency\n@pseudocode: '\"Potential contraindications\" = \"Immunodeficiency syndromes\"\n@code: The client has severe immunodeficiency-61\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has severe immunodeficiency\":\n  Encounter.\"The client has immunodeficiency syndromes\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rotavirus vaccination is contraindicated Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rotavirus vaccination is contraindicated Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rotavirus vaccination is contraindicated Case 2\":\n  Encounter.\"The client has severe immunodeficiency\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rotavirus vaccination is contraindicated"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rotavirus vaccination is contraindicated\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rotavirus vaccination is contraindicated\":\n  \"Rotavirus vaccination is contraindicated Case 1\"\n    or \"Rotavirus vaccination is contraindicated Case 2\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rotavirus vaccination is contraindicated Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rotavirus vaccination is contraindicated Guidance\n@guidance = Do not vaccinate client with rotavirus as rotavirus vaccination is contraindicated for clients with prior history of intussusception.\n@guidance = Do not vaccinate client with rotavirus as rotavirus vaccincation is contraindicated for clients with severe immunodeficiency, including severe combined immunodeficiency.\n*/\ndefine \"Rotavirus vaccination is contraindicated Guidance\":\n  case\n    when \"Rotavirus vaccination is contraindicated Case 1\" then 'Do not vaccinate client with rotavirus as rotavirus vaccination is contraindicated for clients with prior history of intussusception.'\n    when \"Rotavirus vaccination is contraindicated Case 2\" then 'Do not vaccinate client with rotavirus as rotavirus vaccincation is contraindicated for clients with severe immunodeficiency, including severe combined immunodeficiency.'\n    else ''\n  end"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Severe allergic reactions Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Severe allergic reactions\n*/\ndefine \"CI Severe allergic reactions Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Severe allergic reactions\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Severe allergic reactions Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Severe allergic reactions\n*/\ndefine \"CI Severe allergic reactions Observation\":\n  Elements.\"CI Severe allergic reactions Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Severe allergic reactions Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Severe allergic reactions\n*/\ndefine \"CI Severe allergic reactions Condition\":\n  [Condition: Concepts.\"CI-Severe allergic reactions\"]"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Severe allergic reactions Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Severe allergic reactions\n*/\ndefine \"CI Severe allergic reactions Condition\":\n  Elements.\"CI Severe allergic reactions Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has history of severe allergic reactions"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has history of severe allergic reactions\n@pseudocode: \"Potential contraindications\" = \"Severe allergic reactions\"\n*/\ndefine \"The client has history of severe allergic reactions\":\n  exists \"CI Severe allergic reactions Observation\"\n    or exists \"CI Severe allergic reactions Condition\""
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
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has a history of severe allergic reactions"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has a history of severe allergic reactions\n@pseudocode: \"Potential contraindications\" = \"Severe allergic reactions\"\n@code: The client has a history of severe allergic reactions-59\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has a history of severe allergic reactions\":\n  Encounter.\"The client has history of severe allergic reactions\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 1\":\n  Encounter.\"The client has a history of severe allergic reactions\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI History of anaphylactic reactions Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for History of anaphylactic reactions\n*/\ndefine \"CI History of anaphylactic reactions Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-History of anaphylactic reactions\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI History of anaphylactic reactions Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for History of anaphylactic reactions\n*/\ndefine \"CI History of anaphylactic reactions Observation\":\n  Elements.\"CI History of anaphylactic reactions Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI History of anaphylactic reactions Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for History of anaphylactic reactions\n*/\ndefine \"CI History of anaphylactic reactions Condition\":\n  [Condition: Concepts.\"CI-History of anaphylactic reactions\"]"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI History of anaphylactic reactions Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for History of anaphylactic reactions\n*/\ndefine \"CI History of anaphylactic reactions Condition\":\n  Elements.\"CI History of anaphylactic reactions Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has history of anaphylactic reactions"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has history of anaphylactic reactions\n@pseudocode: \"Potential contraindications\" = \"History of anaphylactic reactions\"\n*/\ndefine \"The client has history of anaphylactic reactions\":\n  exists \"CI History of anaphylactic reactions Observation\"\n    or exists \"CI History of anaphylactic reactions Condition\""
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
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has history of anaphylactic reactions"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has history of anaphylactic reactions\n@pseudocode: \"Potential contraindications\" = \"History of anaphylactic reactions\"\n@code: The client has history of anaphylactic reactions-67\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has history of anaphylactic reactions\":\n  Encounter.\"The client has history of anaphylactic reactions\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 2\":\n  Encounter.\"The client has history of anaphylactic reactions\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note\":\n  \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 1\"\n    or \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 2\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance\n@guidance = Do not vaccinate client with rotavirus if client had severe allergic reactions to a previous rotavirus vaccine dose or rotavirus vaccine components.\nCheck if the client has no known severe hypersensitivity to rotavirus vaccines components.\n@guidance = Do not vaccinate client with rotavirus if client has history of anaphylactic reaction to a previous rotavirus vaccine dose or rotavirus vaccine components.\n*/\ndefine \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance\":\n  case\n    when \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 1\" then 'Do not vaccinate client with rotavirus if client had severe allergic reactions to a previous rotavirus vaccine dose or rotavirus vaccine components.\nCheck if the client has no known severe hypersensitivity to rotavirus vaccines components.'\n    when \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Case 2\" then 'Do not vaccinate client with rotavirus if client has history of anaphylactic reaction to a previous rotavirus vaccine dose or rotavirus vaccine components.'\n    else ''\n  end"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Altered immunocompetence Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Altered immunocompetence\n*/\ndefine \"CI Altered immunocompetence Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Altered immunocompetence\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Altered immunocompetence Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Altered immunocompetence\n*/\ndefine \"CI Altered immunocompetence Observation\":\n  Elements.\"CI Altered immunocompetence Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Altered immunocompetence Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Altered immunocompetence\n*/\ndefine \"CI Altered immunocompetence Condition\":\n  [Condition: Concepts.\"CI-Altered immunocompetence\"]"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Altered immunocompetence Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Altered immunocompetence\n*/\ndefine \"CI Altered immunocompetence Condition\":\n  Elements.\"CI Altered immunocompetence Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has altered immunocompetence"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has altered immunocompetence\n@pseudocode: \"Potential contraindications\" = \"Altered immunocompetence\"\n*/\ndefine \"The client has altered immunocompetence\":\n  exists \"CI Altered immunocompetence Observation\"\n    or exists \"CI Altered immunocompetence Condition\""
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
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has altered immunocompetence"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has altered immunocompetence\n@pseudocode: \"Potential contraindications\" = \"Altered immunocompetence\"\n@code: The client has altered immunocompetence-58\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has altered immunocompetence\":\n  Encounter.\"The client has altered immunocompetence\""
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
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note Case 1\":\n  Encounter.\"The client has altered immunocompetence\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Spina bifida Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Spina bifida\n*/\ndefine \"CI Spina bifida Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Spina bifida\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Spina bifida Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Spina bifida\n*/\ndefine \"CI Spina bifida Observation\":\n  Elements.\"CI Spina bifida Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Spina bifida Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Spina bifida\n*/\ndefine \"CI Spina bifida Condition\":\n  [Condition: Concepts.\"CI-Spina bifida\"]"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Spina bifida Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Spina bifida\n*/\ndefine \"CI Spina bifida Condition\":\n  Elements.\"CI Spina bifida Condition\" C\n    where C.prevalenceInterval() includes Today"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 43
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
        "valueString" : "The client has spina bifida"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has spina bifida\n@pseudocode: \"Potential contraindications\" = \"Spina bifida\"\n*/\ndefine \"The client has spina bifida\":\n  exists \"CI Spina bifida Observation\"\n    or exists \"CI Spina bifida Condition\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 44
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has spina bifida"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has spina bifida\n@pseudocode: \"Potential contraindications\" = \"Spina bifida\"\n@code: The client has spina bifida-46\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has spina bifida\":\n  Encounter.\"The client has spina bifida\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 45
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note Case 2\":\n  Encounter.\"The client has spina bifida\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 46
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
        "valueString" : "CI Bladder exstrophy Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Bladder exstrophy\n*/\ndefine \"CI Bladder exstrophy Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Bladder exstrophy\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 47
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
        "valueString" : "CI Bladder exstrophy Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Bladder exstrophy\n*/\ndefine \"CI Bladder exstrophy Observation\":\n  Elements.\"CI Bladder exstrophy Observation\".encounterOrOnBefore(EncounterId, Today)"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 48
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
        "valueString" : "CI Bladder exstrophy Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Bladder exstrophy\n*/\ndefine \"CI Bladder exstrophy Condition\":\n  [Condition: Concepts.\"CI-Bladder exstrophy\"]"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 49
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
        "valueString" : "CI Bladder exstrophy Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Bladder exstrophy\n*/\ndefine \"CI Bladder exstrophy Condition\":\n  Elements.\"CI Bladder exstrophy Condition\" C\n    where C.prevalenceInterval() includes Today"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 50
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
        "valueString" : "The client has bladder exstrophy"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has bladder exstrophy\n@pseudocode: \"Potential contraindications\" = \"Bladder exstrophy\"\n*/\ndefine \"The client has bladder exstrophy\":\n  exists \"CI Bladder exstrophy Observation\"\n    or exists \"CI Bladder exstrophy Condition\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 51
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has bladder exstrophy"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has bladder exstrophy\n@pseudocode: \"Potential contraindications\" = \"Bladder exstrophy\"\n@code: The client has bladder exstrophy-51\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has bladder exstrophy\":\n  Encounter.\"The client has bladder exstrophy\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 52
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note Case 3\":\n  Encounter.\"The client has bladder exstrophy\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 53
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
        "valueString" : "CI Chronic gastrointestinal disease Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Chronic gastrointestinal disease\n*/\ndefine \"CI Chronic gastrointestinal disease Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Chronic gastrointestinal disease\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 54
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
        "valueString" : "CI Chronic gastrointestinal disease Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Chronic gastrointestinal disease\n*/\ndefine \"CI Chronic gastrointestinal disease Observation\":\n  Elements.\"CI Chronic gastrointestinal disease Observation\".encounterOrOnBefore(EncounterId, Today)"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 55
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
        "valueString" : "CI Chronic gastrointestinal disease Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Chronic gastrointestinal disease\n*/\ndefine \"CI Chronic gastrointestinal disease Condition\":\n  [Condition: Concepts.\"CI-Chronic gastrointestinal disease\"]"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 56
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
        "valueString" : "CI Chronic gastrointestinal disease Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Chronic gastrointestinal disease\n*/\ndefine \"CI Chronic gastrointestinal disease Condition\":\n  Elements.\"CI Chronic gastrointestinal disease Condition\" C\n    where C.prevalenceInterval() includes Today"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 57
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
        "valueString" : "The client has chronic gastrointestinal disease"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has chronic gastrointestinal disease\n@pseudocode: \"Potential contraindications\" = \"Chronic gastrointestinal disease\"\n*/\ndefine \"The client has chronic gastrointestinal disease\":\n  exists \"CI Chronic gastrointestinal disease Observation\"\n    or exists \"CI Chronic gastrointestinal disease Condition\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 58
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has chronic gastrointestinal disease"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has chronic gastrointestinal disease\n@pseudocode: \"Potential contraindications\" = \"Chronic gastrointestinal disease\"\n@code: The client has chronic gastrointestinal disease-66\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has chronic gastrointestinal disease\":\n  Encounter.\"The client has chronic gastrointestinal disease\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 59
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note Case 4\":\n  Encounter.\"The client has chronic gastrointestinal disease\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 60
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
        "valueString" : "CI Acute gastroenteritis Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Acute gastroenteritis\n*/\ndefine \"CI Acute gastroenteritis Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Acute gastroenteritis\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 61
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
        "valueString" : "CI Acute gastroenteritis Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Acute gastroenteritis\n*/\ndefine \"CI Acute gastroenteritis Observation\":\n  Elements.\"CI Acute gastroenteritis Observation\".encounterOrOnBefore(EncounterId, Today)"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 62
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
        "valueString" : "CI Acute gastroenteritis Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Acute gastroenteritis\n*/\ndefine \"CI Acute gastroenteritis Condition\":\n  [Condition: Concepts.\"CI-Acute gastroenteritis\"]"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 63
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
        "valueString" : "CI Acute gastroenteritis Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Acute gastroenteritis\n*/\ndefine \"CI Acute gastroenteritis Condition\":\n  Elements.\"CI Acute gastroenteritis Condition\" C\n    where C.prevalenceInterval() includes Today"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 64
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
        "valueString" : "The client has acute gastroenteritis"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has acute gastroenteritis\n@pseudocode: \"Potential contraindications\" = \"Acute gastroenteritis\"\n*/\ndefine \"The client has acute gastroenteritis\":\n  exists \"CI Acute gastroenteritis Observation\"\n    or exists \"CI Acute gastroenteritis Condition\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 65
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has acute gastroenteritis"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has acute gastroenteritis\n@pseudocode: \"Potential contraindications\" = \"Acute gastroenteritis\"\n@code: The client has acute gastroenteritis-55\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has acute gastroenteritis\":\n  Encounter.\"The client has acute gastroenteritis\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 66
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Case 5"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Case 5\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note Case 5\":\n  Encounter.\"The client has acute gastroenteritis\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 67
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
        "valueString" : "CI Moderate to severe fever Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Moderate to severe fever\n*/\ndefine \"CI Moderate to severe fever Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Moderate to severe fever\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 68
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
        "valueString" : "CI Moderate to severe fever Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Moderate to severe fever\n*/\ndefine \"CI Moderate to severe fever Observation\":\n  Elements.\"CI Moderate to severe fever Observation\".encounterOrOnBefore(EncounterId, Today)"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 69
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
        "valueString" : "CI Moderate to severe fever Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Moderate to severe fever\n*/\ndefine \"CI Moderate to severe fever Condition\":\n  [Condition: Concepts.\"CI-Moderate to severe fever\"]"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 70
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
        "valueString" : "CI Moderate to severe fever Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Moderate to severe fever\n*/\ndefine \"CI Moderate to severe fever Condition\":\n  Elements.\"CI Moderate to severe fever Condition\" C\n    where C.prevalenceInterval() includes Today"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 71
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
        "valueString" : "The client has moderate to severe fever"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has moderate to severe fever\n@pseudocode: \"Potential contraindications\" = \"Moderate to severe fever\"\n*/\ndefine \"The client has moderate to severe fever\":\n  exists \"CI Moderate to severe fever Observation\"\n    or exists \"CI Moderate to severe fever Condition\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 72
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has moderate to severe fever"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has moderate to severe fever\n@pseudocode: \"Potential contraindications\" = \"Moderate to severe fever\"\n@code: The client has moderate to severe fever-58\n@decision: IMMZ.D5.DT.Rotavirus contraindications\n*/\ndefine \"The client has moderate to severe fever\":\n  Encounter.\"The client has moderate to severe fever\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 73
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Case 6"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Case 6\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note Case 6\":\n  Encounter.\"The client has moderate to severe fever\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 74
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note\":\n  \"Clinical judgement is required. Create a clinical note Case 1\"\n    or \"Clinical judgement is required. Create a clinical note Case 2\"\n    or \"Clinical judgement is required. Create a clinical note Case 3\"\n    or \"Clinical judgement is required. Create a clinical note Case 4\"\n    or \"Clinical judgement is required. Create a clinical note Case 5\"\n    or \"Clinical judgement is required. Create a clinical note Case 6\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 75
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Guidance\n@guidance = Client has altered immunocompetence other than severe combined immunodeficiency, consider risks of vaccination and make a judgement.\n@guidance = Client has spina bifida, consider risks of vaccination and make a judgement.\n@guidance = Client has bladder exstrophy, consider risks of vaccination and make a judgement.\n@guidance = Client has chronic gastrointestinal disease, consider risks of vaccination and make a judgement.\n@guidance = Client has acute gastroenteritis, consider risks of vaccination and make a judgement. Consider delaying rotavirus vaccination.\n@guidance = Client has moderate to severe fever, consider risks of vaccination and make a judgement. Consider delaying rotavirus vaccination.\n*/\ndefine \"Clinical judgement is required. Create a clinical note Guidance\":\n  case\n    when \"Clinical judgement is required. Create a clinical note Case 1\" then 'Client has altered immunocompetence other than severe combined immunodeficiency, consider risks of vaccination and make a judgement.'\n    when \"Clinical judgement is required. Create a clinical note Case 2\" then 'Client has spina bifida, consider risks of vaccination and make a judgement.'\n    when \"Clinical judgement is required. Create a clinical note Case 3\" then 'Client has bladder exstrophy, consider risks of vaccination and make a judgement.'\n    when \"Clinical judgement is required. Create a clinical note Case 4\" then 'Client has chronic gastrointestinal disease, consider risks of vaccination and make a judgement.'\n    when \"Clinical judgement is required. Create a clinical note Case 5\" then 'Client has acute gastroenteritis, consider risks of vaccination and make a judgement. Consider delaying rotavirus vaccination.'\n    when \"Clinical judgement is required. Create a clinical note Case 6\" then 'Client has moderate to severe fever, consider risks of vaccination and make a judgement. Consider delaying rotavirus vaccination.'\n    else ''\n  end"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 76
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Rotavirus vaccination is contraindicated\" then \"Rotavirus vaccination is contraindicated Guidance\"\n    when \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note\" then \"Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance\"\n    when \"Clinical judgement is required. Create a clinical note\" then \"Clinical judgement is required. Create a clinical note Guidance\" \n    else ''\n  end"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 77
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
        "valueString" : "Draft Medication Request for Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dataElement: Draft Medication Request for Patient\n*/\ndefine \"Draft Medication Request for Patient\":\n\t[MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal'\n\tsort by date from (authoredOn as FHIR.dateTime) desc"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 78
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
        "valueString" : "Draft Medication Request for Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dataElement: Draft Medication Request for Patient\n*/\ndefine \"Draft Medication Request for Patient\":\n  Elements.\"Draft Medication Request for Patient\" MR\n    where MR.encounter.references(EncounterId) \n      or MR.authoredOn.toInterval() same day or before Today\n  \tsort by date from (authoredOn as FHIR.dateTime) desc"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 79
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Draft Medication Request for Rotavirus dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Draft Medication Request for Rotavirus dose\n*/\ndefine \"Draft Medication Request for Rotavirus dose\":\n  Encounter.\"Draft Medication Request for Patient\" MR\n    where MR.medication in Concepts.\"Rotavirus vaccines\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 80
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Draft Medication Request ID for Rotavirus dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n  @dynamicValue: Draft Medication Request ID for Rotavirus dose\n  */\n  define \"Draft Medication Request ID for Rotavirus dose\":\n    First(Encounter.\"Draft Medication Request for Rotavirus dose\").id"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 81
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRotavirusContraindicationsLogic"
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
        "valueInteger" : 82
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
        "valueString" : "encounterOrOnBefore"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets observation from an encounter or on or before a date\n */\ndefine fluent function encounterOrOnBefore(observations List<Observation>, EncounterId String, beforeDate Date):\n  observations O where\n    (O.encounter.references(EncounterId)\n      or O.effective.toInterval() starts same day or before beforeDate)"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 83
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
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if the given reference is to the given resourceId\n@comment: Returns true if the `resourceId` parameter exactly equals the tail of the given reference.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(reference FHIR.Reference, resourceId String):\n  resourceId = Last(Split(reference.reference, '/'))"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 84
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
        "valueInteger" : 85
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
        "valueString" : "complete"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function complete(observations List<Observation>):\n  observations O where O.status in { 'final', 'amended', 'corrected' }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 86
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
        "valueString" : "define function ToString(value ObservationStatus): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 87
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
        "valueInteger" : 88
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
        "valueInteger" : 89
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
        "valueString" : "prevalenceInterval"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns an interval representing the normalized prevalence period of a given Condition resource.\n@comment: Uses the toInterval and toAbatementInterval functions to determine the widest potential interval from\nonset to abatement as specified in the given Condition.\n*/\ndefine fluent function prevalenceInterval(condition Condition):\nif condition.clinicalStatus ~ \"active\"\n  or condition.clinicalStatus ~ \"recurrence\"\n  or condition.clinicalStatus ~ \"relapse\" then\n  Interval[start of condition.onset.toInterval(), end of condition.abatementInterval()]\nelse\n  (end of condition.abatementInterval()) abatementDate\n    return \n\t  if abatementDate is null then\n        Interval[start of condition.onset.toInterval(), abatementDate)\n      else\n        Interval[start of condition.onset.toInterval(), abatementDate]"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 90
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
        "valueString" : "abatementInterval"
      },
      {
        "url" : "statement",
        "valueString" : "// Was getting error on this for this particular choice set not being found\n\n\n/*\n@description: Returns an interval representing the normalized Abatement of a given Condition resource.\n@comment: NOTE: Due to the complexity of determining an interval from a String, this function will throw\na run-time exception if used with a Condition instance that has a String as the abatement value.\n*/\ndefine fluent function abatementInterval(condition Condition):\n  if condition.abatement is FHIR.dateTime then\n    Interval[FHIRHelpers.ToDateTime(condition.abatement as FHIR.dateTime), FHIRHelpers.ToDateTime(condition.abatement as FHIR.dateTime)]\n  else if condition.abatement is FHIR.Period then\n    FHIRHelpers.ToInterval(condition.abatement as FHIR.Period)\n  else if condition.abatement is FHIR.string then\n    Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported')\n  else if condition.abatement is FHIR.Age then\n    Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(condition.abatement as FHIR.Age),\n      FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(condition.abatement as FHIR.Age) + 1 year)\n  else if condition.abatement is FHIR.Range then\n    Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((condition.abatement as FHIR.Range).low),\n      FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((condition.abatement as FHIR.Range).high) + 1 year)\n  else if condition.abatement is FHIR.boolean then\n    Interval[end of condition.onset.toInterval(), condition.recordedDate)\n  else \n    null"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 91
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
        "valueInteger" : 92
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
        "valueInteger" : 93
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
        "valueInteger" : 94
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
        "valueInteger" : 95
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
        "valueInteger" : 96
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
        "valueString" : "define function ToString(value MedicationRequestStatus): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 97
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
        "valueString" : "define function ToString(value MedicationRequestIntent): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 98
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
        "valueInteger" : 99
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
        "valueInteger" : 100
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTRotavirusEncounterElements"
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
      "display" : "Code system IMMZD",
      "resource" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
    },
    {
      "type" : "depends-on",
      "display" : "Code system ConditionClinicalStatusCodes",
      "resource" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Rotavirus vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE16"
    }],
    "parameter" : [{
      "name" : "EncounterId",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
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
      "name" : "Draft Medication Request ID for Rotavirus dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "id"
    },
    {
      "name" : "Rotavirus vaccination is contraindicated",
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
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE196",
          "display" : "Prior history of intussusception"
        }]
      }]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE196",
          "display" : "Prior history of intussusception"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE187",
          "display" : "Immunodeficiency syndromes"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE187",
          "display" : "Immunodeficiency syndromes"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE167",
          "display" : "Severe allergic reactions"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE167",
          "display" : "Severe allergic reactions"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE166",
          "display" : "History of anaphylactic reactions"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE166",
          "display" : "History of anaphylactic reactions"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE197",
          "display" : "Altered immunocompetence"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE197",
          "display" : "Altered immunocompetence"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE192",
          "display" : "Spina bifida"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE192",
          "display" : "Spina bifida"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE193",
          "display" : "Bladder exstrophy"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE193",
          "display" : "Bladder exstrophy"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DEXXX",
          "display" : "Chronic gastrointestinal disease"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DEXXX",
          "display" : "Chronic gastrointestinal disease"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE194",
          "display" : "Acute gastroenteritis"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE194",
          "display" : "Acute gastroenteritis"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE195",
          "display" : "Moderate to severe fever"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE195",
          "display" : "Moderate to severe fever"
        }]
      }]
    },
    {
      "type" : "MedicationRequest",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest"],
      "mustSupport" : ["status", "intent"]
    },
    {
      "type" : "MedicationRequest",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest"],
      "mustSupport" : ["status", "intent", "encounter", "authoredOn"]
    },
    {
      "type" : "MedicationRequest",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest"],
      "mustSupport" : ["status", "intent", "encounter", "authoredOn", "medication"]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE196",
          "display" : "Prior history of intussusception"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE187",
          "display" : "Immunodeficiency syndromes"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE167",
          "display" : "Severe allergic reactions"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE166",
          "display" : "History of anaphylactic reactions"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE197",
          "display" : "Altered immunocompetence"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE192",
          "display" : "Spina bifida"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE193",
          "display" : "Bladder exstrophy"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DEXXX",
          "display" : "Chronic gastrointestinal disease"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE194",
          "display" : "Acute gastroenteritis"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE161",
          "display" : "Potential contraindications"
        }]
      }]
    },
    {
      "type" : "Condition",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE195",
          "display" : "Moderate to severe fever"
        }]
      }]
    },
    {
      "type" : "MedicationRequest",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest"],
      "mustSupport" : ["status", "intent", "encounter", "authoredOn", "medication"]
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTRotavirusContraindications",
  "version" : "0.2.0",
  "name" : "IMMZD5DTRotavirusContraindications",
  "title" : "IMMZ.D5.DT.Rotavirus contraindications",
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
  "description" : "IMMZ.D5.DT.Rotavirus contraindications\nIMMZ.D5.DT.Rotavirus contraindications",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD5DTRotavirusContraindicationsLogic"],
  "action" : [{
    "title" : "Check for contraindications before administering the vaccine(s) due",
    "description" : "Contraindication for Rotavirus immunization",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Rotavirus vaccination is contraindicated",
        "language" : "text/cql-identifier",
        "expression" : "Rotavirus vaccination is contraindicated"
      }
    }],
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/action-type",
        "code" : "update"
      }]
    },
    "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD5DTMR",
    "dynamicValue" : [{
      "path" : "id",
      "expression" : {
        "description" : "Draft Medication Request ID for Rotavirus dose",
        "language" : "text/cql-identifier",
        "expression" : "Draft Medication Request ID for Rotavirus dose"
      }
    },
    {
      "path" : "medication",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE16', display: 'Rotavirus vaccines' } }, display: 'Rotavirus vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D5.DT.Rotavirus contraindications.",
    "description" : "Show Guidance for the patient regarding IMMZ.D5.DT.Rotavirus contraindications.",
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
