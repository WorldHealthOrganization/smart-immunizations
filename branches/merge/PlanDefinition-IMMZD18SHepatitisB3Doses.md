# IMMZ.D18.S.Hepatitis B.3-dose schedule - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Hepatitis B.3-dose schedule**

## PlanDefinition: IMMZ.D18.S.Hepatitis B.3-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisB3Doses | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SHepatitisB3Doses |

 
IMMZ.D18.S.Hepatitis B.3-dose schedule 3-dose schedule (birth dose + 2 primary series doses), on-time start 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Hepatitis B.3-dose schedule](PlanDefinition-IMMZD18SHepatitisB3Doses.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Hepatitis B.3-dose schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-31 13:54:17+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Hepatitis B.3-dose schedule 3-dose schedule (birth dose + 2 primary series doses), on-time start
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SHepatitisB3DosesLogic](Library-IMMZD18SHepatitisB3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHepatitisB3Doses",
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
        "valueString" : "One hepatitis B primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One hepatitis B primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One hepatitis B primary series dose was administered-131\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n*/\ndefine \"One hepatitis B primary series dose was administered\":\n  \"Number of Hepatitis B Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "First hepatitis B dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First hepatitis B dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 1\n*/\ndefine \"First hepatitis B dose from the primary series was administered\":\n  Encounter.\"One hepatitis B primary series dose was administered\""
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
        "valueString" : "Two hepatitis B primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two hepatitis B primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two hepatitis B primary series doses were administered-131\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n*/\ndefine \"Two hepatitis B primary series doses were administered\":\n  \"Number of Hepatitis B Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was over 2000 g and was not a premature infant"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was over 2000 g and was not a premature infant\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 2\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\n*/\ndefine \"Second hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was over 2000 g and was not a premature infant\":\n  Encounter.\"Two hepatitis B primary series doses were administered\""
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
        "valueString" : "Three hepatitis B primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three hepatitis B primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three hepatitis B primary series doses were administered-131\n@decision: IMMZ.D2.DT.Hepatitis B.3 doses: 3-dose schedule (birth dose + 2 primary series doses), on-time start\n@decision: IMMZ.D2.DT.Hepatitis B.4 doses: 4-dose schedule (birth dose + 3 primary series doses), on-time start\n*/\ndefine \"Three hepatitis B primary series doses were administered\":\n  \"Number of Hepatitis B Primary Series Doses Administered\" = 3"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Third hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was less than 2000 g and was a premature infant"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Third hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was less than 2000 g and was a premature infant\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\n*/\ndefine \"Third hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was less than 2000 g and was a premature infant\":\n  Encounter.\"Three hepatitis B primary series doses were administered\""
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B dose 1\n@description: Provision of hepatitis B dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"Hepatitis B dose 1\":\n  not \"First hepatitis B dose from the primary series was administered\"\n    and not \"Second hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was over 2000 g and was not a premature infant\"\n    and not \"Third hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was less than 2000 g and was a premature infant\""
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
        "valueString" : "Birth weight in grams Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Birth weight in grams Observation\n*/\ndefine \"Birth weight in grams Observation\":\n  ([Observation: Concepts.\"Birth weight in grams\"] O\n    sort by end of effective.toInterval() desc).complete()"
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
        "valueString" : "Birth weight in grams Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Birth weight in grams Observation\n*/\ndefine \"Birth weight in grams Observation\":\n  Elements.\"Birth weight in grams Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Birth weight in grams Value"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Birth weight in grams Value\":\n  First(\"Birth weight in grams Observation\").value as FHIR.Quantity"
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
        "valueString" : "Birth weight in grams"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Birth weight in grams\":\n  \"Birth weight in grams Value\".value as FHIR.decimal"
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
        "valueString" : "Client's weight at birth was below 2000 g"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's weight at birth was below 2000 g\n@pseudocode: \"Birth weight in grams\" < 2000\n*/\ndefine \"Client's weight at birth was below 2000 g\":\n  \"Birth weight in grams\" < 2000"
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
        "valueString" : "Preterm birth Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Preterm birth Observation\n*/\ndefine \"Preterm birth Observation\":\n  ([Observation: Concepts.\"Preterm birth\"]).complete()"
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
        "valueString" : "Preterm birth Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Preterm birth Observation\n*/\ndefine \"Preterm birth Observation\":\n  Elements.\"Preterm birth Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Client was a premature infant at birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client was a premature infant at birth\n@pseudocode: \"Preterm birth\" =  TRUE\n*/\ndefine \"Client was a premature infant at birth\":\n  exists( \"Preterm birth Observation\" O where O.value = true )"
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
        "valueInteger" : 21
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B dose 3\n@description: Provision of hepatitis B dose 3 for low-birth-weight and premature infants\n@trigger: Second hepatitis B dose from the primary series was administered. Client's weight at birth was less than 2000 g or client was a premature infant\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") = 2 and (\"Birth weight in grams\" < 2000) or (\"Preterm birth\" = TRUE)\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\n*/\ndefine \"Hepatitis B dose 3\":\n  \"Second hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was over 2000 g and was not a premature infant\"\n    and not \"Third hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was less than 2000 g and was a premature infant\"\n    and (\n      Encounter.\"Client's weight at birth was below 2000 g\"\n      or Encounter.\"Client was a premature infant at birth\"\n    )"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B dose 2\n@description: Provision of hepatitis B dose 2\n@trigger: First hepatitis B dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 1\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\n*/\ndefine \"Hepatitis B dose 2\":\n  \"First hepatitis B dose from the primary series was administered\"\n    and not \"Second hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was over 2000 g and was not a premature infant\"\n    and not \"Third hepatitis B dose from the primary series was administered. The primary series has been completed for client whose weight at birth was less than 2000 g and was a premature infant\""
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
        "valueString" : "Date of Latest Hepatitis B Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Hepatitis B Dose\n*/\ndefine \"Date of Latest Hepatitis B Dose\":\n  date from start of \"Hepatitis B Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 2 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Hepatitis B dose 2 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") + 4 weeks\n*/\ndefine \"Hepatitis B dose 2 Due Date\":\n  if \"Hepatitis B dose 2\" then Encounter.\"Date of Latest Hepatitis B Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 2 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B dose 2 Create\n@create: The following option is considered appropriate: a 3-dose schedule with the first dose (monovalent) being given at birth and the second and third (monovalent or as part of a combined vaccine) given at the same time as the first and third doses of DTP-containing vaccine.\nThe interval between doses should be at least 4 weeks.\n*/\ndefine \"Hepatitis B dose 2 Create\":\n  if \"Hepatitis B dose 2\"\n  then 'The following option is considered appropriate: a 3-dose schedule with the first dose (monovalent) being given at birth and the second and third (monovalent or as part of a combined vaccine) given at the same time as the first and third doses of DTP-containing vaccine.\nThe interval between doses should be at least 4 weeks.' + '\nDue Date: ' + ToString(\"Hepatitis B dose 2 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Hepatitis B dose 1 Due Date\n@pseudocode: \"Date of birth\" + Member States defined lower limit\n*/\ndefine \"Hepatitis B dose 1 Due Date\":\n  if \"Hepatitis B dose 1\" then Patient.birthDate + (Encounter.HepBLowerLimitWeeks * 1 weeks)\n  else null"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B dose 1 Create\n@create: The following option is considered appropriate: a 3-dose schedule with the first dose (monovalent) being given at birth and the second and third (monovalent or as part of a combined vaccine) given at the same time as the first and third doses of DTP-containing vaccine.\nThe interval between doses should be at least 4 weeks.\n*/\ndefine \"Hepatitis B dose 1 Create\":\n  if \"Hepatitis B dose 1\"\n  then 'The following option is considered appropriate: a 3-dose schedule with the first dose (monovalent) being given at birth and the second and third (monovalent or as part of a combined vaccine) given at the same time as the first and third doses of DTP-containing vaccine.\nThe interval between doses should be at least 4 weeks.' + '\nDue Date: ' + ToString(\"Hepatitis B dose 1 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 3 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Hepatitis B dose 3 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") + 4 weeks\n*/\ndefine \"Hepatitis B dose 3 Due Date\":\n  if \"Hepatitis B dose 3\" then Encounter.\"Date of Latest Hepatitis B Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SHepatitisB3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hepatitis B dose 3 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hepatitis B dose 3 Create\n@create: A birth dose of hepatitis B-containing vaccine can be given to low-birth-weight (< 2000 g) and premature infants. For these infants, the birth dose should not count as part of the primary 3-dose series; the 3 doses of the standard primary series should be given according to the national vaccination schedule.\n*/\ndefine \"Hepatitis B dose 3 Create\":\n  if \"Hepatitis B dose 3\"\n  then 'A birth dose of hepatitis B-containing vaccine can be given to low-birth-weight (< 2000 g) and premature infants. For these infants, the birth dose should not count as part of the primary 3-dose series; the 3 doses of the standard primary series should be given according to the national vaccination schedule.' + '\nDue Date: ' + ToString(\"Hepatitis B dose 3 Due Date\")\n  else ''"
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
        "valueString" : "toInterval"
      },
      {
        "url" : "statement",
        "valueString" : "/*\nFrom FHIRCommon 4.1.0:\n*/\n\n/*\n@description: Normalizes a value that is a choice of timing-valued types to an equivalent interval\n@comment: Normalizes a choice type of FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instance, FHIR.string, FHIR.Age, or FHIR.Range types\nto an equivalent interval. This selection of choice types is a superset of the majority of choice types that are used as possible\nrepresentations for timing-valued elements in FHIR, allowing this function to be used across any resource.\n\nThe input can be provided as a dateTime, Period, Timing, instant, string, Age, or Range.\nThe intent of this function is to provide a clear and concise mechanism to treat single\nelements that have multiple possible representations as intervals so that logic doesn't have to account\nfor the variability. More complex calculations (such as medication request period or dispense period\ncalculation) need specific guidance and consideration. That guidance may make use of this function, but\nthe focus of this function is on single element calculations where the semantics are unambiguous.\nIf the input is a dateTime, the result a DateTime Interval beginning and ending on that dateTime.\nIf the input is a Period, the result is a DateTime Interval.\nIf the input is a Timing, an error is raised indicating a single interval cannot be computed from a Timing.\nIf the input is an instant, the result is a DateTime Interval beginning and ending on that instant.\nIf the input is a string, an error is raised indicating a single interval cannot be computed from a string.\nIf the input is an Age, the result is a DateTime Interval beginning when the patient was the given Age,\nand ending immediately prior to when the patient was the given Age plus one year.\nIf the input is a Range, the result is a DateTime Interval beginning when the patient was the Age given\nby the low end of the Range, and ending immediately prior to when the patient was the Age given by the\nhigh end of the Range plus one year.\n\nNOTE: Due to the\ncomplexity of determining a single interval from a Timing or String type, this function will throw a run-time exception if it is used\nwith a Timing or String.\n*/\ndefine fluent function toInterval(choice Choice<FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instant, FHIR.string, FHIR.Age, FHIR.Range>):\n  case\n    when choice is FHIR.dateTime then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.dateTime), FHIRHelpers.ToDateTime(choice as FHIR.dateTime)]\n    when choice is FHIR.Period then\n      FHIRHelpers.ToInterval(choice as FHIR.Period)\n    when choice is FHIR.instant then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.instant), FHIRHelpers.ToDateTime(choice as FHIR.instant)]\n    when choice is FHIR.Age then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age) + 1 year)\n    when choice is FHIR.Range then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).low),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).high) + 1 year)\n    when choice is FHIR.Timing then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a Timing value is not supported')\n    when choice is FHIR.string then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported')\n    else\n      null as Interval<DateTime>\n  end"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueInteger" : 35
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
        "valueInteger" : 36
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
        "valueInteger" : 37
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
        "valueInteger" : 38
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
        "valueInteger" : 39
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
        "valueInteger" : 40
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
        "valueInteger" : 41
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
        "valueInteger" : 42
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
        "valueInteger" : 43
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
        "valueInteger" : 44
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
        "valueInteger" : 45
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
        "valueInteger" : 46
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
        "valueInteger" : 47
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
        "valueInteger" : 48
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
        "valueString" : "define function ToString(value ObservationStatus): value.value"
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
        "valueInteger" : 51
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
      "display" : "Library FHIRHelpers",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
    },
    {
      "type" : "depends-on",
      "display" : "Library HepatitisBElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBElements"
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
      "name" : "EncounterId",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "HepBLowerLimitWeeks",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "integer"
    },
    {
      "name" : "Hepatitis B dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Hepatitis B dose 3",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Hepatitis B dose 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Hepatitis B dose 2 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Hepatitis B dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Hepatitis B dose 3 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
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
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6"
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
          "code" : "DE211",
          "display" : "Birth weight in grams"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisB3Doses",
  "version" : "1.0.0",
  "name" : "IMMZD18SHepatitisB3Doses",
  "title" : "IMMZ.D18.S.Hepatitis B.3-dose schedule",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-31T13:54:17+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D18.S.Hepatitis B.3-dose schedule\n3-dose schedule (birth dose + 2 primary series doses), on-time start",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SHepatitisB3DosesLogic"],
  "action" : [{
    "title" : "Hepatitis B dose 1",
    "description" : "Provision of hepatitis B dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: The following option is considered appropriate: a 3-dose schedule with the first dose (monovalent) being given at birth and the second and third (monovalent or as part of a combined vaccine) given at the same time as the first and third doses of DTP-containing vaccine.\nThe interval between doses should be at least 4 weeks.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Hepatitis B dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Hepatitis B dose 1"
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
        "expression" : "Hepatitis B dose 1 Create"
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
    "title" : "Hepatitis B dose 2",
    "description" : "Provision of hepatitis B dose 2\nTrigger event: First hepatitis B dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\nCreate condition: The following option is considered appropriate: a 3-dose schedule with the first dose (monovalent) being given at birth and the second and third (monovalent or as part of a combined vaccine) given at the same time as the first and third doses of DTP-containing vaccine.\nThe interval between doses should be at least 4 weeks.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Hepatitis B dose 2",
        "language" : "text/cql-identifier",
        "expression" : "Hepatitis B dose 2"
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
        "expression" : "Hepatitis B dose 2 Create"
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
    "title" : "Hepatitis B dose 3",
    "description" : "Provision of hepatitis B dose 3 for low-birth-weight and premature infants\nTrigger event: Second hepatitis B dose from the primary series was administered. Client's weight at birth was less than 2000 g or client was a premature infant\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") = 2 and (\"Birth weight in grams\" < 2000) or (\"Preterm birth\" = TRUE)\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\nCreate condition: A birth dose of hepatitis B-containing vaccine can be given to low-birth-weight (< 2000 g) and premature infants. For these infants, the birth dose should not count as part of the primary 3-dose series; the 3 doses of the standard primary series should be given according to the national vaccination schedule.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Hepatitis B dose 3",
        "language" : "text/cql-identifier",
        "expression" : "Hepatitis B dose 3"
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
        "expression" : "Hepatitis B dose 3 Create"
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
