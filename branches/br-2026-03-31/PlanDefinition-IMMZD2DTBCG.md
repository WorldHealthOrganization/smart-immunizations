# IMMZ.D2.DT.BCG - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.BCG**

## PlanDefinition: IMMZ.D2.DT.BCG 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTBCG | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD2DTBCG |

 
IMMZ.D2.DT.BCG IMMZ.D2.DT.BCG 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.BCG](PlanDefinition-IMMZD2DTBCG.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.BCG
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-31 13:43:57+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.BCG IMMZ.D2.DT.BCG
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTBCGLogic](Library-IMMZD2DTBCGLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTBCG",
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
        "code" : "DE204",
        "display" : "HIV status"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE205",
        "display" : "HIV-positive"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE210",
        "display" : "Currently on ART"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE249",
        "display" : "Immunologically stable"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE246",
        "display" : "TB infection test result"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE248",
        "display" : "Negative"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE250",
        "display" : "Clinically well"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE247",
        "display" : "Positive"
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
        "valueString" : "IMMZD2DTBCGElements"
      },
      {
        "url" : "name",
        "valueString" : "BCG Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: BCG containing Doses Administered to Patient\n*/\ndefine \"BCG Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"BCG vaccines\""
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
        "valueString" : "IMMZD2DTBCGElements"
      },
      {
        "url" : "name",
        "valueString" : "BCG Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: BCG containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"BCG Primary Series Doses Administered to Patient\":\n  \"BCG Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "BCG Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: BCG containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"BCG Primary Series Doses Administered to Patient\":\n  BCGElements.\"BCG Primary Series Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of BCG Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of BCG Primary Series doses\n*/\ndefine \"Number of BCG Primary Series Doses Administered\":\n  Count(\"BCG Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No BCG primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No BCG primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"BCG vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No BCG primary series dose was administered-112\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"No BCG primary series dose was administered\":\n  \"Number of BCG Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than or equal to 28 days"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than or equal to 28 days\n@pseudocode: Today's date − \"Date of birth\" ≤ 28 days\n@code: Client's age is less than or equal to 28 days-40\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client's age is less than or equal to 28 days\":\n  Encounter.\"Current Patient Age In Days\" <= 28"
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
        "valueString" : "HIV status Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: HIV Status Observation\n*/\ndefine \"HIV status Observation\":\n  ([Observation: Concepts.\"HIV status\"]).complete()"
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
        "valueString" : "Client's HIV status is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is positive\n@pseudocode: \"HIV status\" = \"HIV-positive\"\n*/\ndefine \"Client's HIV status is positive\":\n  exists( (Elements.\"HIV status Observation\".encounterOrOnBefore(EncounterId, Today)) O\n    where O.value ~ Concepts.\"HIV-positive\" )"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's HIV status is negative or unknown"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is negative or unknown\n@pseudocode: \"HIV status\" ≠ \"HIV-positive\"\n*/\ndefine \"Client's HIV status is negative or unknown\":\n  not \"Client's HIV status is positive\""
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's HIV status is negative or unknown"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is negative or unknown\n@pseudocode: \"HIV status\" ≠ \"HIV-positive\"\n@code: Client's HIV status is negative or unknown-29\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client's HIV status is negative or unknown\":\n  Encounter.\"Client's HIV status is negative or unknown\""
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
        "valueString" : "Live Attenuated Vaccines"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n  @dataElement: Live attenuated vaccines\n*/\ndefine \"Live Attenuated Vaccines\":\n  \"Doses Administered to Patient\" I \n    where I.vaccineCode in Concepts.\"Live Attenuated\""
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
        "valueString" : "Live Attenuated Vaccines"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dataElement Live attenuated vaccines\n*/\ndefine \"Live Attenuated Vaccines\":\n  Elements.\"Live Attenuated Vaccines\" I\n    where I.occurrence.toInterval() same day or before Today"
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
        "valueString" : "No live vaccine was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No live vaccine was administered\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) IS NULL\n*/\ndefine \"No live vaccine was administered\":\n  not exists(\"Live Attenuated Vaccines\")"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No live vaccine was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No live vaccine was administered\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) IS NULL\n@code: No live vaccine was administered-90\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"No live vaccine was administered\":\n  Encounter.\"No live vaccine was administered\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for BCG vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for BCG vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for BCG vaccination Case 1\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is less than or equal to 28 days\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"No live vaccine was administered\""
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's HIV status is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is positive\n@pseudocode: \"HIV status\" = \"HIV-positive\"\n@code: Client's HIV status is positive-29\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client's HIV status is positive\":\n  Encounter.\"Client's HIV status is positive\""
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
        "valueString" : "Currently on ART Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Currently on ART Observation\n*/\ndefine \"Currently on ART Observation\":\n  ([Observation: Concepts.\"Currently on ART\"] O\n    sort by end of effective.toInterval() desc).complete()"
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
        "valueString" : "Currently on ART Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Currently on ART Observation\n*/\ndefine \"Currently on ART Observation\":\n  Elements.\"Currently on ART Observation\".encounterOrOnBefore(EncounterId, Today).mostRecent()"
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
        "valueString" : "Client is currently receiving antiretroviral therapy"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is currently receiving antiretroviral therapy\n@pseudocode: \"Currently on ART\" = TRUE\n*/\ndefine \"Client is currently receiving antiretroviral therapy\":\n  \"Currently on ART Observation\" is not null\n  and \"Currently on ART Observation\".value = true"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is currently receiving antiretroviral therapy"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is currently receiving antiretroviral therapy\n@pseudocode: \"Currently on ART\" = TRUE\n@code: Client is currently receiving antiretroviral therapy-25\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client is currently receiving antiretroviral therapy\":\n  Encounter.\"Client is currently receiving antiretroviral therapy\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Immunologically stable Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Immunologically stable Observation\n*/\ndefine \"Immunologically stable Observation\":\n  ([Observation: Concepts.\"Immunologically stable\"] O\n    sort by end of effective.toInterval() desc).complete()"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Immunologically stable Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Immunologically stable Observation\n*/\ndefine \"Immunologically stable Observation\":\n  Elements.\"Immunologically stable Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is immunologically stable"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is immunologically stable\n@pseudocode: \"Immunologically stable\" = TRUE\n*/\ndefine \"Client is immunologically stable\":\n  exists(\"Immunologically stable Observation\")\n  and First(\"Immunologically stable Observation\").value = true"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is immunologically stable"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is immunologically stable\n@pseudocode: \"Immunologically stable\" = TRUE\n@code: Client is immunologically stable-31\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client is immunologically stable\":\n  Encounter.\"Client is immunologically stable\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for BCG vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for BCG vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for BCG vaccination Case 2\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is less than or equal to 28 days\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is immunologically stable\"\n    and Encounter.\"No live vaccine was administered\""
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
        "valueString" : "Current Patient Age In Years"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in years\n */\ndefine \"Current Patient Age In Years\":\n  AgeInYearsAt(Today)"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is between 28 days and 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is between 28 days and 5 years\n@pseudocode: 28 days < Today's date − \"Date of birth\" < 5 years\n@code: Client's age is between 28 days and 5 years-50\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client's age is between 28 days and 5 years\":\n  28 < Encounter.\"Current Patient Age In Days\"\n  and Encounter.\"Current Patient Age In Years\" < 5"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "TB infection test result Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: TB infection test result Observation\n*/\ndefine \"TB infection test result Observation\":\n  ([Observation: Concepts.\"TB infection test result\"] O\n    sort by end of effective.toInterval() desc).complete()"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "TB infection test result Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Immunologically stable Observation\n*/\ndefine \"TB infection test result Observation\":\n  Elements.\"TB infection test result Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's TB infection test result is negative"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's TB infection test result is negative\n@pseudocode: \"TB infection test result\" = \"Negative\"\n*/\ndefine \"Client's TB infection test result is negative\":\n  exists(\"TB infection test result Observation\")\n  and First( \"TB infection test result Observation\" ).value ~ Concepts.\"TB-Negative\""
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's TB infection test result is negative"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's TB infection test result is negative\n@pseudocode: \"TB infection test result\" = \"Negative\"\n@code: Client's TB infection test result is negative-39\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client's TB infection test result is negative\":\n  Encounter.\"Client's TB infection test result is negative\""
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
        "valueString" : "Date of Latest Live Attenuated Vaccine"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dataElement Date and time of last live attenuated vaccine\n*/\ndefine \"Date of Latest Live Attenuated Vaccine\":\n  date from start of \"Live Attenuated Vaccines\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "Live vaccine was administered in the last 4 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Live vaccine was administered in the last 4 weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weeks\n*/\ndefine \"Live vaccine was administered in the last 4 weeks\":\n\t\"Date of Latest Live Attenuated Vaccine\" is not null \n    and duration in weeks between \"Date of Latest Live Attenuated Vaccine\" and Today < 4"
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
        "valueString" : "No live vaccine was administered in the last 4 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No live vaccine was administered in the last 4 weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks\n*/\ndefine \"No live vaccine was administered in the last 4 weeks\":\n  not(\"Live vaccine was administered in the last 4 weeks\")"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No live vaccine was administered in the last four weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No live vaccine was administered in the last four weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks\n@code: No live vaccine was administered in the last four weeks-92\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"No live vaccine was administered in the last four weeks\":\n  Encounter.\"No live vaccine was administered in the last 4 weeks\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for BCG vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for BCG vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for BCG vaccination Case 3\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client's TB infection test result is negative\"\n    and Encounter.\"No live vaccine was administered in the last four weeks\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Clinically well Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Clinically well Observation\n*/\ndefine \"Clinically well Observation\":\n  ([Observation: Concepts.\"Clinically well\"] O\n    sort by end of effective.toInterval() desc).complete()"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Clinically well Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Clinically well Observation\n*/\ndefine \"Clinically well Observation\":\n  Elements.\"Clinically well Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Client is clinically well"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is clinically well\n@pseudocode: \"Clinically well\" = TRUE\n*/\ndefine \"Client is clinically well\":\n  exists(\"Clinically well Observation\")  \n  and First( \"Clinically well Observation\" ).value = true"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is clinically well"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is clinically well\n@pseudocode: \"Clinically well\" = TRUE\n@code: Client is clinically well-24\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client is clinically well\":\n  Encounter.\"Client is clinically well\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for BCG vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for BCG vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for BCG vaccination Case 4\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is immunologically stable\"\n    and Encounter.\"No live vaccine was administered in the last four weeks\"\n    and Encounter.\"Client is clinically well\""
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than 5 years\n@pseudocode: Today's date − \"Date of birth\" ≥ 5 years\n@code: Client's age is more than 5 years-40\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client's age is more than 5 years\":\n  Encounter.\"Current Patient Age In Years\" >= 5"
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for BCG vaccination Case 5"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for BCG vaccination Case 5\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for BCG vaccination Case 5\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client's TB infection test result is negative\"\n    and Encounter.\"No live vaccine was administered in the last four weeks\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for BCG vaccination Case 6"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for BCG vaccination Case 6\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for BCG vaccination Case 6\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is immunologically stable\"\n    and Encounter.\"No live vaccine was administered in the last four weeks\"\n    and Encounter.\"Client is clinically well\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for BCG vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for BCG vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for BCG vaccination\":\n  \"Client is due for BCG vaccination Case 1\"\n    or \"Client is due for BCG vaccination Case 2\"\n    or \"Client is due for BCG vaccination Case 3\"\n    or \"Client is due for BCG vaccination Case 4\"\n    or \"Client is due for BCG vaccination Case 5\"\n    or \"Client is due for BCG vaccination Case 6\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for BCG vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for BCG vaccination Guidance\n@guidance = Should vaccinate client with first BCG dose as no BCG dose was administered, client is within age range, HIV status is not positive and no live vaccine was administered.\nCheck for contraindications.\n@guidance = Should vaccinate client with first BCG dose as no BCG dose was administered, client is immunologically stable and no live vaccine was administered.\nCheck for contraindications.\n@guidance = Should vaccinate client with first BCG dose as no BCG dose was administered, client's TB test result is negative and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications.\n@guidance = Should vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. No live vaccine was administered in the last 4 weeks.\nCheck for contraindications.\n@guidance = Should vaccinate client with first BCG dose as no BCG dose was administered, client's TB test result is negative and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications.\n@guidance = Should vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. No live vaccine was administered in the past 4 weeks.\nCheck for contraindications\n*/\ndefine \"Client is due for BCG vaccination Guidance\":\n  case\n    when \"Client is due for BCG vaccination Case 1\" then 'Should vaccinate client with first BCG dose as no BCG dose was administered, client is within age range, HIV status is not positive and no live vaccine was administered.\nCheck for contraindications.'\n    when \"Client is due for BCG vaccination Case 2\" then 'Should vaccinate client with first BCG dose as no BCG dose was administered, client is immunologically stable and no live vaccine was administered.\nCheck for contraindications.'\n    when \"Client is due for BCG vaccination Case 3\" then 'Should vaccinate client with first BCG dose as no BCG dose was administered, client\\'s TB test result is negative and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications.'\n    when \"Client is due for BCG vaccination Case 4\" then 'Should vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. No live vaccine was administered in the last 4 weeks.\nCheck for contraindications.'\n    when \"Client is due for BCG vaccination Case 5\" then 'Should vaccinate client with first BCG dose as no BCG dose was administered, client\\'s TB test result is negative and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications.'\n    when \"Client is due for BCG vaccination Case 6\" then 'Should vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. No live vaccine was administered in the past 4 weeks.\nCheck for contraindications'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Live vaccine was administered in the last four weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Live vaccine was administered in the last four weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weeks\n@code: Live vaccine was administered in the last four weeks-92\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Live vaccine was administered in the last four weeks\":\n  Encounter.\"Live vaccine was administered in the last 4 weeks\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 1\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is less than or equal to 28 days\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Live vaccine was administered in the last four weeks\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 2\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is less than or equal to 28 days\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is immunologically stable\"\n    and Encounter.\"Live vaccine was administered in the last four weeks\""
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
        "valueString" : "Client is not immunologically stable"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is not immunologically stable\n@pseudocode: \"Immunologically stable\" = FALSE\n*/\ndefine \"Client is not immunologically stable\":\n  exists(\"Immunologically stable Observation\")\n  and First(\"Immunologically stable Observation\").value = false"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is not immunologically stable"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is not immunologically stable\n@pseudocode: \"Immunologically stable\" = FALSE\n@code: Client is not immunologically stable-32\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client is not immunologically stable\":\n  Encounter.\"Client is not immunologically stable\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 3\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is less than or equal to 28 days\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is not immunologically stable\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is currently not receiving antiretroviral therapy"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is currently not receiving antiretroviral therapy\n@pseudocode: \"Currently on ART\" = FALSE\n*/\ndefine \"Client is currently not receiving antiretroviral therapy\":\n  \"Currently on ART Observation\" is null\n  or \"Currently on ART Observation\".value = false"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is currently not receiving antiretroviral therapy"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is currently not receiving antiretroviral therapy\n@pseudocode: \"Currently on ART\" = FALSE\n@code: Client is currently not receiving antiretroviral therapy-26\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client is currently not receiving antiretroviral therapy\":\n  Encounter.\"Client is currently not receiving antiretroviral therapy\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 4\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is less than or equal to 28 days\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently not receiving antiretroviral therapy\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 5"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 5\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 5\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client's TB infection test result is negative\"\n    and Encounter.\"Live vaccine was administered in the last four weeks\""
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
        "valueString" : "Client's TB infection test result is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's TB infection test result is positive\n@pseudocode: \"TB infection test result\" = \"Positive\"\n*/\ndefine \"Client's TB infection test result is positive\":\n  exists(\"TB infection test result Observation\")\n  and First( \"TB infection test result Observation\" ).value ~ Concepts.\"TB-Positive\""
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's TB infection test result is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's TB infection test result is positive\n@pseudocode: \"TB infection test result\" = \"Positive\"\n@code: Client's TB infection test result is positive-39\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client's TB infection test result is positive\":\n  Encounter.\"Client's TB infection test result is positive\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 6"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 6\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 6\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client's TB infection test result is positive\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 7"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 7\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 7\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is not immunologically stable\""
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
        "valueString" : "Client is not clinically well"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is not clinically well\n@pseudocode: \"Clinically well\" = FALSE\n*/\ndefine \"Client is not clinically well\":\n  exists(\"Clinically well Observation\")  \n  and First( \"Clinically well Observation\" ).value = false"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is not clinically well"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is not clinically well\n@pseudocode: \"Clinically well\" = FALSE\n@code: Client is not clinically well-25\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client is not clinically well\":\n  Encounter.\"Client is not clinically well\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 8"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 8\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 8\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is not clinically well\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 9"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 9\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 9\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is immunologically stable\"\n    and Encounter.\"Live vaccine was administered in the last four weeks\"\n    and Encounter.\"Client is clinically well\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 10"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 10\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 10\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently not receiving antiretroviral therapy\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 11"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 11\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 11\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client's TB infection test result is negative\"\n    and Encounter.\"Live vaccine was administered in the last four weeks\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 12"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 12\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 12\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client's TB infection test result is positive\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 13"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 13\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 13\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is not immunologically stable\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 14"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 14\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 14\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is not clinically well\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 15"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 15\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 15\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently receiving antiretroviral therapy\"\n    and Encounter.\"Client is immunologically stable\"\n    and Encounter.\"Live vaccine was administered in the last four weeks\"\n    and Encounter.\"Client is clinically well\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Case 16"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Case 16\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination Case 16\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is positive\"\n    and Encounter.\"Client is currently not receiving antiretroviral therapy\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for BCG vaccination\":\n  \"Client is not due for BCG vaccination Case 1\"\n    or \"Client is not due for BCG vaccination Case 2\"\n    or \"Client is not due for BCG vaccination Case 3\"\n    or \"Client is not due for BCG vaccination Case 4\"\n    or \"Client is not due for BCG vaccination Case 5\"\n    or \"Client is not due for BCG vaccination Case 6\"\n    or \"Client is not due for BCG vaccination Case 7\"\n    or \"Client is not due for BCG vaccination Case 8\"\n    or \"Client is not due for BCG vaccination Case 9\"\n    or \"Client is not due for BCG vaccination Case 10\"\n    or \"Client is not due for BCG vaccination Case 11\"\n    or \"Client is not due for BCG vaccination Case 12\"\n    or \"Client is not due for BCG vaccination Case 13\"\n    or \"Client is not due for BCG vaccination Case 14\"\n    or \"Client is not due for BCG vaccination Case 15\"\n    or \"Client is not due for BCG vaccination Case 16\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for BCG vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for BCG vaccination Guidance\n@guidance = Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as client is not immunologically stable.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as ART has not been started.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.\n@guidance = Should not vaccinate client with first BCG dose as client's TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out).\n@guidance = Should not vaccinate client with first BCG dose as client is not immunologically stable.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as client is not clinically well.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as client is not currently receiving ART.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as client's TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out).\n@guidance = Should not vaccinate client with first BCG dose as client is not immnologically stable.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as client is not clinically well.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.\n@guidance = Should not vaccinate client with first BCG dose as client is not currently receiving ART.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.\n*/\ndefine \"Client is not due for BCG vaccination Guidance\":\n  case\n    when \"Client is not due for BCG vaccination Case 1\" then 'Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 2\" then 'Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 3\" then 'Should not vaccinate client with first BCG dose as client is not immunologically stable.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 4\" then 'Should not vaccinate client with first BCG dose as ART has not been started.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 5\" then 'Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.'\n    when \"Client is not due for BCG vaccination Case 6\" then 'Should not vaccinate client with first BCG dose as client\\'s TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out).'\n    when \"Client is not due for BCG vaccination Case 7\" then 'Should not vaccinate client with first BCG dose as client is not immunologically stable.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 8\" then 'Should not vaccinate client with first BCG dose as client is not clinically well.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 9\" then 'Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 10\" then 'Should not vaccinate client with first BCG dose as client is not currently receiving ART.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 11\" then 'Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 12\" then 'Should not vaccinate client with first BCG dose as client\\'s TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out).'\n    when \"Client is not due for BCG vaccination Case 13\" then 'Should not vaccinate client with first BCG dose as client is not immnologically stable.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 14\" then 'Should not vaccinate client with first BCG dose as client is not clinically well.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 15\" then 'Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.'\n    when \"Client is not due for BCG vaccination Case 16\" then 'Should not vaccinate client with first BCG dose as client is not currently receiving ART.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose.'\n    else ''\n  end"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's TB infection test result is unknown (test not done or no result yet)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's TB infection test result is unknown (test not done or no result yet)\n@pseudocode: \"TB infection test result\" IS NULL\n*/\ndefine \"Client's TB infection test result is unknown (test not done or no result yet)\":\n  not exists( \"TB infection test result Observation\" ) or (\n    not (\"Client's TB infection test result is negative\") and not (\"Client's TB infection test result is positive\")\n  )"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's TB infection test result is unknown (test not done or no result yet)"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's TB infection test result is unknown (test not done or no result yet)\n@pseudocode: \"TB infection test result\" IS NULL\n@code: Client's TB infection test result is unknown (test not done or no result yet)-34\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"Client's TB infection test result is unknown (test not done or no result yet)\":\n  Encounter.\"Client's TB infection test result is unknown (test not done or no result yet)\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create clinical note. Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create clinical note. Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create clinical note. Case 1\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is between 28 days and 5 years\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client's TB infection test result is unknown (test not done or no result yet)\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create clinical note. Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create clinical note. Case 2\n@pseudocode: '\"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create clinical note. Case 2\":\n  Encounter.\"No BCG primary series dose was administered\"\n    and Encounter.\"Client's age is more than 5 years\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client's TB infection test result is unknown (test not done or no result yet)\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create clinical note."
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create clinical note.\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create clinical note.\":\n  \"Clinical judgement is required. Create clinical note. Case 1\"\n    or \"Clinical judgement is required. Create clinical note. Case 2\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create clinical note. Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create clinical note. Guidance\n@guidance = Recommend the client to perform TB infection testing.\nRe-evaluate client once the test result is available.\n@guidance = Recommend the client to perform TB infection testing.\nRe-evaluate client once the test result is available.\n*/\ndefine \"Clinical judgement is required. Create clinical note. Guidance\":\n  case\n    when \"Clinical judgement is required. Create clinical note. Case 1\" then 'Recommend the client to perform TB infection testing.\nRe-evaluate client once the test result is available.'\n    when \"Clinical judgement is required. Create clinical note. Case 2\" then 'Recommend the client to perform TB infection testing.\nRe-evaluate client once the test result is available.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTBCGEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One BCG primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One BCG primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"BCG vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One BCG primary series dose was administered-112\n@decision: IMMZ.D2.DT.BCG\n*/\ndefine \"One BCG primary series dose was administered\":\n  \"Number of BCG Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "BCG immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: BCG immunization schedule is complete\n@pseudocode: '\"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"BCG vaccines\")\n*/\ndefine \"BCG immunization schedule is complete\":\n  Encounter.\"One BCG primary series dose was administered\""
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "BCG immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: BCG immunization schedule is complete Guidance\n@guidance: BCG immunization schedule is complete. One BCG primary series dose was administered.\nCheck for any vaccines due.\n*/\ndefine \"BCG immunization schedule is complete Guidance\":\n  'BCG immunization schedule is complete. One BCG primary series dose was administered.\nCheck for any vaccines due.'"
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
        "valueString" : "IMMZD2DTBCGLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is due for BCG vaccination\" then \"Client is due for BCG vaccination Guidance\"\n    when \"Client is not due for BCG vaccination\" then \"Client is not due for BCG vaccination Guidance\"\n    when \"Clinical judgement is required. Create clinical note.\" then \"Clinical judgement is required. Create clinical note. Guidance\"\n    when \"BCG immunization schedule is complete\" then \"BCG immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTBCGLogic"
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
        "valueInteger" : 85
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
        "valueInteger" : 86
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueInteger" : 90
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueInteger" : 99
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
        "valueInteger" : 100
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
        "valueInteger" : 101
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
        "valueInteger" : 102
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
        "valueInteger" : 103
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
        "valueString" : "define fluent function mostRecent(observations List<Observation>):\n  Last(\n    observations O\n      sort by issued\n  )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 104
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
        "valueInteger" : 105
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTBCGEncounterElements"
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
      "display" : "Library BCGElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTBCGElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
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
      "display" : "Code system IMMZD",
      "resource" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
    },
    {
      "type" : "depends-on",
      "display" : "Value set BCG vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Live Attenuated",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.LiveAttenuated"
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
      "name" : "Client is due for BCG vaccination",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    }],
    "dataRequirement" : [{
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["birthDate"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "occurrence", "protocolApplied"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      }]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["occurrence", "protocolApplied"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status",
      "isSubpotent",
      "vaccineCode",
      "occurrence",
      "protocolApplied"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      },
      {
        "path" : "vaccineCode",
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1"
      }]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status",
      "isSubpotent",
      "vaccineCode",
      "occurrence",
      "protocolApplied"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      },
      {
        "path" : "vaccineCode",
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.LiveAttenuated"
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "encounter", "effective", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE204",
          "display" : "HIV status"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["value", "encounter", "effective", "status"]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "encounter", "effective", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE210",
          "display" : "Currently on ART"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "encounter", "effective", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE249",
          "display" : "Immunologically stable"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "encounter", "effective", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE246",
          "display" : "TB infection test result"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "encounter", "effective", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE250",
          "display" : "Clinically well"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTBCG",
  "version" : "0.2.0",
  "name" : "IMMZD2DTBCG",
  "title" : "IMMZ.D2.DT.BCG",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.BCG\nIMMZ.D2.DT.BCG",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTBCGLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Neonates born to women of unknown HIV status should be vaccinated as the benefits of BCG \n    vaccination outweigh the risks. Neonates of unknown HIV status born to HIV-infected women should be \n    vaccinated if they have no clinical evidence suggestive of HIV infection."
    }],
    "title" : "Determine if the client is due for BCG.",
    "description" : "Determine if the client is due for BCG vaccine according to the national immunization protocol.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for BCG vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for BCG vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE1', display: 'BCG vaccines' } }, display: 'BCG vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.BCG.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.BCG.",
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
