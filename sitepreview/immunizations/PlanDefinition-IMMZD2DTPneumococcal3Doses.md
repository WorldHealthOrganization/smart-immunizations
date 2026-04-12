# IMMZ.D2.DT.Pneumococcal.3 doses - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Pneumococcal.3 doses**

## PlanDefinition: IMMZ.D2.DT.Pneumococcal.3 doses 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPneumococcal3Doses | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD2DTPneumococcal3Doses |

 
IMMZ.D2.DT.Pneumococcal.3 doses 3 primary doses (3p+0) 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Pneumococcal.3 doses](PlanDefinition-IMMZD2DTPneumococcal3Doses.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Pneumococcal.3 doses
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-09 14:34:42+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Pneumococcal.3 doses 3 primary doses (3p+0)
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTPneumococcal3DosesLogic](Library-IMMZD2DTPneumococcal3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTPneumococcal3Doses",
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
        "valueInteger" : 0
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
        "valueString" : "The client's age is less than 6 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is less than 6 weeks\n@pseudocode: Today's date − \"Date of birth\" < 6 weeks\n@code: The client's age is less than 6 weeks-40\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The client's age is less than 6 weeks\":\n  Encounter.\"Current Patient Age In Weeks\" < 6"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal vaccination Case 1\":\n  Encounter.\"The client's age is less than 6 weeks\""
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
        "valueString" : "Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @dataElement All Doses Administered to Patient\n */\ndefine \"Doses Administered to Patient\":\n  [Immunization] I\n    where I.status = 'completed'\n    and I.isSubpotent is not true"
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
        "valueString" : "Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @dataElement All Doses Administered to Patient\n */\ndefine \"Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n    where I.occurrence.toInterval() same day or before Today"
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
        "valueString" : "Pneumococcal Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Pneumococcal containing Doses Administered to Patient\n*/\ndefine \"Pneumococcal Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Pneumococcal vaccines\""
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
        "valueInteger" : 6
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
        "valueString" : "One pneumococcal primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One pneumococcal primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One pneumococcal primary series dose was administered-121\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"One pneumococcal primary series dose was administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 1"
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
        "valueString" : "Current Patient Age In Years"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in years\n */\ndefine \"Current Patient Age In Years\":\n  AgeInYearsAt(Today)"
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
        "valueString" : "The client's age is less than or equal to 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is less than or equal to 5 years\n@pseudocode: 'Today's date − \"Date of birth\" ≤ 5 years\n@code: The client's age is less than or equal to 5 years-41\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"The client's age is less than or equal to 5 years\":\n  Encounter.\"Current Patient Age In Years\" <= 5"
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
        "valueString" : "The client's age is less than or equal to five years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is less than or equal to five years\n@pseudocode: Today's date − \"Date of birth\" ≤ 5 years\n@code: The client's age is less than or equal to five years-40\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The client's age is less than or equal to five years\":\n  \"The client's age is less than or equal to 5 years\""
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
        "valueInteger" : 12
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
        "valueString" : "/*\n@input: The first pneumococcal dose was administered within 12 months post birth\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" < 12 months\n@code: The first pneumococcal dose was administered within 12 months post birth-131\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The first pneumococcal dose was administered within 12 months post birth\":\n  AgeInMonthsAt(\"Date of First Pneumococcal Dose\") < 12"
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
        "valueString" : "Date of Latest Pneumococcal Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Pneumococcal Dose\n*/\ndefine \"Date of Latest Pneumococcal Dose\":\n  date from start of \"Pneumococcal Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "The latest pneumococcal dose was administered less than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest pneumococcal dose was administered less than 4 weeks ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") < 4 weeks\n@code: The latest pneumococcal dose was administered less than 4 weeks ago-104\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The latest pneumococcal dose was administered less than 4 weeks ago\":\n  \"Date of Latest Pneumococcal Dose\" is not null\n    and duration in weeks between \"Date of Latest Pneumococcal Dose\" and Today < 4"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal vaccination Case 2\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered within 12 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The first pneumococcal dose was administered at 12–24 months post birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The first pneumococcal dose was administered at 12–24 months post birth\n@pseudocode: 12 months ≤ \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months\n@code: The first pneumococcal dose was administered at 12–24 months post birth-121\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The first pneumococcal dose was administered at 12–24 months post birth\":\n  AgeInMonthsAt(\"Date of First Pneumococcal Dose\") >= 12\n  and AgeInMonthsAt(\"Date of First Pneumococcal Dose\") < 24"
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
        "valueString" : "At high risk for pneumococcal infection Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: At high risk for pneumococcal infection Observation\n*/\ndefine \"At high risk for pneumococcal infection Observation\":\n  ([Observation: Concepts.\"At high risk for pneumococcal infection\"]).complete()"
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
        "valueString" : "At high risk for pneumococcal infection Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: At high risk for pneumococcal infection Observation\n*/\ndefine \"At high risk for pneumococcal infection Observation\":\n  Elements.\"At high risk for pneumococcal infection Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "Client is not at high risk for pneumococcal infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is not at high risk for pneumococcal infection\n@pseudocode: \"At high risk for pneumococcal infection\" = FALSE\n*/\ndefine \"Client is not at high risk for pneumococcal infection\":\n  exists( \"At high risk for pneumococcal infection Observation\" O where O.value = false )"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client is not at high risk for pneumococcal infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is not at high risk for pneumococcal infection\n@pseudocode: \"At high risk for pneumococcal infection\" = FALSE\n@code: Client is not at high risk for pneumococcal infection-49\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Client is not at high risk for pneumococcal infection\":\n  Encounter.\"Client is not at high risk for pneumococcal infection\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal vaccination Case 3\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered at 12–24 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered less than 4 weeks ago\"\n    and Encounter.\"Client is not at high risk for pneumococcal infection\""
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
        "valueString" : "The latest pneumococcal dose was administered less than 8 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest pneumococcal dose was administered less than 8 weeks ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") < 8 weeks\n@code: The latest pneumococcal dose was administered less than 8 weeks ago-104\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The latest pneumococcal dose was administered less than 8 weeks ago\":\n  \"Date of Latest Pneumococcal Dose\" is not null\n    and duration in weeks between \"Date of Latest Pneumococcal Dose\" and Today < 8"
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
        "valueString" : "Client is at high risk for pneumococcal infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is at high risk for pneumococcal infection\n@pseudocode: \"At high risk for pneumococcal infection\" = TRUE\n*/\ndefine \"Client is at high risk for pneumococcal infection\":\n  exists( \"At high risk for pneumococcal infection Observation\" O where O.value = true )"
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
        "valueString" : "Client is at high risk for pneumococcal infection"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client is at high risk for pneumococcal infection\n@pseudocode: \"At high risk for pneumococcal infection\" = TRUE\n@code: Client is at high risk for pneumococcal infection-48\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Client is at high risk for pneumococcal infection\":\n  Encounter.\"Client is at high risk for pneumococcal infection\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal vaccination Case 4\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered at 12–24 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered less than 8 weeks ago\"\n    and Encounter.\"Client is at high risk for pneumococcal infection\""
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
        "valueInteger" : 27
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal vaccination Case 5"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal vaccination Case 5\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal vaccination Case 5\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered after 24 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered less than 8 weeks ago\"\n    and Encounter.\"Client is at high risk for pneumococcal infection\""
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
        "valueString" : "Two pneumococcal primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two pneumococcal primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two pneumococcal primary series doses were administered-121\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Two pneumococcal primary series doses were administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal vaccination Case 6"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal vaccination Case 6\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal vaccination Case 6\":\n  Encounter.\"Two pneumococcal primary series doses were administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered within 12 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal vaccination\":\n  \"Client is not due for pneumococcal vaccination Case 1\"\n    or \"Client is not due for pneumococcal vaccination Case 2\"\n    or \"Client is not due for pneumococcal vaccination Case 3\"\n    or \"Client is not due for pneumococcal vaccination Case 4\"\n    or \"Client is not due for pneumococcal vaccination Case 5\"\n    or \"Client is not due for pneumococcal vaccination Case 6\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal vaccination Guidance\n@guidance = Should not vaccinate client with first pneumococcal dose as client's age is less than 6 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.\n@guidance = Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.\n@guidance = Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 4 weeks ago. Check for any other vaccines due and inform the caregiver of when to come back for the next dose.\n@guidance = Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 8 weeks ago and client is at high risk for pneumococcal infection. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.\n@guidance = Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 8 weeks ago and client is at high risk for pneumococcal infection. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.\n@guidance = Should not vaccinate client with third pneumococcal dose as client's age is less than 5 years and latest pneumococcal dose was administered less than 4 weeks ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose\n*/\ndefine \"Client is not due for pneumococcal vaccination Guidance\":\n  case\n    when \"Client is not due for pneumococcal vaccination Case 1\" then 'Should not vaccinate client with first pneumococcal dose as client\\'s age is less than 6 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    when \"Client is not due for pneumococcal vaccination Case 2\" then 'Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    when \"Client is not due for pneumococcal vaccination Case 3\" then 'Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 4 weeks ago. Check for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    when \"Client is not due for pneumococcal vaccination Case 4\" then 'Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 8 weeks ago and client is at high risk for pneumococcal infection. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    when \"Client is not due for pneumococcal vaccination Case 5\" then 'Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 8 weeks ago and client is at high risk for pneumococcal infection. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    when \"Client is not due for pneumococcal vaccination Case 6\" then 'Should not vaccinate client with third pneumococcal dose as client\\'s age is less than 5 years and latest pneumococcal dose was administered less than 4 weeks ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose'\n    else ''\n  end"
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
        "valueString" : "No pneumococcal primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No pneumococcal primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No pneumococcal primary series doses were administered-121\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"No pneumococcal primary series doses were administered\":\n  \"Number of Pneumococcal Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client's age is between 6 weeks and 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is between 6 weeks and 5 years\n@pseudocode: 6 weeks ≤ Today's date − \"Date of birth\" ≤ 5 years\n@code: The client's age is between 6 weeks and 5 years-50\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The client's age is between 6 weeks and 5 years\":\n  6 <= Encounter.\"Current Patient Age In Weeks\"\n  and Encounter.\"Current Patient Age In Years\" <= 5"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal vaccination Case 1\":\n  Encounter.\"No pneumococcal primary series doses were administered\"\n    and Encounter.\"The client's age is between 6 weeks and 5 years\""
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
        "valueString" : "The latest pneumococcal dose was administered more than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest pneumococcal dose was administered more than 4 weeks ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") ≥ 4 weeks\n@code: The latest pneumococcal dose was administered more than 4 weeks ago-104\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The latest pneumococcal dose was administered more than 4 weeks ago\":\n  not \"The latest pneumococcal dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal vaccination Case 2\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered within 12 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal vaccination Case 3\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered at 12–24 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered more than 4 weeks ago\"\n    and Encounter.\"Client is not at high risk for pneumococcal infection\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest pneumococcal dose was administered more than 8 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest pneumococcal dose was administered more than 8 weeks ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") ≥ 8 weeks\n@code: The latest pneumococcal dose was administered more than 8 weeks ago-104\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The latest pneumococcal dose was administered more than 8 weeks ago\":\n  not \"The latest pneumococcal dose was administered less than 8 weeks ago\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal vaccination Case 4\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered at 12–24 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered more than 8 weeks ago\"\n    and Encounter.\"Client is at high risk for pneumococcal infection\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal vaccination Case 5"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal vaccination Case 5\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal vaccination Case 5\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered after 24 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered more than 8 weeks ago\"\n    and Encounter.\"Client is at high risk for pneumococcal infection\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal vaccination Case 6"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal vaccination Case 6\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal vaccination Case 6\":\n  Encounter.\"Two pneumococcal primary series doses were administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered within 12 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal vaccination\":\n  \"Client is due for pneumococcal vaccination Case 1\"\n    or \"Client is due for pneumococcal vaccination Case 2\"\n    or \"Client is due for pneumococcal vaccination Case 3\"\n    or \"Client is due for pneumococcal vaccination Case 4\"\n    or \"Client is due for pneumococcal vaccination Case 5\"\n    or \"Client is due for pneumococcal vaccination Case 6\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal vaccination Guidance\n@guidance = Should vaccinate client with first pneumococcal dose as no pneumococcal doses were administered and client is within the appropriate age range.\nCheck for contraindications.\n@guidance = Should vaccinate client with second pneumococcal dose as first dose was administered within 12 months post birth and latest pneumococcal dose was administered more than 4 weeks ago.\nCheck for contraindications.\n@guidance = Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 4 weeks ago and client is not at high risk for pneumococcal infection.\nCheck for contraindications.\n@guidance = Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 8 weeks ago and client is at high risk for pneumococcal infection.\nCheck for contraindications.\n@guidance = Should vaccinate client with second pneumococcal dose as first dose was administered 24 months post birth, latest pneumococcal dose was administered more than 8 weeks ago and client is at high risk for pneumococcal infection.\nCheck for contraindications.\n@guidance = Should vaccinate client with third pneumococcal dose as client's age is less than 5 yers and latest pneumococcal dose was administered more than 4 weeks ago.\nCheck for contraindications.\n*/\ndefine \"Client is due for pneumococcal vaccination Guidance\":\n  case\n    when \"Client is due for pneumococcal vaccination Case 1\" then 'Should vaccinate client with first pneumococcal dose as no pneumococcal doses were administered and client is within the appropriate age range.\nCheck for contraindications.'\n    when \"Client is due for pneumococcal vaccination Case 2\" then 'Should vaccinate client with second pneumococcal dose as first dose was administered within 12 months post birth and latest pneumococcal dose was administered more than 4 weeks ago.\nCheck for contraindications.'\n    when \"Client is due for pneumococcal vaccination Case 3\" then 'Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 4 weeks ago and client is not at high risk for pneumococcal infection.\nCheck for contraindications.'\n    when \"Client is due for pneumococcal vaccination Case 4\" then 'Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 8 weeks ago and client is at high risk for pneumococcal infection.\nCheck for contraindications.'\n    when \"Client is due for pneumococcal vaccination Case 5\" then 'Should vaccinate client with second pneumococcal dose as first dose was administered 24 months post birth, latest pneumococcal dose was administered more than 8 weeks ago and client is at high risk for pneumococcal infection.\nCheck for contraindications.'\n    when \"Client is due for pneumococcal vaccination Case 6\" then 'Should vaccinate client with third pneumococcal dose as client\\'s age is less than 5 yers and latest pneumococcal dose was administered more than 4 weeks ago.\nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal immunization schedule is complete Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal immunization schedule is complete Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal immunization schedule is complete Case 1\":\n  Encounter.\"One pneumococcal primary series dose was administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered after 24 months post birth\"\n    and Encounter.\"Client is not at high risk for pneumococcal infection\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The first pneumococcal dose was administered after 12 months post birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The first pneumococcal dose was administered after 12 months post birth\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" ≥ 12 months\n@code: The first pneumococcal dose was administered after 12 months post birth-131\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The first pneumococcal dose was administered after 12 months post birth\":\n  AgeInMonthsAt(\"Date of First Pneumococcal Dose\") >= 12"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal immunization schedule is complete Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal immunization schedule is complete Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal immunization schedule is complete Case 2\":\n  Encounter.\"Two pneumococcal primary series doses were administered\"\n    and Encounter.\"The client's age is less than or equal to five years\"\n    and Encounter.\"The first pneumococcal dose was administered after 12 months post birth\""
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
        "valueInteger" : 48
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
        "valueInteger" : 49
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
        "valueInteger" : 50
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
        "valueString" : "No pneumococcal booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No pneumococcal booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 0\n@code: No pneumococcal booster dose was administered-119\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"No pneumococcal booster dose was administered\":\n  \"Number of Pneumococcal Booster Series Doses Administered\" = 0"
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
        "valueString" : "Current Patient Age In Months"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in months\n */\ndefine \"Current Patient Age In Months\":\n  AgeInMonthsAt(Today)"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client's age is less than 24 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is less than 24 months\n@pseudocode: Today's date − \"Date of birth\" < 24 months\n@code: The client's age is less than 24 months-42\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The client's age is less than 24 months\":\n  Encounter.\"Current Patient Age In Months\" < 24"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest pneumococcal dose was administered after 12 months post birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest pneumococcal dose was administered after 12 months post birth\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" ≥ 12 months\n@code: The latest pneumococcal dose was administered after 12 months post birth-116\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The latest pneumococcal dose was administered after 12 months post birth\":\n  AgeInMonthsAt(\"Date of Latest Pneumococcal Dose\") >= 12"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal immunization schedule is complete Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal immunization schedule is complete Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal immunization schedule is complete Case 3\":\n  Encounter.\"Three pneumococcal primary series doses were administered\"\n    and Encounter.\"No pneumococcal booster dose was administered\"\n    and Encounter.\"The client's age is less than 24 months\"\n    and Encounter.\"The latest pneumococcal dose was administered after 12 months post birth\""
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
        "valueString" : "HIV status Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: HIV Status Observation\n*/\ndefine \"HIV status Observation\":\n  ([Observation: Concepts.\"HIV status\"]).complete()"
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
        "valueString" : "Client's HIV status is positive"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is positive\n@pseudocode: \"HIV status\" = \"HIV-positive\"\n*/\ndefine \"Client's HIV status is positive\":\n  exists( (Elements.\"HIV status Observation\".encounterOrOnBefore(EncounterId, Today)) O\n    where O.value ~ Concepts.\"HIV-positive\" )"
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
        "valueString" : "Client's HIV status is negative or unknown"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is negative or unknown\n@pseudocode: \"HIV status\" ≠ \"HIV-positive\"\n*/\ndefine \"Client's HIV status is negative or unknown\":\n  not \"Client's HIV status is positive\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's HIV status is negative or unknown"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's HIV status is negative or unknown\n@pseudocode: \"HIV status\" ≠ \"HIV-positive\"\n@code: Client's HIV status is negative or unknown-29\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Client's HIV status is negative or unknown\":\n  Encounter.\"Client's HIV status is negative or unknown\""
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
        "valueInteger" : 60
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
        "valueString" : "Client was a premature infant at birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client was a premature infant at birth\n@pseudocode: \"Preterm birth\" =  TRUE\n*/\ndefine \"Client was a premature infant at birth\":\n  exists( \"Preterm birth Observation\" O where O.value = true )"
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
        "valueInteger" : 63
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
        "valueString" : "Client did not have preterm birth"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client did not have preterm birth\n@pseudocode: \"Preterm birth\" ≠ TRUE\n@code: Client did not have preterm birth-22\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"Client did not have preterm birth\":\n  Encounter.\"Client was not a premature infant at birth\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal immunization schedule is complete Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal immunization schedule is complete Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal immunization schedule is complete Case 4\":\n  Encounter.\"Three pneumococcal primary series doses were administered\"\n    and Encounter.\"No pneumococcal booster dose was administered\"\n    and Encounter.\"The client's age is less than 24 months\"\n    and Encounter.\"Client's HIV status is negative or unknown\"\n    and Encounter.\"Client did not have preterm birth\""
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client's age is more than or equal to 24 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is more than or equal to 24 months\n@pseudocode: Today's date − \"Date of birth\" ≥ 24 months\n@code: The client's age is more than or equal to 24 months-42\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The client's age is more than or equal to 24 months\":\n  Encounter.\"Current Patient Age In Months\" >= 24"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal immunization schedule is complete Case 5"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal immunization schedule is complete Case 5\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal immunization schedule is complete Case 5\":\n  Encounter.\"Three pneumococcal primary series doses were administered\"\n    and Encounter.\"No pneumococcal booster dose was administered\"\n    and Encounter.\"The client's age is more than or equal to 24 months\""
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
        "valueInteger" : 68
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal immunization schedule is complete Case 6"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal immunization schedule is complete Case 6\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n*/\ndefine \"Pneumococcal immunization schedule is complete Case 6\":\n  Encounter.\"Three pneumococcal primary series doses were administered\"\n    and Encounter.\"One pneumococcal booster dose was administered\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\")\n*/\ndefine \"Pneumococcal immunization schedule is complete\":\n  \"Pneumococcal immunization schedule is complete Case 1\"\n    or \"Pneumococcal immunization schedule is complete Case 2\"\n    or \"Pneumococcal immunization schedule is complete Case 3\"\n    or \"Pneumococcal immunization schedule is complete Case 4\"\n    or \"Pneumococcal immunization schedule is complete Case 5\"\n    or \"Pneumococcal immunization schedule is complete Case 6\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Pneumococcal immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Pneumococcal immunization schedule is complete Guidance\n@guidance = Pneumococcal immunization schedule is complete. One pneumococcal dose was administered. \nCheck for any other vaccines due.\n@guidance = Pneumococcal immunization schedule is complete. Two pneumococcal pneumococcal doses were administered. \nCheck for any other vaccines due.\n@guidance = Pneumococcal immunization schedule is complete. Three pneumococcal primary serie doses were administered. \nCheck for any other vaccines due.\n@guidance = Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses were administered. \nCheck for any other vaccines due.\n@guidance = Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses were administered. \nCheck for any other vaccines due.\n@guidance = Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses and one booster dose were administered. \nCheck for any other vaccines due.\n*/\ndefine \"Pneumococcal immunization schedule is complete Guidance\":\n  case\n    when \"Pneumococcal immunization schedule is complete Case 1\" then 'Pneumococcal immunization schedule is complete. One pneumococcal dose was administered. \nCheck for any other vaccines due.'\n    when \"Pneumococcal immunization schedule is complete Case 2\" then 'Pneumococcal immunization schedule is complete. Two pneumococcal pneumococcal doses were administered. \nCheck for any other vaccines due.'\n    when \"Pneumococcal immunization schedule is complete Case 3\" then 'Pneumococcal immunization schedule is complete. Three pneumococcal primary serie doses were administered. \nCheck for any other vaccines due.'\n    when \"Pneumococcal immunization schedule is complete Case 4\" then 'Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses were administered. \nCheck for any other vaccines due.'\n    when \"Pneumococcal immunization schedule is complete Case 5\" then 'Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses were administered. \nCheck for any other vaccines due.'\n    when \"Pneumococcal immunization schedule is complete Case 6\" then 'Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses and one booster dose were administered. \nCheck for any other vaccines due.'\n    else ''\n  end"
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
        "valueInteger" : 72
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
        "valueInteger" : 73
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal booster dose Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal booster dose Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal booster dose Case 1\":\n  Encounter.\"Three pneumococcal primary series doses were administered\"\n    and Encounter.\"No pneumococcal booster dose was administered\"\n    and Encounter.\"The client's age is less than 24 months\"\n    and Encounter.\"The latest pneumococcal dose was administered within 12 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered less than 8 weeks ago\"\n    and Encounter.\"Client's HIV status is positive\""
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
        "valueInteger" : 75
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal booster dose Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal booster dose Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal booster dose Case 2\":\n  Encounter.\"Three pneumococcal primary series doses were administered\"\n    and Encounter.\"No pneumococcal booster dose was administered\"\n    and Encounter.\"The client's age is less than 24 months\"\n    and Encounter.\"The latest pneumococcal dose was administered within 12 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered less than 8 weeks ago\"\n    and Encounter.\"Client had preterm birth\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for pneumococcal booster dose\":\n  \"Client is not due for pneumococcal booster dose Case 1\"\n    or \"Client is not due for pneumococcal booster dose Case 2\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for pneumococcal booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for pneumococcal booster dose Guidance\n@guidance = Should not vaccinate client with pneumococcal booster dose as latest pneumococcal dose was administered within 12 months post birth and administered less than 8 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.\n@guidance = Should not vaccinate client with pneumococcal booster dose as latest pneumococcal dose was administered within 12 months post birth and administered less than 8 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.\n*/\ndefine \"Client is not due for pneumococcal booster dose Guidance\":\n  case\n    when \"Client is not due for pneumococcal booster dose Case 1\" then 'Should not vaccinate client with pneumococcal booster dose as latest pneumococcal dose was administered within 12 months post birth and administered less than 8 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    when \"Client is not due for pneumococcal booster dose Case 2\" then 'Should not vaccinate client with pneumococcal booster dose as latest pneumococcal dose was administered within 12 months post birth and administered less than 8 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal booster dose Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal booster dose Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal booster dose Case 1\":\n  Encounter.\"Three pneumococcal primary series doses were administered\"\n    and Encounter.\"No pneumococcal booster dose was administered\"\n    and Encounter.\"The client's age is less than 24 months\"\n    and Encounter.\"The latest pneumococcal dose was administered within 12 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered more than 8 weeks ago\"\n    and Encounter.\"Client's HIV status is positive\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal booster dose Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal booster dose Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal booster dose Case 2\":\n  Encounter.\"Three pneumococcal primary series doses were administered\"\n    and Encounter.\"No pneumococcal booster dose was administered\"\n    and Encounter.\"The client's age is less than 24 months\"\n    and Encounter.\"The latest pneumococcal dose was administered within 12 months post birth\"\n    and Encounter.\"The latest pneumococcal dose was administered more than 8 weeks ago\"\n    and Encounter.\"Client had preterm birth\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for pneumococcal booster dose\":\n  \"Client is due for pneumococcal booster dose Case 1\"\n    or \"Client is due for pneumococcal booster dose Case 2\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for pneumococcal booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for pneumococcal booster dose Guidance\n@guidance = Should vaccinate client with pneumococcal booster dose as client is HIV positive and latest pneumococcal dose was administered within 12 months post birth and administered more than 8 weeks ago .\nCheck for contraindications.\n@guidance = Should vaccinate client with pneumococcal booster dose as client had preterm birth and latest pneumococcal dose was administered within 12 months post birth and administered more than 8 weeks ago.\nCheck for contraindications.\n*/\ndefine \"Client is due for pneumococcal booster dose Guidance\":\n  case\n    when \"Client is due for pneumococcal booster dose Case 1\" then 'Should vaccinate client with pneumococcal booster dose as client is HIV positive and latest pneumococcal dose was administered within 12 months post birth and administered more than 8 weeks ago .\nCheck for contraindications.'\n    when \"Client is due for pneumococcal booster dose Case 2\" then 'Should vaccinate client with pneumococcal booster dose as client had preterm birth and latest pneumococcal dose was administered within 12 months post birth and administered more than 8 weeks ago.\nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTPneumococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The client's age is more than 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The client's age is more than 5 years\n@pseudocode: Today's date − \"Date of birth\" > 5 years\n@code: The client's age is more than 5 years-40\n@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)\n*/\ndefine \"The client's age is more than 5 years\":\n  Encounter.\"Current Patient Age In Months\" > 5"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note."
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note.\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n*/\ndefine \"Clinical judgement is required. Create a clinical note.\":\n  Encounter.\"The client's age is more than 5 years\""
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Create a clinical note. Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Create a clinical note. Guidance\n@guidance: Members States should update this action according to the national immunization programme\n*/\ndefine \"Clinical judgement is required. Create a clinical note. Guidance\":\n  'Members States should update this action according to the national immunization programme'"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for pneumococcal vaccination\" then \"Client is not due for pneumococcal vaccination Guidance\"\n    when \"Client is due for pneumococcal vaccination\" then \"Client is due for pneumococcal vaccination Guidance\"\n    when \"Pneumococcal immunization schedule is complete\" then \"Pneumococcal immunization schedule is complete Guidance\"\n    when \"Client is not due for pneumococcal booster dose\" then \"Client is not due for pneumococcal booster dose Guidance\"\n    when \"Client is due for pneumococcal booster dose\" then \"Client is due for pneumococcal booster dose Guidance\"\n    when \"Clinical judgement is required. Create a clinical note.\" then \"Clinical judgement is required. Create a clinical note. Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTPneumococcal3DosesLogic"
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
        "valueInteger" : 87
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueString" : "earliest"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function earliest(immunizations List<Immunization>):\n  First(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
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
        "valueString" : "mostRecent"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function mostRecent(immunizations List<Immunization>):\n  Last(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
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
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if the given reference is to the given resourceId\n@comment: Returns true if the `resourceId` parameter exactly equals the tail of the given reference.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(reference FHIR.Reference, resourceId String):\n  resourceId = Last(Split(reference.reference, '/'))"
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
        "valueString" : "complete"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function complete(observations List<Observation>):\n  observations O where O.status in { 'final', 'amended', 'corrected' }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 105
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
        "valueInteger" : 106
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
        "valueInteger" : 107
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
      "name" : "Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Client is due for pneumococcal vaccination",
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
    },
    {
      "name" : "Client is due for pneumococcal booster dose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPneumococcal3Doses",
  "version" : "1.0.0",
  "name" : "IMMZD2DTPneumococcal3Doses",
  "title" : "IMMZ.D2.DT.Pneumococcal.3 doses",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-09T14:34:42+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.Pneumococcal.3 doses\n3 primary doses (3p+0)",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTPneumococcal3DosesLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "For administration of pneumococcal vaccine to infants, WHO recommends a 3-dose schedule \n  administered either as 2p+1 or as 3p+0, starting as early as 6 weeks of age."
    }],
    "title" : "Determine if the client is due for BCG.",
    "description" : "Determine if the client is due for BCG vaccine according to the national immunization protocol.\n3 primary doses (3p+0)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for pneumococcal vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for pneumococcal vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE13', display: 'Pneumococcal vaccines' } }, display: 'Pneumococcal vaccines' }"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses \n  before 12 months of age may benefit from a booster dose in the second year of life."
    }],
    "title" : "Determine if the client is due for BCG.",
    "description" : "Determine if the client is due for BCG vaccine according to the national immunization protocol.\n3 primary doses (3p+0)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for pneumococcal booster dose",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for pneumococcal booster dose"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE13', display: 'Pneumococcal vaccines' } }, display: 'Pneumococcal vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Pneumococcal.3 doses.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Pneumococcal.3 doses.",
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
