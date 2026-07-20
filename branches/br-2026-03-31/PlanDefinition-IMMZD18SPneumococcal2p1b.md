# IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule**

## PlanDefinition: IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPneumococcal2p1b | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SPneumococcal2p1b |

 
IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule 2 primary doses with a booster dose (2p+1) schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule](PlanDefinition-IMMZD18SPneumococcal2p1b.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-31 13:43:43+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule 2 primary doses with a booster dose (2p+1) schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SPneumococcal2p1bLogic](Library-IMMZD18SPneumococcal2p1bLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPneumococcal2p1b",
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
        "code" : "DE251",
        "display" : "At high risk for pneumococcal infection"
      }
    },
    {
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pneumococcal containing Doses Administered to Patient\n*/\ndefine \"Pneumococcal Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Pneumococcal vaccines\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pneumococcal containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Pneumococcal Primary Series Doses Administered to Patient\":\n  \"Pneumococcal Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Pneumococcal Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Pneumococcal Primary Series doses\n*/\ndefine \"Number of Pneumococcal Primary Series Doses Administered\":\n  Count(\"Pneumococcal Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One pneumococcal primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One pneumococcal primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"One pneumococcal primary series dose was administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "First pneumococcal dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First pneumococcal dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n*/\ndefine \"First pneumococcal dose from the primary series was administered\":\n  Encounter.\"One pneumococcal primary series dose was administered\""
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
        "valueInteger" : 7
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client's age is less than or equal to 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is less than or equal to 5 years\n@pseudocode: 'Today's date − \"Date of birth\" ≤ 5 years\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"The client's age is less than or equal to 5 years\":\n  Encounter.\"Current Patient Age In Years\" <= 5"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of First Pneumococcal Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date and time of first Pneumococcal dose\n*/\ndefine \"Date of First Pneumococcal Dose\":\n  date from start of \"Pneumococcal Doses Administered to Patient\".earliest().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The first pneumococcal dose was administered within 24 months post birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The first pneumococcal dose was administered within 24 months post birth\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months\n@decision: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"The first pneumococcal dose was administered within 24 months post birth\":\n  AgeInMonthsAt(\"Date of First Pneumococcal Dose\") < 24"
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
        "valueString" : "At high risk for pneumococcal infection Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: At high risk for pneumococcal infection Observation\n*/\ndefine \"At high risk for pneumococcal infection Observation\":\n  ([Observation: Concepts.\"At high risk for pneumococcal infection\"]).complete()"
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
        "valueString" : "At high risk for pneumococcal infection Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: At high risk for pneumococcal infection Observation\n*/\ndefine \"At high risk for pneumococcal infection Observation\":\n  Elements.\"At high risk for pneumococcal infection Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Client is at high risk for pneumococcal infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is at high risk for pneumococcal infection\n@pseudocode: \"At high risk for pneumococcal infection\" = TRUE\n*/\ndefine \"Client is at high risk for pneumococcal infection\":\n  exists( \"At high risk for pneumococcal infection Observation\" O where O.value = true )"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is at high risk for pneumococcal infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is at high risk for pneumococcal infection\n@pseudocode: \"At high risk for pneumococcal infection\" = TRUE\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"Client is at high risk for pneumococcal infection\":\n  Encounter.\"Client is at high risk for pneumococcal infection\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two pneumococcal primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two pneumococcal primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"Two pneumococcal primary series doses were administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second pneumococcal dose from the primary series was administered. The primary series has been completed."
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second pneumococcal dose from the primary series was administered. The primary series has been completed.\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\")\"\n*/\ndefine \"Second pneumococcal dose from the primary series was administered. The primary series has been completed.\":\n  Encounter.\"Two pneumococcal primary series doses were administered\""
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 2\n@description: Provision of the pneumococcal dose 2\n@trigger: First pneumococcal dose from the primary series was administered to the client, who is less than or equal to 5 years of age, either within 24 months of birth or if client is at high risk for pneumococcal infection\nToday's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND (\"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months OR \"At high risk for pneumococcal infection\" = TRUE\n@triggerDate: Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal dose 2\":\n  \"First pneumococcal dose from the primary series was administered\"\n  and Encounter.\"The client's age is less than or equal to 5 years\"\n  and (\n    Encounter.\"The first pneumococcal dose was administered within 24 months post birth\"\n    or Encounter.\"Client is at high risk for pneumococcal infection\"\n  )\n  and not \"Second pneumococcal dose from the primary series was administered. The primary series has been completed.\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pneumococcal containing Doses Administered to Patient that are in the Booster series\n*/\ndefine \"Pneumococcal Booster Series Doses Administered to Patient\":\n  \"Pneumococcal Doses Administered to Patient\".seriesBooster()"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Pneumococcal Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Pneumococcal Booster Series doses\n*/\ndefine \"Number of Pneumococcal Booster Series Doses Administered\":\n  Count(\"Pneumococcal Booster Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One pneumococcal booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One pneumococcal booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"One pneumococcal booster dose was administered\":\n  \"Number of Pneumococcal Booster Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Pneumococcal booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n*/\ndefine \"Pneumococcal booster dose was administered\":\n  Encounter.\"One pneumococcal booster dose was administered\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Pneumococcal Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date and time of last Pneumococcal dose\n*/\ndefine \"Date of Latest Pneumococcal Dose\":\n  date from start of \"Pneumococcal Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest pneumococcal dose was administered within 12 months post birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest pneumococcal dose was administered within 12 months post birth\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 12 months\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"The latest pneumococcal dose was administered within 12 months post birth\":\n  AgeInMonthsAt(\"Date of Latest Pneumococcal Dose\") < 12"
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
        "valueString" : "Current Patient Age In Months"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in months\n */\ndefine \"Current Patient Age In Months\":\n  AgeInMonthsAt(Today)"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client's age is less than 24 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is less than 24 months\n@pseudocode: Today's date − \"Date of birth\" < 24 months\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"The client's age is less than 24 months\":\n  Encounter.\"Current Patient Age In Months\" < 24"
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
        "valueString" : "HIV status Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: HIV Status Observation\n*/\ndefine \"HIV status Observation\":\n  ([Observation: Concepts.\"HIV status\"]).complete()"
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
        "valueString" : "Client's HIV status is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is positive\n@pseudocode: \"HIV status\" = \"HIV-positive\"\n*/\ndefine \"Client's HIV status is positive\":\n  exists( (Elements.\"HIV status Observation\".encounterOrOnBefore(EncounterId, Today)) O\n    where O.value ~ Concepts.\"HIV-positive\" )"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's HIV status is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is positive\n@pseudocode: \"HIV status\" = \"HIV-positive\"\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"Client's HIV status is positive\":\n  Encounter.\"Client's HIV status is positive\""
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
        "valueString" : "Preterm birth Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Preterm birth Observation\n*/\ndefine \"Preterm birth Observation\":\n  ([Observation: Concepts.\"Preterm birth\"]).complete()"
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
        "valueString" : "Preterm birth Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Preterm birth Observation\n*/\ndefine \"Preterm birth Observation\":\n  Elements.\"Preterm birth Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Client was a premature infant at birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client was a premature infant at birth\n@pseudocode: \"Preterm birth\" =  TRUE\n*/\ndefine \"Client was a premature infant at birth\":\n  exists( \"Preterm birth Observation\" O where O.value = true )"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client had preterm birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client had preterm birth\n@pseudocode: \"Preterm birth\" = TRUE\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"Client had preterm birth\":\n  Encounter.\"Client was a premature infant at birth\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two pneumococcal booster doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two pneumococcal booster doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\n@decision: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Two pneumococcal booster doses were administered\":\n  \"Number of Pneumococcal Booster Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second pneumococcal booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second pneumococcal booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\n*/\ndefine \"Second pneumococcal booster dose was administered\":\n  Encounter.\"Two pneumococcal booster doses were administered\""
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal second booster dose Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal second booster dose Expiration\n@pseudocode: \"Date of birth\" + 24 months\n*/\ndefine \"Pneumococcal second booster dose Expiration\":\n  Patient.birthDate + 24 months"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal second booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal second booster dose\n@description: Provision of another booster dose for HIV-positive infants and preterm neonates\n@trigger: The primary series has been completed and one booster dose was administered to the client, who is more than 12 months of age. The latest pneumococcal dose was administered within 12 months post birth. Client is either HIV positive or had a preterm birth\n'Today's date − \"Date of birth\" > 12 months AND \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\") AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1 AND Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 12 months AND (\"HIV status\" = \"HIV-positive\" OR \"Preterm birth\" = TRUE)\n@triggerDate: \"Date of birth\"\n*/\ndefine \"Pneumococcal second booster dose\":\n  \"Pneumococcal booster dose was administered\"\n  and Encounter.\"The latest pneumococcal dose was administered within 12 months post birth\"\n  and Encounter.\"The client's age is less than 24 months\"\n  and (\n    Encounter.\"Client's HIV status is positive\"\n    or Encounter.\"Client had preterm birth\"\n  )\n  and not \"Second pneumococcal booster dose was administered\"\n  and \"Pneumococcal second booster dose Expiration\" after day of Today"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal dose 2 Due Date\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") + 8 weeks\n*/\ndefine \"Pneumococcal dose 2 Due Date\":\n  if \"Pneumococcal dose 2\" then Encounter.\"Date of Latest Pneumococcal Dose\" + 8 weeks\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 2 Create\n@create: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago\n*/\ndefine \"Pneumococcal dose 2 Create\":\n  if \"Pneumococcal dose 2\" \n  then 'Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago' + '\nDue Date: ' + ToString(\"Pneumococcal dose 2 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal second booster dose Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal second booster dose Due Date\n@pseudocode: \"Date of birth\" + 12 months\n*/\ndefine \"Pneumococcal second booster dose Due Date\":\n  if \"Pneumococcal second booster dose\" then Patient.birthDate + 12 months\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal second booster dose Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal second booster dose Overdue\n@pseudocode: \"Date of birth\" + 24 months\n*/\ndefine \"Pneumococcal second booster dose Overdue\":\n  if \"Pneumococcal second booster dose\" then Patient.birthDate + 24 months\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal second booster dose Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal second booster dose Create\n@create: HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life\n*/\ndefine \"Pneumococcal second booster dose Create\":\n  if \"Pneumococcal second booster dose\" \n  then 'HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life' + '\nDue Date: ' + ToString(\"Pneumococcal second booster dose Due Date\") + '\nOverdue: ' + ToString(\"Pneumococcal second booster dose Overdue\") + '\nExpiration: ' + ToString(\"Pneumococcal second booster dose Expiration\")\n  else ''"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The first pneumococcal dose was administered within 12 months post birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The first pneumococcal dose was administered within 12 months post birth\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" < 12 months\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"The first pneumococcal dose was administered within 12 months post birth\":\n  AgeInMonthsAt(\"Date of First Pneumococcal Dose\") < 12"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal booster dose\n@description: Provision of the pneumococcal booster dose\n@trigger: Second pneumococcal dose from the primary series was administered and first pneumococcal dose was administered within 12 months post birth\nChild's birth AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2 AND (\"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" < 12 months\n@triggerDate: \"Date of birth\"\n*/\ndefine \"Pneumococcal booster dose\":\n  \"Second pneumococcal dose from the primary series was administered. The primary series has been completed.\"\n  and Encounter.\"The first pneumococcal dose was administered within 12 months post birth\"\n  and not \"Pneumococcal booster dose was administered\""
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal booster dose Due Date\n@pseudocode: \"Date of birth\" + 9 months\n*/\ndefine \"Pneumococcal booster dose Due Date\":\n  if \"Pneumococcal booster dose\" then Patient.birthDate + 9 months\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal booster dose Overdue\n@pseudocode: \"Date of birth\" + 18 months\n*/\ndefine \"Pneumococcal booster dose Overdue\":\n  if \"Pneumococcal booster dose\" then Patient.birthDate + 18 months\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal booster dose Create\n@create: Pneumococcal booster dose should be provided if the client has received the 2 previous doses\n*/\ndefine \"Pneumococcal booster dose Create\":\n  if \"Pneumococcal booster dose\" \n  then 'Pneumococcal booster dose should be provided if the client has received the 2 previous doses' + '\nDue Date: ' + ToString(\"Pneumococcal booster dose Due Date\") + '\nOverdue: ' + ToString(\"Pneumococcal booster dose Overdue\")\n  else ''"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No pneumococcal primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No pneumococcal primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@decision: 2 primary doses with a booster dose (2p+1)\n@decision: 3 primary doses (3p+0)\n*/\ndefine \"No pneumococcal primary series doses were administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 1\n@description: Provision of the pneumococcal dose 1\n@trigger: Child's birth\n@triggerDate: \"Date of birth\"\n@note: Decision table notes that it is a clinical decision once past 5 years.\n*/\ndefine \"Pneumococcal dose 1\":\n  Encounter.\"The client's age is less than or equal to 5 years\"\n  and Encounter.\"No pneumococcal primary series doses were administered\""
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal dose 1 Due Date\n@pseudocode: \"Date of birth\" + 6 weeks\n*/\ndefine \"Pneumococcal dose 1 Due Date\":\n  if \"Pneumococcal dose 1\" then Patient.birthDate + 6 weeks\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal2p1bLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 1 Create\n@create: Pneumococcal dose 1 should be provided if the client is older than 6 weeks\n*/\ndefine \"Pneumococcal dose 1 Create\":\n  if \"Pneumococcal dose 1\" \n  then 'Pneumococcal dose 1 should be provided if the client is older than 6 weeks' + '\nDue Date: ' + ToString(\"Pneumococcal dose 1 Due Date\")\n  else ''"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "toInterval"
      },
      {
        "url" : "statement",
        "valueString" : "/*\nFrom FHIRCommon 4.1.0:\n*/\n\n/*\n@description: Normalizes a value that is a choice of timing-valued types to an equivalent interval\n@comment: Normalizes a choice type of FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instance, FHIR.string, FHIR.Age, or FHIR.Range types\nto an equivalent interval. This selection of choice types is a superset of the majority of choice types that are used as possible\nrepresentations for timing-valued elements in FHIR, allowing this function to be used across any resource.\n\nThe input can be provided as a dateTime, Period, Timing, instant, string, Age, or Range.\nThe intent of this function is to provide a clear and concise mechanism to treat single\nelements that have multiple possible representations as intervals so that logic doesn't have to account\nfor the variability. More complex calculations (such as medication request period or dispense period\ncalculation) need specific guidance and consideration. That guidance may make use of this function, but\nthe focus of this function is on single element calculations where the semantics are unambiguous.\nIf the input is a dateTime, the result a DateTime Interval beginning and ending on that dateTime.\nIf the input is a Period, the result is a DateTime Interval.\nIf the input is a Timing, an error is raised indicating a single interval cannot be computed from a Timing.\nIf the input is an instant, the result is a DateTime Interval beginning and ending on that instant.\nIf the input is a string, an error is raised indicating a single interval cannot be computed from a string.\nIf the input is an Age, the result is a DateTime Interval beginning when the patient was the given Age,\nand ending immediately prior to when the patient was the given Age plus one year.\nIf the input is a Range, the result is a DateTime Interval beginning when the patient was the Age given\nby the low end of the Range, and ending immediately prior to when the patient was the Age given by the\nhigh end of the Range plus one year.\n\nNOTE: Due to the\ncomplexity of determining a single interval from a Timing or String type, this function will throw a run-time exception if it is used\nwith a Timing or String.\n*/\ndefine fluent function toInterval(choice Choice<FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instant, FHIR.string, FHIR.Age, FHIR.Range>):\n  case\n    when choice is FHIR.dateTime then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.dateTime), FHIRHelpers.ToDateTime(choice as FHIR.dateTime)]\n    when choice is FHIR.Period then\n      FHIRHelpers.ToInterval(choice as FHIR.Period)\n    when choice is FHIR.instant then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.instant), FHIRHelpers.ToDateTime(choice as FHIR.instant)]\n    when choice is FHIR.Age then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age) + 1 year)\n    when choice is FHIR.Range then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).low),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).high) + 1 year)\n    when choice is FHIR.Timing then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a Timing value is not supported')\n    when choice is FHIR.string then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported')\n    else\n      null as Interval<DateTime>\n  end"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueInteger" : 57
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
        "valueInteger" : 58
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueInteger" : 61
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
        "valueInteger" : 62
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
        "valueInteger" : 63
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
        "valueString" : "earliest"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function earliest(immunizations List<Immunization>):\n  First(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
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
        "valueInteger" : 65
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
        "valueInteger" : 66
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
        "valueInteger" : 67
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
        "valueInteger" : 68
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
        "valueString" : "seriesBooster"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the Booster series\n */\ndefine fluent function seriesBooster(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Booster dose' )"
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
        "valueString" : "mostRecent"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function mostRecent(immunizations List<Immunization>):\n  Last(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 70
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPneumococcalEncounterElements"
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
      "display" : "Value set Pneumococcal vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE13"
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
      "name" : "Pneumococcal dose 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Pneumococcal second booster dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Pneumococcal dose 2 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Pneumococcal second booster dose Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Pneumococcal booster dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Pneumococcal booster dose Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Pneumococcal dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Pneumococcal dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    }],
    "dataRequirement" : [{
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "protocolApplied", "occurrence"],
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
      "occurrence",
      "vaccineCode",
      "protocolApplied"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      },
      {
        "path" : "vaccineCode",
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE13"
      }]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["birthDate"]
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
      "mustSupport" : ["code", "encounter", "effective", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE251",
          "display" : "At high risk for pneumococcal infection"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPneumococcal2p1b",
  "version" : "0.2.0",
  "name" : "IMMZD18SPneumococcal2p1b",
  "title" : "IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-31T13:43:43+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule\n2 primary doses with a booster dose (2p+1) schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SPneumococcal2p1bLogic"],
  "action" : [{
    "title" : "Pneumococcal dose 1",
    "description" : "Provision of the pneumococcal dose 1\nTrigger event: Child's birth\nTrigger date: \"Date of birth\"\nCreate condition: Pneumococcal dose 1 should be provided if the client is older than 6 weeks",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Pneumococcal dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Pneumococcal dose 1"
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
        "expression" : "Pneumococcal dose 1 Create"
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
    "title" : "Pneumococcal dose 2",
    "description" : "Provision of the pneumococcal dose 2\nTrigger event: First pneumococcal dose from the primary series was administered to the client, who is less than or equal to 5 years of age, either within 24 months of birth or if client is at high risk for pneumococcal infection\nToday's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND (\"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months OR \"At high risk for pneumococcal infection\" = TRUE\nTrigger date: Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\nCreate condition: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Pneumococcal dose 2",
        "language" : "text/cql-identifier",
        "expression" : "Pneumococcal dose 2"
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
        "expression" : "Pneumococcal dose 2 Create"
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
    "title" : "Pneumococcal booster dose",
    "description" : "Provision of the pneumococcal booster dose\nTrigger event: Second pneumococcal dose from the primary series was administered and first pneumococcal dose was administered within 12 months post birth\nChild's birth AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2 AND (\"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" < 12 months\nTrigger date: \"Date of birth\"\nCreate condition: Pneumococcal booster dose should be provided if the client has received the 2 previous doses",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Pneumococcal booster dose",
        "language" : "text/cql-identifier",
        "expression" : "Pneumococcal booster dose"
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
        "expression" : "Pneumococcal booster dose Create"
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
    "title" : "Pneumococcal second booster dose",
    "description" : "Provision of another booster dose for HIV-positive infants and preterm neonates\nTrigger event: The primary series has been completed and one booster dose was administered to the client, who is more than 12 months of age. The latest pneumococcal dose was administered within 12 months post birth. Client is either HIV positive or had a preterm birth\n'Today's date − \"Date of birth\" > 12 months AND \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\") AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1 AND Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 12 months AND (\"HIV status\" = \"HIV-positive\" OR \"Preterm birth\" = TRUE)\nTrigger date: \"Date of birth\"\nCreate condition: HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Pneumococcal second booster dose",
        "language" : "text/cql-identifier",
        "expression" : "Pneumococcal second booster dose"
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
        "expression" : "Pneumococcal second booster dose Create"
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
