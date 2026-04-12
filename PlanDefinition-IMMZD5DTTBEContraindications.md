# IMMZ.D5.DT.TBE contraindications - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.TBE contraindications**

## PlanDefinition: IMMZ.D5.DT.TBE contraindications 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTTBEContraindications | *Version*:0.2.0 |
| Draft as of 2026-03-24 | *Computable Name*:IMMZD5DTTBEContraindications |

 
IMMZ.D5.DT.TBE contraindications IMMZ.D5.DT.TBE contraindications 

* **Actions: **: **Url: **
  * : [IMMZ.D5.DT.TBE contraindications](PlanDefinition-IMMZD5DTTBEContraindications.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D5.DT.TBE contraindications
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-24 11:36:08+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D5.DT.TBE contraindications IMMZ.D5.DT.TBE contraindications
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD5DTTBEContraindicationsLogic](Library-IMMZD5DTTBEContraindicationsLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD5DTTBEContraindications",
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
        "valueString" : "IMMZD5DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client is currently pregnant"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client is currently pregnant\n@pseudocode: \"Potential contraindications\" = \"Currently pregnant\"\n@code: The client is currently pregnant-52\n@decision: IMMZ.D5.DT.TBE contraindications\n*/\ndefine \"The client is currently pregnant\":\n  Encounter.\"The client is pregnant\""
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
        "valueString" : "IMMZD5DTTBEContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note Case 1\":\n  Encounter.\"The client is currently pregnant\""
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
        "valueString" : "CI Moderate to severe fever Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Moderate to severe fever\n*/\ndefine \"CI Moderate to severe fever Observation\":\n  \"Potential contraindications\" O\n    where O.value ~ Concepts.\"CI-Moderate to severe fever\""
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
        "valueString" : "CI Moderate to severe fever Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Observation for Moderate to severe fever\n*/\ndefine \"CI Moderate to severe fever Observation\":\n  Elements.\"CI Moderate to severe fever Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "CI Moderate to severe fever Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Moderate to severe fever\n*/\ndefine \"CI Moderate to severe fever Condition\":\n  [Condition: Concepts.\"CI-Moderate to severe fever\"]"
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
        "valueString" : "CI Moderate to severe fever Condition"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Condition for Moderate to severe fever\n*/\ndefine \"CI Moderate to severe fever Condition\":\n  Elements.\"CI Moderate to severe fever Condition\" C\n    where C.prevalenceInterval() includes Today"
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
        "valueString" : "The client has moderate to severe fever"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has moderate to severe fever\n@pseudocode: \"Potential contraindications\" = \"Moderate to severe fever\"\n*/\ndefine \"The client has moderate to severe fever\":\n  exists \"CI Moderate to severe fever Observation\"\n    or exists \"CI Moderate to severe fever Condition\""
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
        "valueString" : "IMMZD5DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client has moderate to severe fever"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client has moderate to severe fever\n@pseudocode: \"Potential contraindications\" = \"Moderate to severe fever\"\n@code: The client has moderate to severe fever-58\n@decision: IMMZ.D5.DT.TBE contraindications\n*/\ndefine \"The client has moderate to severe fever\":\n  Encounter.\"The client has moderate to severe fever\""
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
        "valueString" : "IMMZD5DTTBEContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note Case 2\":\n  Encounter.\"The client has moderate to severe fever\""
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
        "valueString" : "IMMZD5DTTBEContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note\":\n  \"Clinical judgement is required. Create a clinical note Case 1\"\n    or \"Clinical judgement is required. Create a clinical note Case 2\""
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
        "valueString" : "IMMZD5DTTBEContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note Guidance\n@guidance = Conduct a risk–benefit assessment considering the incidence of the disease, consider risks of vaccination and make a clinical judgement.\n@guidance = Consider postponing the vaccination if the client has fever > 38.5°C or other signs of serious disease. Consider risks of vaccination and make a clinical judgement.\n*/\ndefine \"Clinical judgement is required. Create a clinical note Guidance\":\n  case\n    when \"Clinical judgement is required. Create a clinical note Case 1\" then 'Conduct a risk–benefit assessment considering the incidence of the disease, consider risks of vaccination and make a clinical judgement.'\n    when \"Clinical judgement is required. Create a clinical note Case 2\" then 'Consider postponing the vaccination if the client has fever > 38.5°C or other signs of serious disease. Consider risks of vaccination and make a clinical judgement.'\n    else ''\n  end"
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
        "valueString" : "IMMZD5DTTBEContraindicationsLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Clinical judgement is required. Create a clinical note\" then \"Clinical judgement is required. Create a clinical note Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD5DTTBEContraindicationsLogic"
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
        "valueString" : "define function ToString(value ObservationStatus): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueInteger" : 28
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
        "valueInteger" : 29
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
        "valueInteger" : 30
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
        "valueInteger" : 31
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
        "valueInteger" : 32
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
        "valueInteger" : 33
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
        "valueInteger" : 34
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
        "valueInteger" : 35
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTTBEEncounterElements"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTTBEContraindications",
  "version" : "0.2.0",
  "name" : "IMMZD5DTTBEContraindications",
  "title" : "IMMZ.D5.DT.TBE contraindications",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-24T11:36:08+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D5.DT.TBE contraindications\nIMMZ.D5.DT.TBE contraindications",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD5DTTBEContraindicationsLogic"],
  "action" : [{
    "title" : "Check for Guidance for the patient regarding IMMZ.D5.DT.TBE contraindications.",
    "description" : "Show Guidance for the patient regarding IMMZ.D5.DT.TBE contraindications.",
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
