# IMMZ.D5.DT.Rubella contraindications - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.Rubella contraindications**

## PlanDefinition: IMMZ.D5.DT.Rubella contraindications 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTRubellaContraindications | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD5DTRubellaContraindications |

 
IMMZ.D5.DT.Rubella contraindications IMMZ.D5.DT.Rubella contraindications 

* **Actions: **: **Url: **
  * : [IMMZ.D5.DT.Rubella contraindications](PlanDefinition-IMMZD5DTRubellaContraindications.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D5.DT.Rubella contraindications
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D5.DT.Rubella contraindications IMMZ.D5.DT.Rubella contraindications
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD5DTRubellaContraindicationsLogic](Library-IMMZD5DTRubellaContraindicationsLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD5DTRubellaContraindications",
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
        "code" : "DE162",
        "display" : "Currently pregnant"
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
        "system" : "http://loinc.org",
        "code" : "82810-3",
        "display" : "Pregnancy status"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA15173-0",
        "display" : "Pregnant"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE170",
        "display" : "Receiving blood products"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE168",
        "display" : "Symptomatic HIV infection"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE190",
        "display" : "TB disease"
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
        "code" : "DE164",
        "display" : "Exposed to immunosuppressive treatment"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE169",
        "display" : "Planning to get pregnant in the next month"
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
        "valueString" : "CI Currently pregnant Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for currently pregnant\n*/\ndefine \"CI Currently pregnant Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Currently pregnant\""
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
        "valueString" : "CI Currently pregnant Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for currently pregnant\n*/\ndefine \"CI Currently pregnant Observation\":\n  Elements.\"CI Currently pregnant Observation\" O\n    where O.encounter.references(EncounterId)\n      or O.effective.toInterval() starts same day or after Today - 9 months"
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
        "valueString" : "CI Currently pregnant Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for currently pregnant\n*/\ndefine \"CI Currently pregnant Condition\":\n  [Condition: Concepts.\"CI-Currently pregnant\"]"
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
        "valueString" : "CI Currently pregnant Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for currently pregnant\n*/\ndefine \"CI Currently pregnant Condition\":\n  Elements.\"CI Currently pregnant Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "WHOElements"
      },
      {
        "url" : "name",
        "valueString" : "Pregnancy Status Observation"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Pregnancy Status Observation\":\n  [Observation: Concepts.\"Pregnancy status\"] O\n    where O.status in { 'final', 'amended', 'corrected' }"
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
        "valueString" : "WHOElements"
      },
      {
        "url" : "name",
        "valueString" : "Pregnant Observation"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Pregnant Observation\":\n  \"Pregnancy Status Observation\" O\n    where O.value ~ Concepts.\"Pregnant\""
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
        "valueString" : "WHOEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Pregnant Observation"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Pregnant Observation\":\n  Elements.\"Pregnant Observation\" O\n    where O.encounter.references(EncounterId)\n      or O.effective.toInterval() starts same day or after AsOf - 9 months"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is pregnant"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is pregnant\n@pseudocode: \"Potential contraindications\" = \"Currently pregnant\"\n*/\ndefine \"The client is pregnant\":\n  exists \"CI Currently pregnant Observation\"\n  or exists \"CI Currently pregnant Condition\"\n  or exists WE.\"Pregnant Observation\""
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
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is currently pregnant"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is currently pregnant\n@pseudocode: \"Potential contraindications\" = \"Currently pregnant\"\n@code: The client is currently pregnant-52\n@decision: IMMZ.D5.DT.Rubella contraindications\n*/\ndefine \"The client is currently pregnant\":\n  Encounter.\"The client is pregnant\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination is contraindicated Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination is contraindicated Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rubella vaccination is contraindicated Case 1\":\n  Encounter.\"The client is currently pregnant\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Receiving blood products Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Receiving blood products\n*/\ndefine \"CI Receiving blood products Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Receiving blood products\""
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
        "valueString" : "CI Receiving blood products Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Receiving blood products\n*/\ndefine \"CI Receiving blood products Observation\":\n  Elements.\"CI Receiving blood products Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Receiving blood products Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Receiving blood products\n*/\ndefine \"CI Receiving blood products Condition\":\n  [Condition: Concepts.\"CI-Receiving blood products\"]"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Receiving blood products Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Receiving blood products\n*/\ndefine \"CI Receiving blood products Condition\":\n  Elements.\"CI Receiving blood products Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is receiving blood products"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is receiving blood products\n@pseudocode: \"Potential contraindications\" = \"Receiving blood products\"\n*/\ndefine \"The client is receiving blood products\":\n  exists \"CI Receiving blood products Observation\"\n    or exists \"CI Receiving blood products Condition\""
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
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is receiving blood products"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is receiving blood products\n@pseudocode: \"Potential contraindications\" = \"Receiving blood products\"\n@code: The client is receiving blood products-58\n@decision: IMMZ.D5.DT.Rubella contraindications\n*/\ndefine \"The client is receiving blood products\":\n  Encounter.\"The client is receiving blood products\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination is contraindicated Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination is contraindicated Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rubella vaccination is contraindicated Case 2\":\n  Encounter.\"The client is receiving blood products\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Symptomatic HIV infection Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Symptomatic HIV infection\n*/\ndefine \"CI Symptomatic HIV infection Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Symptomatic HIV infection\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Symptomatic HIV infection Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Symptomatic HIV infection\n*/\ndefine \"CI Symptomatic HIV infection Observation\":\n  Elements.\"CI Symptomatic HIV infection Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Symptomatic HIV infection Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Symptomatic HIV infection\n*/\ndefine \"CI Symptomatic HIV infection Condition\":\n  [Condition: Concepts.\"CI-Symptomatic HIV infection\"]"
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
        "valueString" : "CI Symptomatic HIV infection Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Symptomatic HIV infection\n*/\ndefine \"CI Symptomatic HIV infection Condition\":\n  Elements.\"CI Symptomatic HIV infection Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has a symptomatic HIV infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has a symptomatic HIV infection\n@pseudocode: \"Potential contraindications\" = \"Symptomatic HIV infection\"\n*/\ndefine \"The client has a symptomatic HIV infection\":\n  exists \"CI Symptomatic HIV infection Observation\"\n    or exists \"CI Symptomatic HIV infection Condition\""
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
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has symptomatic HIV infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has symptomatic HIV infection\n@pseudocode: \"Potential contraindications\" = \"Symptomatic HIV infection\"\n@code: The client has symptomatic HIV infection-59\n@decision: IMMZ.D5.DT.Rubella contraindications\n*/\ndefine \"The client has symptomatic HIV infection\":\n  Encounter.\"The client has a symptomatic HIV infection\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination is contraindicated Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination is contraindicated Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rubella vaccination is contraindicated Case 3\":\n  Encounter.\"The client has symptomatic HIV infection\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI TB disease Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for TB disease\n*/\ndefine \"CI TB disease Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-TB disease\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI TB disease Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for TB disease\n*/\ndefine \"CI TB disease Observation\":\n  Elements.\"CI TB disease Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI TB disease Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for TB disease\n*/\ndefine \"CI TB disease Condition\":\n  [Condition: Concepts.\"CI-TB disease\"]"
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
        "valueString" : "CI TB disease Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for TB disease\n*/\ndefine \"CI TB disease Condition\":\n  Elements.\"CI TB disease Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has TB disease"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has TB disease\n@pseudocode: \"Potential contraindications\" = \"TB disease\"\n*/\ndefine \"The client has TB disease\":\n  exists \"CI TB disease Observation\"\n    or exists \"CI TB disease Condition\""
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
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has TB disease"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has TB disease\n@pseudocode: \"Potential contraindications\" = \"TB disease\"\n@code: The client has TB disease-44\n@decision: IMMZ.D5.DT.Rubella contraindications\n*/\ndefine \"The client has TB disease\":\n  Encounter.\"The client has TB disease\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination is contraindicated Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination is contraindicated Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rubella vaccination is contraindicated Case 4\":\n  Encounter.\"The client has TB disease\""
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
        "valueInteger" : 32
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
        "valueInteger" : 33
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
        "valueInteger" : 34
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
        "valueString" : "The client has immunodeficiency syndromes"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has immunodeficiency syndromes\n@pseudocode: \"Potential contraindications\" = \"Immunodeficiency syndromes\"\n*/\ndefine \"The client has immunodeficiency syndromes\":\n  exists \"CI Immunodeficiency syndromes Observation\"\n    or exists \"CI Immunodeficiency syndromes Condition\""
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
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has immunodeficiency syndromes"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has immunodeficiency syndromes\n@pseudocode: \"Potential contraindications\" = \"Immunodeficiency syndromes\"\n@code: The client has immunodeficiency syndromes-60\n@decision: IMMZ.D5.DT.Rubella contraindications\n*/\ndefine \"The client has immunodeficiency syndromes\":\n  Encounter.\"The client has immunodeficiency syndromes\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination is contraindicated Case 5"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination is contraindicated Case 5\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rubella vaccination is contraindicated Case 5\":\n  Encounter.\"The client has immunodeficiency syndromes\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Exposed to immunosuppressive treatment Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Exposed to immunosuppressive treatment\n*/\ndefine \"CI Exposed to immunosuppressive treatment Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Exposed to immunosuppressive treatment\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Exposed to immunosuppressive treatment Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Exposed to immunosuppressive treatment\n*/\ndefine \"CI Exposed to immunosuppressive treatment Observation\":\n  Elements.\"CI Exposed to immunosuppressive treatment Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Exposed to immunosuppressive treatment Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Exposed to immunosuppressive treatment\n*/\ndefine \"CI Exposed to immunosuppressive treatment Condition\":\n  [Condition: Concepts.\"CI-Exposed to immunosuppressive treatment\"]"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Exposed to immunosuppressive treatment Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Exposed to immunosuppressive treatment\n*/\ndefine \"CI Exposed to immunosuppressive treatment Condition\":\n  Elements.\"CI Exposed to immunosuppressive treatment Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "The client is exposed to immunosuppressive treatment"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is exposed to immunosuppressive treatment\n@pseudocode: \"Potential contraindications\" = \"Exposed to immunosuppressive treatment\"\n*/\ndefine \"The client is exposed to immunosuppressive treatment\":\n  exists \"CI Exposed to immunosuppressive treatment Observation\"\n    or exists \"CI Exposed to immunosuppressive treatment Condition\""
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
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is exposed to immunosuppressive treatment"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is exposed to immunosuppressive treatment\n@pseudocode: \"Potential contraindications\" = \"Exposed to immunosuppressive treatment\"\n@code: The client is exposed to immunosuppressive treatment-72\n@decision: IMMZ.D5.DT.Rubella contraindications\n*/\ndefine \"The client is exposed to immunosuppressive treatment\":\n  Encounter.\"The client is exposed to immunosuppressive treatment\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination is contraindicated Case 6"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination is contraindicated Case 6\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rubella vaccination is contraindicated Case 6\":\n  Encounter.\"The client is exposed to immunosuppressive treatment\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination is contraindicated"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination is contraindicated\n@pseudocode: \"Immunization recommendation status\" = \"Contraindicated\"\n*/\ndefine \"Rubella vaccination is contraindicated\":\n  \"Rubella vaccination is contraindicated Case 1\"\n    or \"Rubella vaccination is contraindicated Case 2\"\n    or \"Rubella vaccination is contraindicated Case 3\"\n    or \"Rubella vaccination is contraindicated Case 4\"\n    or \"Rubella vaccination is contraindicated Case 5\"\n    or \"Rubella vaccination is contraindicated Case 6\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination is contraindicated Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination is contraindicated Guidance\n@guidance = Do not vaccinate client with rubella as rubella vaccination is contraindicated for pregnant client.\n@guidance = Do not vaccinate client with rubella as rubella vaccination is contraindicated until at least 3 months after stopping receiving blood products.\n@guidance = Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with symptomatic HIV infection.\n@guidance = Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with active TB.\n@guidance = Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with severe immunodeficiency.\n@guidance = Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients receiving or exposed to immunosuppressive therapy.\n*/\ndefine \"Rubella vaccination is contraindicated Guidance\":\n  case\n    when \"Rubella vaccination is contraindicated Case 1\" then 'Do not vaccinate client with rubella as rubella vaccination is contraindicated for pregnant client.'\n    when \"Rubella vaccination is contraindicated Case 2\" then 'Do not vaccinate client with rubella as rubella vaccination is contraindicated until at least 3 months after stopping receiving blood products.'\n    when \"Rubella vaccination is contraindicated Case 3\" then 'Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with symptomatic HIV infection.'\n    when \"Rubella vaccination is contraindicated Case 4\" then 'Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with active TB.'\n    when \"Rubella vaccination is contraindicated Case 5\" then 'Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with severe immunodeficiency.'\n    when \"Rubella vaccination is contraindicated Case 6\" then 'Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients receiving or exposed to immunosuppressive therapy.'\n    else ''\n  end"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Planning to get pregnant in the next month Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Planning to get pregnant in the next month\n*/\ndefine \"CI Planning to get pregnant in the next month Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Planning to get pregnant in the next month\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Planning to get pregnant in the next month Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Planning to get pregnant in the next month\n*/\ndefine \"CI Planning to get pregnant in the next month Observation\":\n  Elements.\"CI Planning to get pregnant in the next month Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "CI Planning to get pregnant in the next month Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Planning to get pregnant in the next month\n*/\ndefine \"CI Planning to get pregnant in the next month Condition\":\n  [Condition: Concepts.\"CI-Planning to get pregnant in the next month\"]"
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
        "valueString" : "CI Planning to get pregnant in the next month Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Planning to get pregnant in the next month\n*/\ndefine \"CI Planning to get pregnant in the next month Condition\":\n  Elements.\"CI Planning to get pregnant in the next month Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is planning to get pregnant in next month"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is planning to get pregnant in next month\n@pseudocode: \"Potential contraindications\" = \"Planning to get pregnant in the next month\"\n*/\ndefine \"The client is planning to get pregnant in next month\":\n  exists \"CI Planning to get pregnant in the next month Observation\"\n    or exists \"CI Planning to get pregnant in the next month Condition\""
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
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is planning to get pregnant in next month"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is planning to get pregnant in next month\n@pseudocode: \"Potential contraindications\" = \"Planning to get pregnant in the next month\"\n@code: The client is planning to get pregnant in next month-76\n@decision: IMMZ.D5.DT.Rubella contraindications\n*/\ndefine \"The client is planning to get pregnant in next month\":\n  Encounter.\"The client is planning to get pregnant in next month\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note\":\n  Encounter.\"The client is planning to get pregnant in next month\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Guidance\n@guidance: Discuss pregnancy intentions with client, consider risks of vaccination and make a clinical judgement. Clients planning a pregnancy are advised to avoid pregnancy for 1 month after rubella vaccination.\n*/\ndefine \"Clinical judgement is required. Create a clinical note Guidance\":\n  'Discuss pregnancy intentions with client, consider risks of vaccination and make a clinical judgement. Clients planning a pregnancy are advised to avoid pregnancy for 1 month after rubella vaccination.'"
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
        "valueString" : "CI Severe allergic reactions Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Severe allergic reactions\n*/\ndefine \"CI Severe allergic reactions Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Severe allergic reactions\""
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
        "valueString" : "CI Severe allergic reactions Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Severe allergic reactions\n*/\ndefine \"CI Severe allergic reactions Observation\":\n  Elements.\"CI Severe allergic reactions Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueInteger" : 58
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
        "valueInteger" : 59
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
        "valueInteger" : 60
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has history of severe allergic reactions"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has history of severe allergic reactions\n@pseudocode: \"Potential contraindications\" = \"Severe allergic reactions\"\n@code: The client has history of severe allergic reactions-59\n@decision: IMMZ.D5.DT.Rubella contraindications\n*/\ndefine \"The client has history of severe allergic reactions\":\n  Encounter.\"The client has history of severe allergic reactions\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note\":\n  Encounter.\"The client has history of severe allergic reactions\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance\n@guidance: Do not vaccinate client with rubella if client has experienced a severe allergic reaction after a previous vaccine dose or vaccine component.\n*/\ndefine \"Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance\":\n  'Do not vaccinate client with rubella if client has experienced a severe allergic reaction after a previous vaccine dose or vaccine component.'"
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Rubella vaccination is contraindicated\" then \"Rubella vaccination is contraindicated Guidance\"\n    when \"Clinical judgement is required. Create a clinical note\" then \"Clinical judgement is required. Create a clinical note Guidance\"\n    when \"Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note\" then \"Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance\" \n    else ''\n  end"
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
        "valueInteger" : 65
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
        "valueInteger" : 66
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD5DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Draft Medication Request for Rubella dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Draft Medication Request for Rubella dose\n*/\ndefine \"Draft Medication Request for Rubella dose\":\n  Encounter.\"Draft Medication Request for Patient\" MR\n    where MR.medication in Concepts.\"Rubella-containing vaccines\""
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Draft Medication Request ID for Rubella dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n  @dynamicValue: Draft Medication Request ID for Rubella dose\n  */\n  define \"Draft Medication Request ID for Rubella dose\":\n    First(Encounter.\"Draft Medication Request for Rubella dose\").id"
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
        "valueString" : "IMMZD5DTRubellaContraindicationsLogic"
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
        "valueInteger" : 69
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
        "valueInteger" : 70
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
        "valueInteger" : 71
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
        "valueInteger" : 72
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
        "valueInteger" : 73
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
        "valueInteger" : 74
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
        "valueInteger" : 75
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
        "valueInteger" : 76
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
        "valueInteger" : 77
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
        "valueInteger" : 78
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
        "valueInteger" : 79
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
        "valueInteger" : 80
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
        "valueInteger" : 81
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
        "valueString" : "define function ToString(value MedicationRequestIntent): value.value"
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
        "valueString" : "toInterval"
      },
      {
        "url" : "statement",
        "valueString" : "/*\nFrom FHIRCommon 4.1.0:\n*/\n\n/*\n@description: Normalizes a value that is a choice of timing-valued types to an equivalent interval\n@comment: Normalizes a choice type of FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instance, FHIR.string, FHIR.Age, or FHIR.Range types\nto an equivalent interval. This selection of choice types is a superset of the majority of choice types that are used as possible\nrepresentations for timing-valued elements in FHIR, allowing this function to be used across any resource.\n\nThe input can be provided as a dateTime, Period, Timing, instant, string, Age, or Range.\nThe intent of this function is to provide a clear and concise mechanism to treat single\nelements that have multiple possible representations as intervals so that logic doesn't have to account\nfor the variability. More complex calculations (such as medication request period or dispense period\ncalculation) need specific guidance and consideration. That guidance may make use of this function, but\nthe focus of this function is on single element calculations where the semantics are unambiguous.\nIf the input is a dateTime, the result a DateTime Interval beginning and ending on that dateTime.\nIf the input is a Period, the result is a DateTime Interval.\nIf the input is a Timing, an error is raised indicating a single interval cannot be computed from a Timing.\nIf the input is an instant, the result is a DateTime Interval beginning and ending on that instant.\nIf the input is a string, an error is raised indicating a single interval cannot be computed from a string.\nIf the input is an Age, the result is a DateTime Interval beginning when the patient was the given Age,\nand ending immediately prior to when the patient was the given Age plus one year.\nIf the input is a Range, the result is a DateTime Interval beginning when the patient was the Age given\nby the low end of the Range, and ending immediately prior to when the patient was the Age given by the\nhigh end of the Range plus one year.\n\nNOTE: Due to the\ncomplexity of determining a single interval from a Timing or String type, this function will throw a run-time exception if it is used\nwith a Timing or String.\n*/\ndefine fluent function toInterval(choice Choice<FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instant, FHIR.string, FHIR.Age, FHIR.Range>):\n  case\n    when choice is FHIR.dateTime then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.dateTime), FHIRHelpers.ToDateTime(choice as FHIR.dateTime)]\n    when choice is FHIR.Period then\n      FHIRHelpers.ToInterval(choice as FHIR.Period)\n    when choice is FHIR.instant then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.instant), FHIRHelpers.ToDateTime(choice as FHIR.instant)]\n    when choice is FHIR.Age then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age) + 1 year)\n    when choice is FHIR.Range then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).low),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).high) + 1 year)\n    when choice is FHIR.Timing then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a Timing value is not supported')\n    when choice is FHIR.string then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported')\n    else\n      null as Interval<DateTime>\n  end"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 87
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTRubellaEncounterElements"
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
      "display" : "Library WE",
      "resource" : "http://smart.who.int/immunizations/Library/WHOEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Library Common",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
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
      "display" : "Code system LOINC",
      "resource" : "http://loinc.org"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Rubella-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE17"
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
      "name" : "AsOf",
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
      "name" : "Draft Medication Request ID for Rubella dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "id"
    },
    {
      "name" : "Has Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Rubella vaccination is contraindicated",
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
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "value", "encounter", "effective"],
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
          "code" : "DE162",
          "display" : "Currently pregnant"
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
          "code" : "DE162",
          "display" : "Currently pregnant"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "82810-3",
          "display" : "Pregnancy status"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "status", "value"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "82810-3",
          "display" : "Pregnancy status"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "status", "value", "encounter", "effective"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "82810-3",
          "display" : "Pregnancy status"
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
          "code" : "DE170",
          "display" : "Receiving blood products"
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
          "code" : "DE170",
          "display" : "Receiving blood products"
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
          "code" : "DE168",
          "display" : "Symptomatic HIV infection"
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
          "code" : "DE168",
          "display" : "Symptomatic HIV infection"
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
          "code" : "DE190",
          "display" : "TB disease"
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
          "code" : "DE190",
          "display" : "TB disease"
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
          "code" : "DE164",
          "display" : "Exposed to immunosuppressive treatment"
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
          "code" : "DE164",
          "display" : "Exposed to immunosuppressive treatment"
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
          "code" : "DE169",
          "display" : "Planning to get pregnant in the next month"
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
          "code" : "DE169",
          "display" : "Planning to get pregnant in the next month"
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
          "code" : "DE170",
          "display" : "Receiving blood products"
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
          "code" : "DE168",
          "display" : "Symptomatic HIV infection"
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
          "code" : "DE190",
          "display" : "TB disease"
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
          "code" : "DE164",
          "display" : "Exposed to immunosuppressive treatment"
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
          "code" : "DE169",
          "display" : "Planning to get pregnant in the next month"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTRubellaContraindications",
  "version" : "0.2.0",
  "name" : "IMMZD5DTRubellaContraindications",
  "title" : "IMMZ.D5.DT.Rubella contraindications",
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
  "description" : "IMMZ.D5.DT.Rubella contraindications\nIMMZ.D5.DT.Rubella contraindications",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD5DTRubellaContraindicationsLogic"],
  "action" : [{
    "title" : "Check for contraindications before administering the vaccine(s) due",
    "description" : "Contraindication for rubella immunization",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Rubella vaccination is contraindicated",
        "language" : "text/cql-identifier",
        "expression" : "Rubella vaccination is contraindicated"
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
        "description" : "Draft Medication Request ID for Rubella dose",
        "language" : "text/cql-identifier",
        "expression" : "Draft Medication Request ID for Rubella dose"
      }
    },
    {
      "path" : "medication",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE17', display: 'Rubella-containing vaccines' } }, display: 'Rubella-containing vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D5.DT.Rubella contraindications.",
    "description" : "Show Guidance for the patient regarding IMMZ.D5.DT.Rubella contraindications.",
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
