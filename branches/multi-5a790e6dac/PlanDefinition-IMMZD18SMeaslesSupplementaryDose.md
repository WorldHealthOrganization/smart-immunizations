# IMMZ.D18.S.Measles.Supplementary dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Measles.Supplementary dose schedule**

## PlanDefinition: IMMZ.D18.S.Measles.Supplementary dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesSupplementaryDose | *Version*:0.2.0 |
| Draft as of 2026-04-03 | *Computable Name*:IMMZD18SMeaslesSupplementaryDose |

 
IMMZ.D18.S.Measles.Supplementary dose schedule Measles supplementary dose schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Measles.Supplementary dose schedule](PlanDefinition-IMMZD18SMeaslesSupplementaryDose.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Measles.Supplementary dose schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-03 22:35:55+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Measles.Supplementary dose schedule Measles supplementary dose schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SMeaslesSupplementaryDoseLogic](Library-IMMZD18SMeaslesSupplementaryDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeaslesSupplementaryDose",
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
        "code" : "DE203",
        "display" : "Completed the primary vaccination series"
      }
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
        "valueString" : "MCV Supplementary Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: MCV Supplementary Doses Administered to Patient\n*/\ndefine \"MCV Supplementary Doses Administered to Patient\":\n  \"MCV Doses Administered to Patient\".seriesSupplementary()"
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
        "valueString" : "MCV Supplementary Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: MCV Supplementary Doses Administered to Patient\n*/\ndefine \"MCV Supplementary Doses Administered to Patient\":\n  MeaslesElements.\"MCV Supplementary Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "Number of MCV Supplementary Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of MCV Supplementary Doses Administered\n*/\ndefine \"Number of MCV Supplementary Doses Administered\":\n  Count(\"MCV Supplementary Doses Administered to Patient\")"
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
        "valueString" : "Measles supplementary dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Measles supplementary dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Measles-containing vaccines\" and \"Type of dose\" = \"Supplementary dose\") = 1\n@code: Measles supplementary dose was administered-131\n@decision: IMMZ.D2.DT.Measles.Supplementary dose: Measles-containing vaccine (MCV) supplementary dose administration\n*/\ndefine \"Measles supplementary dose was administered\":\n  \"Number of MCV Supplementary Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SMeaslesSupplementaryDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "MCV supplementary dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: MCV supplementary dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Measles-containing vaccines\" and \"Type of dose\" = \"Supplementary dose\") = 1\n*/\ndefine \"MCV supplementary dose was administered\":\n  Encounter.\"Measles supplementary dose was administered\""
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
        "valueString" : "IMMZD2DTMeaslesElements"
      },
      {
        "url" : "name",
        "valueString" : "MCV Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: MCV Primary Series Doses Administered to Patient\n*/\ndefine \"MCV Primary Series Doses Administered to Patient\":\n  \"MCV Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "MCV Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: MCV Primary Series Doses Administered to Patient\n*/\ndefine \"MCV Primary Series Doses Administered to Patient\":\n  MeaslesElements.\"MCV Primary Series Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of MCV Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of MCV Primary Series Doses Administered\n*/\ndefine \"Number of MCV Primary Series Doses Administered\":\n  Count(\"MCV Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "MCV2 was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: MCV2 was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Measles-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: MCV2 was administered-127\n@decision: IMMZ.D2.DT.Measles.Ongoing transmission: Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)\n@decision: IMMZ.D2.DT.Measles.Low transmission: Countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)\n*/\ndefine \"MCV2 was administered\":\n  \"Number of MCV Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "MCV Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: MCV Doses Administered to Patient\n*/\ndefine \"MCV Doses Administered to Patient\":\n  MeaslesElements.\"MCV Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Completed the primary vaccination series Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Completed the primary vaccination series Observation\n*/\ndefine \"Completed the primary vaccination series Observation\":\n  ([Observation: Concepts.\"Completed the primary vaccination series\"]).complete()"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Completed the primary vaccination series Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Completed the primary vaccination series Observation\n*/\ndefine \"Completed the primary vaccination series Observation\":\n  Elements.\"Completed the primary vaccination series Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Measles routine immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Measles routine immunization schedule is complete\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Measles-containing vaccines\")\n@code: Measles routine immunization schedule is complete-104\n@decision: IMMZ.D2.DT.Measles.Supplementary dose: Measles-containing vaccine (MCV) supplementary dose administration\n*/\ndefine \"Measles routine immunization schedule is complete\":\n  \"MCV2 was administered\"\n  or\n  Coalesce(\n    \"MCV Doses Administered to Patient\" Dose\n    aggregate Result: Encounter.\"Completed the primary vaccination series Observation\".partOf.references(Dose) or Result,\n    false )"
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
        "valueString" : "IMMZD18SMeaslesSupplementaryDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Measles-containing vaccine (MCV) supplementary dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Measles-containing vaccine (MCV) supplementary dose\n@description: Provision of a MCV supplementary dose\n@trigger: Routine measles immunization schedule is complete\n@pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Measles-containing vaccines\") AND Member States defined logic for supplementary dose applied\n@triggerDate: \"Date when the primary vaccination series was completed\"\n*/\ndefine \"Measles-containing vaccine (MCV) supplementary dose\":\n  not \"MCV supplementary dose was administered\" and Encounter.\"Measles routine immunization schedule is complete\""
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
        "valueString" : "IMMZD2DTMeaslesEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date when the primary vaccination series completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date when the primary vaccination series completed\n*/\ndefine \"Date when the primary vaccination series completed\":\n  date from start of \"MCV Primary Series Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SMeaslesSupplementaryDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Measles-containing vaccine (MCV) supplementary dose Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Measles-containing vaccine (MCV) supplementary dose Due Date\n@pseudocode: \"Date when the primary vaccination series completed\" + 4 weeks\n*/\ndefine \"Measles-containing vaccine (MCV) supplementary dose Due Date\":\n  if \"Measles-containing vaccine (MCV) supplementary dose\" then Encounter.\"Date when the primary vaccination series completed\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SMeaslesSupplementaryDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Measles-containing vaccine (MCV) supplementary dose Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Measles-containing vaccine (MCV) supplementary dose Create\n@create: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.\n*/\ndefine \"Measles-containing vaccine (MCV) supplementary dose Create\":\n  if \"Measles-containing vaccine (MCV) supplementary dose\"\n  then 'Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.' + '\nDue Date: ' + ToString(\"Measles-containing vaccine (MCV) supplementary dose Due Date\")\n  else ''"
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
        "valueString" : "onOrBefore"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets immunizations on or before a date\n */\ndefine fluent function onOrBefore(immunizations List<Immunization>, beforeDate Date):\n  immunizations I where\n    I.occurrence.toInterval() same day or before beforeDate"
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
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "seriesSupplementary"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the Supplementary series\n */\ndefine fluent function seriesSupplementary(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Supplementary dose' )"
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
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueInteger" : 26
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
        "valueString" : "/*\n@description: Returns true if any of the given references are to the given resource\n@comment: Returns true if the `id` element of the given resource exactly equals the tail of any of the given references.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(references List<FHIR.Reference>, resource FHIR.Resource):\n  exists (references R where R.references(resource))"
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
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if the given reference is to the given resource\n@comment: Returns true if the `id` element of the given resource exactly equals the tail of the given reference.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(reference FHIR.Reference, resource FHIR.Resource):\n  resource.id = Last(Split(reference.reference, '/'))"
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
        "valueInteger" : 29
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
        "valueInteger" : 30
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ObservationStatus): value.value"
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
        "valueInteger" : 33
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
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
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
      "display" : "Code system IMMZD",
      "resource" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
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
      "name" : "EncounterId",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Measles-containing vaccine (MCV) supplementary dose Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Measles-containing vaccine (MCV) supplementary dose",
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
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE203",
          "display" : "Completed the primary vaccination series"
        }]
      }]
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
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE203",
          "display" : "Completed the primary vaccination series"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesSupplementaryDose",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeaslesSupplementaryDose",
  "title" : "IMMZ.D18.S.Measles.Supplementary dose schedule",
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
  "description" : "IMMZ.D18.S.Measles.Supplementary dose schedule\nMeasles supplementary dose schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SMeaslesSupplementaryDoseLogic"],
  "action" : [{
    "title" : "Measles-containing vaccine (MCV) supplementary dose",
    "description" : "Provision of a MCV supplementary dose\nTrigger event: Routine measles immunization schedule is complete\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Measles-containing vaccines\") AND Member States defined logic for supplementary dose applied\nTrigger date: \"Date when the primary vaccination series was completed\"\nCreate condition: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Measles-containing vaccine (MCV) supplementary dose",
        "language" : "text/cql-identifier",
        "expression" : "Measles-containing vaccine (MCV) supplementary dose"
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
        "expression" : "Measles-containing vaccine (MCV) supplementary dose Create"
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
