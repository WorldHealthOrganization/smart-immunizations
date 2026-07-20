# IMMZ.D18.S.Pneumococcal.3 doses schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Pneumococcal.3 doses schedule**

## PlanDefinition: IMMZ.D18.S.Pneumococcal.3 doses schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPneumococcal3Doses | *Version*:0.2.0 |
| Draft as of 2026-04-03 | *Computable Name*:IMMZD18SPneumococcal3Doses |

 
IMMZ.D18.S.Pneumococcal.3 doses schedule 3 primary doses (3p+0) schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Pneumococcal.3 doses schedule](PlanDefinition-IMMZD18SPneumococcal3Doses.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Pneumococcal.3 doses schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-03 22:35:55+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Pneumococcal.3 doses schedule 3 primary doses (3p+0) schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SPneumococcal3DosesLogic](Library-IMMZD18SPneumococcal3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPneumococcal3Doses",
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
        "valueString" : "Two pneumococcal primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two pneumococcal primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two pneumococcal primary series doses were administered-121\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Two pneumococcal primary series doses were administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second pneumococcal dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second pneumococcal dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n*/\ndefine \"Second pneumococcal dose from the primary series was administered\":\n  Encounter.\"Two pneumococcal primary series doses were administered\""
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
        "valueString" : "/*\n@input: The client's age is less than or equal to 5 years\n@pseudocode: 'Today's date − \"Date of birth\" ≤ 5 years\n@code: The client's age is less than or equal to 5 years-41\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"The client's age is less than or equal to 5 years\":\n  Encounter.\"Current Patient Age In Years\" <= 5"
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
        "valueString" : "/*\n@internal: Date of First Pneumococcal Dose\n*/\ndefine \"Date of First Pneumococcal Dose\":\n  date from start of \"Pneumococcal Doses Administered to Patient\".earliest().occurrence.toInterval()"
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
        "valueString" : "/*\n@input: The first pneumococcal dose was administered within 24 months post birth\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months\n@code: The first pneumococcal dose was administered within 24 months post birth-109\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"The first pneumococcal dose was administered within 24 months post birth\":\n  AgeInMonthsAt(\"Date of First Pneumococcal Dose\") < 24"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Three pneumococcal primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three pneumococcal primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three pneumococcal primary series doses were administered-121\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Three pneumococcal primary series doses were administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 3"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Third pneumococcal dose from the primary series was administered. The primary series has been completed."
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Third pneumococcal dose from the primary series was administered. The primary series has been completed.\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Third pneumococcal dose from the primary series was administered. The primary series has been completed.\":\n  Encounter.\"Three pneumococcal primary series doses were administered\""
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 3\n@description: Provision of the pneumococcal dose 3\n@trigger: Second pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. First pneumococcal dose was administered within 12 months post birth.\n@pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" < 12 months\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal dose 3\":\n  \"Second pneumococcal dose from the primary series was administered\"\n  and Encounter.\"The client's age is less than or equal to 5 years\"\n  and Encounter.\"The first pneumococcal dose was administered within 24 months post birth\"  and not \"Third pneumococcal dose from the primary series was administered. The primary series has been completed.\""
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
        "valueString" : "One pneumococcal primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One pneumococcal primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One pneumococcal primary series dose was administered-121\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"One pneumococcal primary series dose was administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
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
        "valueInteger" : 15
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
        "valueString" : "The first pneumococcal dose was administered after 24 months post birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The first pneumococcal dose was administered after 24 months post birth\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" ≥ 24 months\n@code: The first pneumococcal dose was administered after 24 months post birth-109\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The first pneumococcal dose was administered after 24 months post birth\":\n  AgeInMonthsAt(\"Date of First Pneumococcal Dose\") >= 24"
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
        "valueString" : "At high risk for pneumococcal infection Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: At high risk for pneumococcal infection Observation\n*/\ndefine \"At high risk for pneumococcal infection Observation\":\n  ([Observation: Concepts.\"At high risk for pneumococcal infection\"]).complete()"
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
        "valueString" : "At high risk for pneumococcal infection Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: At high risk for pneumococcal infection Observation\n*/\ndefine \"At high risk for pneumococcal infection Observation\":\n  Elements.\"At high risk for pneumococcal infection Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Client is at high risk for pneumococcal infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is at high risk for pneumococcal infection\n@pseudocode: \"At high risk for pneumococcal infection\" = TRUE\n*/\ndefine \"Client is at high risk for pneumococcal infection\":\n  exists( \"At high risk for pneumococcal infection Observation\" O where O.value = true )"
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
        "valueString" : "Client is at high risk for pneumococcal infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is at high risk for pneumococcal infection\n@pseudocode: \"At high risk for pneumococcal infection\" = TRUE\n@code: Client is at high risk for pneumococcal infection-48\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Client is at high risk for pneumococcal infection\":\n  Encounter.\"Client is at high risk for pneumococcal infection\""
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2, first after 24m"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 2, first after 24m\n@description: Provision of the pneumococcal dose 2\n@trigger: First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. Pneumococcal dose was not administered within 24 months post birth. Client is at high risk for pneumococcal infection.\n@pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" ≥ 24 months AND \"At high risk for pneumococcal infection\" = TRUE\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal dose 2, first after 24m\":\n  \"First pneumococcal dose from the primary series was administered\"\n  and Encounter.\"The client's age is less than or equal to 5 years\"\n  and Encounter.\"The first pneumococcal dose was administered after 24 months post birth\"\n  and Encounter.\"Client is at high risk for pneumococcal infection\"\n  and not \"Second pneumococcal dose from the primary series was administered\""
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2, first within 24m"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 2, first within 24m\n@description: Provision of the pneumococcal dose 2\n@trigger: First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age, within 24 months post birth\n@pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal dose 2, first within 24m\":\n  \"First pneumococcal dose from the primary series was administered\"\n  and Encounter.\"The client's age is less than or equal to 5 years\"\n  and Encounter.\"The first pneumococcal dose was administered within 24 months post birth\"\n  and not \"Second pneumococcal dose from the primary series was administered\""
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
        "valueString" : "Date of Latest Pneumococcal Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Pneumococcal Dose\n*/\ndefine \"Date of Latest Pneumococcal Dose\":\n  date from start of \"Pneumococcal Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2, first within 24m Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal dose 2, first within 24m Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") + 4 weeks\n*/\ndefine \"Pneumococcal dose 2, first within 24m Due Date\":\n  if \"Pneumococcal dose 2, first within 24m\" then Encounter.\"Date of Latest Pneumococcal Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2, first within 24m Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 2, first within 24m Create\n@create: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 4 weeks ago\n*/\ndefine \"Pneumococcal dose 2, first within 24m Create\":\n  if \"Pneumococcal dose 2, first within 24m\"\n  then 'Pneumococcal dose 2 should be provided if the client was given the previous dose more than 4 weeks ago' + '\nDue Date: ' + ToString(\"Pneumococcal dose 2, first within 24m Due Date\")\n  else ''"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest pneumococcal dose was administered within 12 months post birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest pneumococcal dose was administered within 12 months post birth\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 12 months\n@code: The latest pneumococcal dose was administered within 12 months post birth-116\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The latest pneumococcal dose was administered within 12 months post birth\":\n  AgeInMonthsAt(\"Date of Latest Pneumococcal Dose\") < 12"
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
        "valueString" : "HIV status Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: HIV Status Observation\n*/\ndefine \"HIV status Observation\":\n  ([Observation: Concepts.\"HIV status\"]).complete()"
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
        "valueString" : "Client's HIV status is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is positive\n@pseudocode: \"HIV status\" = \"HIV-positive\"\n*/\ndefine \"Client's HIV status is positive\":\n  exists( (Elements.\"HIV status Observation\".encounterOrOnBefore(EncounterId, Today)) O\n    where O.value ~ Concepts.\"HIV-positive\" )"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's HIV status is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is positive\n@pseudocode: \"HIV status\" = \"HIV-positive\"\n@code: Client's HIV status is positive-29\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Client's HIV status is positive\":\n  Encounter.\"Client's HIV status is positive\""
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
        "valueString" : "Preterm birth Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Preterm birth Observation\n*/\ndefine \"Preterm birth Observation\":\n  Elements.\"Preterm birth Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Client had preterm birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client had preterm birth\n@pseudocode: \"Preterm birth\" = TRUE\n@code: Client had preterm birth-22\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Client had preterm birth\":\n  Encounter.\"Client was a premature infant at birth\""
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal booster dose Expiration\n@pseudocode: \"Date of birth\" + 24 months\n*/\ndefine \"Pneumococcal booster dose Expiration\":\n  Patient.birthDate + 24 months"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pneumococcal Booster Series Doses Administered to Patient\n*/\ndefine \"Pneumococcal Booster Series Doses Administered to Patient\":\n  \"Pneumococcal Doses Administered to Patient\".seriesBooster()"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Pneumococcal Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Pneumococcal Booster Series Doses Administered\n*/\ndefine \"Number of Pneumococcal Booster Series Doses Administered\":\n  Count(\"Pneumococcal Booster Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One pneumococcal booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One pneumococcal booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n@code: One pneumococcal booster dose was administered-119\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"One pneumococcal booster dose was administered\":\n  \"Number of Pneumococcal Booster Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "One pneumococcal booster dose was administered."
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: One pneumococcal booster dose was administered.\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n*/\ndefine \"One pneumococcal booster dose was administered.\":\n  Encounter.\"One pneumococcal booster dose was administered\""
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal booster dose\n@description: Provision of booster dose for HIV-positive infants and preterm neonates\n@trigger: Third pneumococcal dose from the primary series was administered to client, who is more than 12 months of age. The latest pneumococcal dose was administered within 12 months post birth. Client is either HIV positive or had preterm birth.\n@pseudo: Today's date − \"Date of birth\" > 12 months AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 3 AND Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 12 months AND (\"HIV status\" = \"HIV-positive\" OR \"Preterm birth\" = TRUE)\n@triggerDate: \"Date of birth\"\n*/\ndefine \"Pneumococcal booster dose\":\n  \"Third pneumococcal dose from the primary series was administered. The primary series has been completed.\"\n  and Encounter.\"The latest pneumococcal dose was administered within 12 months post birth\"\n  and (\n    Encounter.\"Client's HIV status is positive\"\n    or Encounter.\"Client had preterm birth\"\n  )\n  and \"Pneumococcal booster dose Expiration\" after day of Today\n  and not \"One pneumococcal booster dose was administered.\""
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal booster dose Due Date\n@pseudocode: \"Date of birth\" + 12 months\n*/\ndefine \"Pneumococcal booster dose Due Date\":\n  if \"Pneumococcal booster dose\" then Patient.birthDate + 12 months\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal booster dose Overdue\n@pseudocode: \"Date of birth\" + 24 months\n*/\ndefine \"Pneumococcal booster dose Overdue\":\n  if \"Pneumococcal booster dose\" then Patient.birthDate + 24 months\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal booster dose Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal booster dose Create\n@create: HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life\n*/\ndefine \"Pneumococcal booster dose Create\":\n  if \"Pneumococcal booster dose\"\n  then 'HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life' + '\nDue Date: ' + ToString(\"Pneumococcal booster dose Due Date\") + '\nOverdue: ' + ToString(\"Pneumococcal booster dose Overdue\") + '\nExpiration: ' + ToString(\"Pneumococcal booster dose Expiration\")\n  else ''"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2, first after 24m Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal dose 2, first after 24m Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") + 8 weeks\n*/\ndefine \"Pneumococcal dose 2, first after 24m Due Date\":\n  if \"Pneumococcal dose 2, first after 24m\" then Encounter.\"Date of Latest Pneumococcal Dose\" + 8 weeks\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 2, first after 24m Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 2, first after 24m Create\n@create: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago\n*/\ndefine \"Pneumococcal dose 2, first after 24m Create\":\n  if \"Pneumococcal dose 2, first after 24m\"\n  then 'Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago' + '\nDue Date: ' + ToString(\"Pneumococcal dose 2, first after 24m Due Date\")\n  else ''"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 3 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Pneumococcal dose 3 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") + 4 weeks\n*/\ndefine \"Pneumococcal dose 3 Due Date\":\n  if \"Pneumococcal dose 3\" then Encounter.\"Date of Latest Pneumococcal Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 3 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 3 Create\n@create: Pneumococcal dose 3 should be provided if the client was given the previous dose more than 4 weeks ago\n*/\ndefine \"Pneumococcal dose 3 Create\":\n  if \"Pneumococcal dose 3\"\n  then 'Pneumococcal dose 3 should be provided if the client was given the previous dose more than 4 weeks ago' + '\nDue Date: ' + ToString(\"Pneumococcal dose 3 Due Date\")\n  else ''"
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
        "valueString" : "/*\n@input: No pneumococcal primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No pneumococcal primary series doses were administered-121\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"No pneumococcal primary series doses were administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 1\n@description: Provision of the pneumococcal dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"Pneumococcal dose 1\":\n  Encounter.\"The client's age is less than or equal to 5 years\"\n  and Encounter.\"No pneumococcal primary series doses were administered\""
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
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
        "valueString" : "IMMZD18SPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal dose 1 Create\n@create: Pneumococcal dose 1 should be provided if the client is older than 6 weeks\n*/\ndefine \"Pneumococcal dose 1 Create\":\n  if \"Pneumococcal dose 1\"\n  then 'Pneumococcal dose 1 should be provided if the client is older than 6 weeks' + '\nDue Date: ' + ToString(\"Pneumococcal dose 1 Due Date\")\n  else ''"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 57
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
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if the given reference is to the given resourceId\n@comment: Returns true if the `resourceId` parameter exactly equals the tail of the given reference.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(reference FHIR.Reference, resourceId String):\n  resourceId = Last(Split(reference.reference, '/'))"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ObservationStatus): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueInteger" : 64
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
      "name" : "Pneumococcal dose 3",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Pneumococcal dose 2, first after 24m",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Pneumococcal dose 2, first within 24m Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Pneumococcal dose 2, first within 24m",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
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
      "name" : "Pneumococcal dose 2, first after 24m Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Pneumococcal dose 3 Create",
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
          "code" : "DE251",
          "display" : "At high risk for pneumococcal infection"
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
          "code" : "DE204",
          "display" : "HIV status"
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
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code"],
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPneumococcal3Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SPneumococcal3Doses",
  "title" : "IMMZ.D18.S.Pneumococcal.3 doses schedule",
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
  "description" : "IMMZ.D18.S.Pneumococcal.3 doses schedule\n3 primary doses (3p+0) schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SPneumococcal3DosesLogic"],
  "action" : [{
    "title" : "Pneumococcal dose 1",
    "description" : "Provision of the pneumococcal dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Pneumococcal dose 1 should be provided if the client is older than 6 weeks",
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
    "title" : "Pneumococcal dose 2, first within 24m",
    "description" : "Provision of the pneumococcal dose 2\nTrigger event: First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age, within 24 months post birth\nTrigger pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\nCreate condition: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 4 weeks ago",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Pneumococcal dose 2, first within 24m",
        "language" : "text/cql-identifier",
        "expression" : "Pneumococcal dose 2, first within 24m"
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
        "expression" : "Pneumococcal dose 2, first within 24m Create"
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
    "title" : "Pneumococcal dose 2, first after 24m",
    "description" : "Provision of the pneumococcal dose 2\nTrigger event: First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. Pneumococcal dose was not administered within 24 months post birth. Client is at high risk for pneumococcal infection.\nTrigger pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" ≥ 24 months AND \"At high risk for pneumococcal infection\" = TRUE\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\nCreate condition: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Pneumococcal dose 2, first after 24m",
        "language" : "text/cql-identifier",
        "expression" : "Pneumococcal dose 2, first after 24m"
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
        "expression" : "Pneumococcal dose 2, first after 24m Create"
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
    "title" : "Pneumococcal dose 3",
    "description" : "Provision of the pneumococcal dose 3\nTrigger event: Second pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. First pneumococcal dose was administered within 12 months post birth.\nTrigger pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" < 12 months\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\nCreate condition: Pneumococcal dose 3 should be provided if the client was given the previous dose more than 4 weeks ago",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Pneumococcal dose 3",
        "language" : "text/cql-identifier",
        "expression" : "Pneumococcal dose 3"
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
        "expression" : "Pneumococcal dose 3 Create"
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
    "description" : "Provision of booster dose for HIV-positive infants and preterm neonates\nTrigger event: Third pneumococcal dose from the primary series was administered to client, who is more than 12 months of age. The latest pneumococcal dose was administered within 12 months post birth. Client is either HIV positive or had preterm birth.\nTrigger pseudo: Today's date − \"Date of birth\" > 12 months AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 3 AND Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 12 months AND (\"HIV status\" = \"HIV-positive\" OR \"Preterm birth\" = TRUE)\nTrigger date: \"Date of birth\"\nCreate condition: HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life",
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
  }]
}

```
