# IMMZ.D2.DT.Hepatitis B.3 doses - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Hepatitis B.3 doses**

## PlanDefinition: IMMZ.D2.DT.Hepatitis B.3 doses 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisB3Doses | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD2DTHepatitisB3Doses |

 
IMMZ.D2.DT.Hepatitis B.3 doses 3-dose schedule (birth dose + 2 primary series doses), on-time start 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Hepatitis B.3 doses](PlanDefinition-IMMZD2DTHepatitisB3Doses.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Hepatitis B.3 doses
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Hepatitis B.3 doses 3-dose schedule (birth dose + 2 primary series doses), on-time start
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTHepatitisB3DosesLogic](Library-IMMZD2DTHepatitisB3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTHepatitisB3Doses",
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
        "code" : "DE211",
        "display" : "Birth weight in grams"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE208",
        "display" : "Preterm birth"
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
        "valueString" : "IMMZD2DTHepatitisBElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis B containing Doses Administered to Patient\n*/\ndefine \"Hepatitis B Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Hepatitis B-containing vaccines\""
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
        "valueString" : "IMMZD2DTHepatitisBElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis B containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Hepatitis B Primary Series Doses Administered to Patient\":\n  \"Hepatitis B Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis B containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Hepatitis B Primary Series Doses Administered to Patient\":\n  HepatitisBElements.\"Hepatitis B Primary Series Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Hepatitis B Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Hepatitis B Primary Series doses\n*/\ndefine \"Number of Hepatitis B Primary Series Doses Administered\":\n  Count(\"Hepatitis B Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No hepatitis B primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No hepatitis B primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\"and \"Type of dose\" = \"Primary series\") = 0\n@code: No hepatitis B primary series doses were administered-130\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n*/\ndefine \"No hepatitis B primary series doses were administered\":\n  \"Number of Hepatitis B Primary Series Doses Administered\" = 0"
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
        "valueString" : "Current Patient Age In Weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in weeks\n */\ndefine \"Current Patient Age In Weeks\":\n  AgeInWeeksAt(Today)"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than {Member States defined lower limit}"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than {Member States defined lower limit}\n@pseudocode: Today's date − \"Date of birth\" < Member States defined lower limit\n@code: Client's age is less than {Member States defined lower limit}-66\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n*/\ndefine \"Client's age is less than {Member States defined lower limit}\":\n  Encounter.\"Current Patient Age In Weeks\" < HepBLowerLimitWeeks"
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for a hepatitis B vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for a hepatitis B vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for a hepatitis B vaccination Case 1\":\n  Encounter.\"No hepatitis B primary series doses were administered\"\n    and Encounter.\"Client's age is less than {Member States defined lower limit}\""
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One hepatitis B primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One hepatitis B primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One hepatitis B primary series dose was administered-131\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n*/\ndefine \"One hepatitis B primary series dose was administered\":\n  \"Number of Hepatitis B Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hepatitis B containing Doses Administered to Patient\n*/\ndefine \"Hepatitis B Doses Administered to Patient\":\n  HepatitisBElements.\"Hepatitis B Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Hepatitis B Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Hepatitis B Dose\n*/\ndefine \"Date of Latest Hepatitis B Dose\":\n  date from start of \"Hepatitis B Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest hepatitis B dose was administered less than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest hepatitis B dose was administered less than 4 weeks ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") < 4 weeks\n@code: The latest hepatitis B dose was administered less than 4 weeks ago-121\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.Delayed start: 3-dose schedule (no birth dose + 3 doses), delayed start\n*/\ndefine \"The latest hepatitis B dose was administered less than 4 weeks ago\":\n  \"Date of Latest Hepatitis B Dose\" is not null\n    and duration in weeks between \"Date of Latest Hepatitis B Dose\" and Today < 4"
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for a hepatitis B vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for a hepatitis B vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for a hepatitis B vaccination Case 2\":\n  Encounter.\"One hepatitis B primary series dose was administered\"\n    and Encounter.\"The latest hepatitis B dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two hepatitis B primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two hepatitis B primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two hepatitis B primary series doses were administered-131\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n*/\ndefine \"Two hepatitis B primary series doses were administered\":\n  \"Number of Hepatitis B Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Birth weight in grams Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Birth weight in grams Observation\n*/\ndefine \"Birth weight in grams Observation\":\n  ([Observation: Concepts.\"Birth weight in grams\"] O\n    sort by end of effective.toInterval() desc).complete()"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Birth weight in grams Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Birth weight in grams Observation\n*/\ndefine \"Birth weight in grams Observation\":\n  Elements.\"Birth weight in grams Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Birth weight in grams Value"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Birth weight in grams Value\":\n  First(\"Birth weight in grams Observation\").value as FHIR.Quantity"
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
        "valueString" : "Birth weight in grams"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Birth weight in grams\":\n  \"Birth weight in grams Value\".value as FHIR.decimal"
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
        "valueString" : "Client's weight at birth was below 2000 g"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's weight at birth was below 2000 g\n@pseudocode: \"Birth weight in grams\" < 2000\n*/\ndefine \"Client's weight at birth was below 2000 g\":\n  \"Birth weight in grams\" < 2000"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's weight at birth was below 2000 g"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's weight at birth was below 2000 g\n@pseudocode: \"Birth weight in grams\" < 2000\n@code: Client's weight at birth was below 2000 g-30\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n*/\ndefine \"Client's weight at birth was below 2000 g\":\n  Encounter.\"Client's weight at birth was below 2000 g\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for a hepatitis B vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for a hepatitis B vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for a hepatitis B vaccination Case 3\":\n  Encounter.\"Two hepatitis B primary series doses were administered\"\n    and Encounter.\"Client's weight at birth was below 2000 g\"\n    and Encounter.\"The latest hepatitis B dose was administered less than 4 weeks ago\""
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
        "valueString" : "Preterm birth Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Preterm birth Observation\n*/\ndefine \"Preterm birth Observation\":\n  ([Observation: Concepts.\"Preterm birth\"]).complete()"
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
        "valueString" : "Preterm birth Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Preterm birth Observation\n*/\ndefine \"Preterm birth Observation\":\n  Elements.\"Preterm birth Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Client was a premature infant at birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client was a premature infant at birth\n@pseudocode: \"Preterm birth\" =  TRUE\n*/\ndefine \"Client was a premature infant at birth\":\n  exists( \"Preterm birth Observation\" O where O.value = true )"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client was a premature infant at birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client was a premature infant at birth\n@pseudocode: \"Preterm birth\" = TRUE\n@code: Client was a premature infant at birth-22\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n*/\ndefine \"Client was a premature infant at birth\":\n  Encounter.\"Client was a premature infant at birth\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for a hepatitis B vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for a hepatitis B vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for a hepatitis B vaccination Case 4\":\n  Encounter.\"Two hepatitis B primary series doses were administered\"\n    and Encounter.\"Client was a premature infant at birth\"\n    and Encounter.\"The latest hepatitis B dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for a hepatitis B vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for a hepatitis B vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for a hepatitis B vaccination\":\n  \"Client is not due for a hepatitis B vaccination Case 1\"\n    or \"Client is not due for a hepatitis B vaccination Case 2\"\n    or \"Client is not due for a hepatitis B vaccination Case 3\"\n    or \"Client is not due for a hepatitis B vaccination Case 4\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for a hepatitis B vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for a hepatitis B vaccination Guidance\n@guidance = Should not vaccinate client with first hepatitis B dose as client's age is not within appropriate age range. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose.\n@guidance = Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose.\n@guidance = Should not vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B-containing vaccine was administered less than 4 weeks ago. \nCheck for any other vaccines due, and inform the caregiver of when to come back for the third dose.\n@guidance = Should not vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.\n*/\ndefine \"Client is not due for a hepatitis B vaccination Guidance\":\n  case\n    when \"Client is not due for a hepatitis B vaccination Case 1\" then 'Should not vaccinate client with first hepatitis B dose as client\\'s age is not within appropriate age range. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose.'\n    when \"Client is not due for a hepatitis B vaccination Case 2\" then 'Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose.'\n    when \"Client is not due for a hepatitis B vaccination Case 3\" then 'Should not vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B-containing vaccine was administered less than 4 weeks ago. \nCheck for any other vaccines due, and inform the caregiver of when to come back for the third dose.'\n    when \"Client is not due for a hepatitis B vaccination Case 4\" then 'Should not vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to {Member States defined lower limit}"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to {Member States defined lower limit}\n@pseudocode: Today's date − \"Date of birth\" ≥ Member States defined lower limit\n@code: Client's age is more than or equal to {Member States defined lower limit}-66\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n*/\ndefine \"Client's age is more than or equal to {Member States defined lower limit}\":\n  Encounter.\"Current Patient Age In Weeks\" >= HepBLowerLimitWeeks"
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for a hepatitis B vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for a hepatitis B vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for a hepatitis B vaccination Case 1\":\n  Encounter.\"No hepatitis B primary series doses were administered\"\n    and Encounter.\"Client's age is more than or equal to {Member States defined lower limit}\""
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest hepatitis B dose was administered more than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest hepatitis B dose was administered more than 4 weeks ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") ≥ 4 weeks\n@code: The latest hepatitis B dose was administered more than 4 weeks ago-121\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.Delayed start: 3-dose schedule (no birth dose + 3 doses), delayed start\n*/\ndefine \"The latest hepatitis B dose was administered more than 4 weeks ago\":\n  not(\"The latest hepatitis B dose was administered less than 4 weeks ago\")"
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for a hepatitis B vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for a hepatitis B vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for a hepatitis B vaccination Case 2\":\n  Encounter.\"One hepatitis B primary series dose was administered\"\n    and Encounter.\"The latest hepatitis B dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for a hepatitis B vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for a hepatitis B vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for a hepatitis B vaccination Case 3\":\n  Encounter.\"Two hepatitis B primary series doses were administered\"\n    and Encounter.\"Client's weight at birth was below 2000 g\"\n    and Encounter.\"The latest hepatitis B dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for a hepatitis B vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for a hepatitis B vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for a hepatitis B vaccination Case 4\":\n  Encounter.\"Two hepatitis B primary series doses were administered\"\n    and Encounter.\"Client was a premature infant at birth\"\n    and Encounter.\"The latest hepatitis B dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for a hepatitis B vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for a hepatitis B vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for a hepatitis B vaccination\":\n  \"Client is due for a hepatitis B vaccination Case 1\"\n    or \"Client is due for a hepatitis B vaccination Case 2\"\n    or \"Client is due for a hepatitis B vaccination Case 3\"\n    or \"Client is due for a hepatitis B vaccination Case 4\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for a hepatitis B vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for a hepatitis B vaccination Guidance\n@guidance = Should vaccinate client with first hepatitis B dose as client's age is within appropriate age range. \nCheck for contraindications.\n@guidance = Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered more than 4 weeks ago. \nCheck for contraindications.\n@guidance = Should vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B-containing vaccine administered more than 4 weeks ago. \nCheck for contraindications.\n@guidance = Should vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B dose was administered more than 4 weeks ago. \nCheck for contraindications.\n*/\ndefine \"Client is due for a hepatitis B vaccination Guidance\":\n  case\n    when \"Client is due for a hepatitis B vaccination Case 1\" then 'Should vaccinate client with first hepatitis B dose as client\\'s age is within appropriate age range. \nCheck for contraindications.'\n    when \"Client is due for a hepatitis B vaccination Case 2\" then 'Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered more than 4 weeks ago. \nCheck for contraindications.'\n    when \"Client is due for a hepatitis B vaccination Case 3\" then 'Should vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B-containing vaccine administered more than 4 weeks ago. \nCheck for contraindications.'\n    when \"Client is due for a hepatitis B vaccination Case 4\" then 'Should vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B dose was administered more than 4 weeks ago. \nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "Client's weight at birth was over 2000 g"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's weight at birth was over 2000 g\n@pseudocode: \"Birth weight in grams\"  ≥ 2000\n*/\ndefine \"Client's weight at birth was over 2000 g\":\n  \"Birth weight in grams\" >= 2000"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's weight at birth was over 2000 g"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's weight at birth was over 2000 g\n@pseudocode: \"Birth weight in grams\" ≥ 2000\n@code: Client's weight at birth was over 2000 g-30\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n*/\ndefine \"Client's weight at birth was over 2000 g\":\n  Encounter.\"Client's weight at birth was over 2000 g\""
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
        "valueString" : "Client was not a premature infant at birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client was not a premature infant at birth\n@pseudocode: \"Preterm birth\" ≠  TRUE\n*/\ndefine \"Client was not a premature infant at birth\":\n  not(\"Client was a premature infant at birth\")"
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client was not a premature infant at birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client was not a premature infant at birth\n@pseudocode: \"Preterm birth\" ≠ TRUE\n@code: Client was not a premature infant at birth-22\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n*/\ndefine \"Client was not a premature infant at birth\":\n  Encounter.\"Client was not a premature infant at birth\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B immunization schedule is complete Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B immunization schedule is complete Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\n*/\ndefine \"Hepatitis B immunization schedule is complete Case 1\":\n  Encounter.\"Two hepatitis B primary series doses were administered\"\n    and Encounter.\"Client's weight at birth was over 2000 g\"\n    and Encounter.\"Client was not a premature infant at birth\""
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
        "valueString" : "IMMZD2DTHepatitisBEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Three hepatitis B primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three hepatitis B primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three hepatitis B primary series doses were administered-131\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n*/\ndefine \"Three hepatitis B primary series doses were administered\":\n  \"Number of Hepatitis B Primary Series Doses Administered\" = 3"
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B immunization schedule is complete Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B immunization schedule is complete Case 2\n@pseudocode: '\"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\n*/\ndefine \"Hepatitis B immunization schedule is complete Case 2\":\n  Encounter.\"Three hepatitis B primary series doses were administered\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\n*/\ndefine \"Hepatitis B immunization schedule is complete\":\n  \"Hepatitis B immunization schedule is complete Case 1\"\n    or \"Hepatitis B immunization schedule is complete Case 2\""
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B immunization schedule is complete Guidance\n@guidance = Hepatitis B immunization schedule is complete for client whose weight at birth was over 2000 g and who was not premature infant. Two hepatitis B primary series doses were administered.\n@guidance = The hepatitis B immunization schedule is complete for client whose weight at birth was below 2000 g and who was a premature infant. Four hepatitis B primary series doses were administered. \nCheck for any other vaccines due.\n*/\ndefine \"Hepatitis B immunization schedule is complete Guidance\":\n  case\n    when \"Hepatitis B immunization schedule is complete Case 1\" then 'Hepatitis B immunization schedule is complete for client whose weight at birth was over 2000 g and who was not premature infant. Two hepatitis B primary series doses were administered.'\n    when \"Hepatitis B immunization schedule is complete Case 2\" then 'The hepatitis B immunization schedule is complete for client whose weight at birth was below 2000 g and who was a premature infant. Four hepatitis B primary series doses were administered. \nCheck for any other vaccines due.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for a hepatitis B vaccination\" then \"Client is not due for a hepatitis B vaccination Guidance\"\n    when \"Client is due for a hepatitis B vaccination\" then \"Client is due for a hepatitis B vaccination Guidance\"\n    when \"Hepatitis B immunization schedule is complete\" then \"Hepatitis B immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHepatitisB3DosesLogic"
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
        "valueInteger" : 47
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
        "valueInteger" : 48
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
        "valueInteger" : 49
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
        "valueInteger" : 50
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
        "valueInteger" : 51
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
        "valueInteger" : 52
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
        "valueInteger" : 53
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
        "valueInteger" : 54
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
        "valueInteger" : 55
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
        "valueString" : "ToDecimal"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDecimal(value decimal): value.value"
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
        "valueInteger" : 57
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
        "valueInteger" : 58
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
        "valueInteger" : 59
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
        "valueInteger" : 60
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBEncounterElements"
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
      "display" : "Library HepatitisBElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBElements"
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
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
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
      "display" : "Value set Hepatitis B-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "HepBLowerLimitWeeks",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "integer"
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
      "name" : "Client is due for a hepatitis B vaccination",
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
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE211",
          "display" : "Birth weight in grams"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE208",
          "display" : "Preterm birth"
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
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE211",
          "display" : "Birth weight in grams"
        }]
      }]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE208",
          "display" : "Preterm birth"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisB3Doses",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHepatitisB3Doses",
  "title" : "IMMZ.D2.DT.Hepatitis B.3 doses",
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
  "description" : "IMMZ.D2.DT.Hepatitis B.3 doses\n3-dose schedule (birth dose + 2 primary series doses), on-time start",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisB3DosesLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "The first and second (monovalent or as part of a combined vaccine) may given at the same time as the first and third \n  doses of diphtheria–tetanus–pertussis (DTP)-containing vaccine. The interval between doses should be at least 4 weeks."
    }],
    "title" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule",
    "description" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule\n3-dose schedule (birth dose + 2 primary series doses), on-time start",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for a hepatitis B vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for a hepatitis B vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE6', display: 'Hepatitis B-containing vaccines' } }, display: 'Hepatitis B-containing vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Hepatitis B.3 doses.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Hepatitis B.3 doses.",
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
