# IMMZ.D2.DT.Hib.2 doses with booster dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Hib.2 doses with booster dose**

## PlanDefinition: IMMZ.D2.DT.Hib.2 doses with booster dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD2DTHib2DosesWithBoosterDose |

 
IMMZ.D2.DT.Hib.2 doses with booster dose 2 primary doses with a booster dose (2p+1) 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Hib.2 doses with booster dose](PlanDefinition-IMMZD2DTHib2DosesWithBoosterDose.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Hib.2 doses with booster dose
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Hib.2 doses with booster dose 2 primary doses with a booster dose (2p+1)
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTHib2DosesWithBoosterDoseLogic](Library-IMMZD2DTHib2DosesWithBoosterDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTHib2DosesWithBoosterDose",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "contained" : [{
    "resourceType" : "Library",
    "id" : "effective-data-requirements",
    "extension" : [{
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 6 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 6 weeks\n@pseudocode: Today's date − \"Date of birth\" < 6 weeks\n@code: Client's age is less than 6 weeks-40\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Client's age is less than 6 weeks\":\n  Encounter.\"Current Patient Age In Weeks\" < 6"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hib vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hib vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Hib vaccination Case 1\":\n  Encounter.\"Client's age is less than 6 weeks\""
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hib Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hib containing Doses Administered to Patient\n*/\ndefine \"Hib Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Hib-containing vaccines\""
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hib Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hib containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Hib Primary Series Doses Administered to Patient\":\n  \"Hib Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Hib Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Hib Primary Series doses\n*/\ndefine \"Number of Hib Primary Series Doses Administered\":\n  Count(\"Hib Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One Hib primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One Hib primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 1\n@code: One Hib primary series dose was administered-122\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n*/\ndefine \"One Hib primary series dose was administered\":\n  \"Number of Hib Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One Hib primary series doses was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One Hib primary series doses was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 1\n@code: One Hib primary series doses was administered-122\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"One Hib primary series doses was administered\":\n  \"One Hib primary series dose was administered\""
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
        "valueString" : "Current Patient Age In Years"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in years\n */\ndefine \"Current Patient Age In Years\":\n  AgeInYearsAt(Today)"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is between 6 weeks and 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is between 6 weeks and 5 years\n@pseudocode: 6 weeks ≤ Today's date − \"Date of birth\" ≤ 5 years\n@code: Client's age is between 6 weeks and 5 years-50\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Client's age is between 6 weeks and 5 years\":\n  6 <= Encounter.\"Current Patient Age In Weeks\"\n  and Encounter.\"Current Patient Age In Years\" <= 5"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is at least 6 weeks and not more than 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is at least 6 weeks and not more than 5 years\n@pseudocode: 6 weeks ≤ Today's date − \"Date of birth\" ≤ 5 years\n@code: Client's age is at least 6 weeks and not more than 5 years-50\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Client's age is at least 6 weeks and not more than 5 years\":\n  \"Client's age is between 6 weeks and 5 years\""
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of First Hib Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of First Hib Dose\n*/\ndefine \"Date of First Hib Dose\":\n  date from start of \"Hib Doses Administered to Patient\".earliest().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age was less than 1 year when first Hib dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age was less than 1 year when first Hib dose was administered\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\"= \"Hib-containing vaccines\" and \"Dose number\" = 1) − \"Date of birth\" < 1 year\n@code: Client's age was less than 1 year when first Hib dose was administered-129\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Client's age was less than 1 year when first Hib dose was administered\":\n  AgeInYearsAt(\"Date of First Hib Dose\") < 1"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Hib Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Hib Dose\n*/\ndefine \"Date of Latest Hib Dose\":\n  date from start of \"Hib Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest Hib dose was administered less than 8 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest Hib dose was administered less than 8 weeks ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\") < 8 weeks\n@code: The latest Hib dose was administered less than 8 weeks ago-113\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"The latest Hib dose was administered less than 8 weeks ago\":\n  \"Date of Latest Hib Dose\" is not null\n    and duration in weeks between \"Date of Latest Hib Dose\" and Today < 8"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hib vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hib vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Hib vaccination Case 2\":\n  Encounter.\"One Hib primary series doses was administered\"\n    and Encounter.\"Client's age is at least 6 weeks and not more than 5 years\"\n    and Encounter.\"Client's age was less than 1 year when first Hib dose was administered\"\n    and Encounter.\"The latest Hib dose was administered less than 8 weeks ago\""
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than 5 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than 5 years\n@pseudocode: Today's date − \"Date of birth\" > 5 years\n@code: Client's age is more than 5 years-40\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Client's age is more than 5 years\":\n  Encounter.\"Current Patient Age In Years\" > 5"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hib vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hib vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Hib vaccination Case 3\":\n  Encounter.\"Client's age is more than 5 years\""
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hib vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hib vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Hib vaccination\":\n  \"Client is not due for Hib vaccination Case 1\"\n    or \"Client is not due for Hib vaccination Case 2\"\n    or \"Client is not due for Hib vaccination Case 3\""
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Hib vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Hib vaccination Guidance\n@guidance = Should not vaccinate client with first Hib dose as client's age is less than 6 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose.\n@guidance = Should not vaccinate client with second Hib dose as the latest Hib dose was administered less than 8 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second dose.\n@guidance = Should not vaccinate client with Hib dose as client is more than 5 years old and Hib vaccination is not required for healthy children aged over 5 years. \nCheck for any other vaccines due.\n*/\ndefine \"Client is not due for Hib vaccination Guidance\":\n  case\n    when \"Client is not due for Hib vaccination Case 1\" then 'Should not vaccinate client with first Hib dose as client\\'s age is less than 6 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose.'\n    when \"Client is not due for Hib vaccination Case 2\" then 'Should not vaccinate client with second Hib dose as the latest Hib dose was administered less than 8 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second dose.'\n    when \"Client is not due for Hib vaccination Case 3\" then 'Should not vaccinate client with Hib dose as client is more than 5 years old and Hib vaccination is not required for healthy children aged over 5 years. \nCheck for any other vaccines due.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No Hib primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No Hib primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No Hib primary series doses were administered-123\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"No Hib primary series doses were administered\":\n  \"Number of Hib Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Hib vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Hib vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for Hib vaccination Case 1\":\n  Encounter.\"No Hib primary series doses were administered\"\n    and Encounter.\"Client's age is between 6 weeks and 5 years\""
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest Hib dose was administered more than 8 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest Hib dose was administered more than 8 weeks ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\") ≥ 8 weeks\n@code: The latest Hib dose was administered more than 8 weeks ago-113\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"The latest Hib dose was administered more than 8 weeks ago\":\n  not(\"The latest Hib dose was administered less than 8 weeks ago\")"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Hib vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Hib vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for Hib vaccination Case 2\":\n  Encounter.\"One Hib primary series doses was administered\"\n    and Encounter.\"Client's age is at least 6 weeks and not more than 5 years\"\n    and Encounter.\"Client's age was less than 1 year when first Hib dose was administered\"\n    and Encounter.\"The latest Hib dose was administered more than 8 weeks ago\""
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Hib vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Hib vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for Hib vaccination\":\n  \"Client is due for Hib vaccination Case 1\"\n    or \"Client is due for Hib vaccination Case 2\""
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Hib vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Hib vaccination Guidance\n@guidance = Should vaccinate client with first Hib dose as client is within appropriate age range. \nCheck for contraindications.\n@guidance = Should vaccinate client with second Hib dose as client's age was less than 1 year when first Hib dose was adminsitered and latest Hib dose was administered more than 8 weeks ago. \nCheck for contraindications.\n*/\ndefine \"Client is due for Hib vaccination Guidance\":\n  case\n    when \"Client is due for Hib vaccination Case 1\" then 'Should vaccinate client with first Hib dose as client is within appropriate age range. \nCheck for contraindications.'\n    when \"Client is due for Hib vaccination Case 2\" then 'Should vaccinate client with second Hib dose as client\\'s age was less than 1 year when first Hib dose was adminsitered and latest Hib dose was administered more than 8 weeks ago. \nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age was more than 1 year when first Hib dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age was more than 1 year when first Hib dose was administered\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\"= \"Hib-containing vaccines\" and \"Dose number\" = 1) − \"Date of birth\" ≥ 1 year\n@code: Client's age was more than 1 year when first Hib dose was administered-129\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Client's age was more than 1 year when first Hib dose was administered\":\n  AgeInYearsAt(\"Date of First Hib Dose\") >= 1"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib immunization schedule is complete Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hib immunization schedule is complete Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hib-containing vaccines\")\n*/\ndefine \"Hib immunization schedule is complete Case 1\":\n  Encounter.\"One Hib primary series doses was administered\"\n    and Encounter.\"Client's age is at least 6 weeks and not more than 5 years\"\n    and Encounter.\"Client's age was more than 1 year when first Hib dose was administered\""
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two Hib primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two Hib primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\" = \"Primary series\" ) = 2\n@code: Two Hib primary series doses were administered-124\n@decision: IMMZ.D2.DT.Hib.3 doses: 3 primary doses without a booster dose (3p)\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Two Hib primary series doses were administered\":\n  \"Number of Hib Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Hib Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Hib Booster Series Doses Administered to Patient\n*/\ndefine \"Hib Booster Series Doses Administered to Patient\":\n  \"Hib Doses Administered to Patient\".seriesBooster()"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Hib Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Hib Booster Series Doses Administered\n*/\ndefine \"Number of Hib Booster Series Doses Administered\":\n  Count(\"Hib Booster Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One Hib booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One Hib booster dose was administered\n@pseudocode: Count of vaccines administered where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n@code: One Hib booster dose was administered-120\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"One Hib booster dose was administered\":\n  \"Number of Hib Booster Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib immunization schedule is complete Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hib immunization schedule is complete Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n*/\ndefine \"Hib immunization schedule is complete Case 2\":\n  Encounter.\"Two Hib primary series doses were administered\"\n    and Encounter.\"One Hib booster dose was administered\""
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hib immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hib-containing vaccines\")\n*/\ndefine \"Hib immunization schedule is complete\":\n  \"Hib immunization schedule is complete Case 1\"\n    or \"Hib immunization schedule is complete Case 2\""
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hib immunization schedule is complete Guidance\n@guidance = Hib immunization schedule is complete as client's age was more than 1 year when first Hib dose was administered.\nCheck for any other vaccines due.\n@guidance = Hib immunization schedule is complete. Three Hib primary series doses and a booster dose were administered. \nCheck for any vaccines due.\n*/\ndefine \"Hib immunization schedule is complete Guidance\":\n  case\n    when \"Hib immunization schedule is complete Case 1\" then 'Hib immunization schedule is complete as client\\'s age was more than 1 year when first Hib dose was administered.\nCheck for any other vaccines due.'\n    when \"Hib immunization schedule is complete Case 2\" then 'Hib immunization schedule is complete. Three Hib primary series doses and a booster dose were administered. \nCheck for any vaccines due.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No Hib booster doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No Hib booster doses were administered\n@pseudocode: Count of vaccines administered where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"\" = \"Booster dose\") = 0\n@code: No Hib booster doses were administered-121\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"No Hib booster doses were administered\":\n  \"Number of Hib Booster Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest Hib dose was administered less than 6 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest Hib dose was administered less than 6 months ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\") < 6 months\n@code: The latest Hib dose was administered less than 6 months ago-114\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"The latest Hib dose was administered less than 6 months ago\":\n  \"Date of Latest Hib Dose\" is not null\n    and duration in months between \"Date of Latest Hib Dose\" and Today < 6"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is not due for Hib booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is not due for Hib booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hib-containing vaccines\")\n*/\ndefine \"Primary series is complete. Client is not due for Hib booster dose\":\n  Encounter.\"Two Hib primary series doses were administered\"\n    and Encounter.\"No Hib booster doses were administered\"\n    and Encounter.\"Client's age is at least 6 weeks and not more than 5 years\"\n    and Encounter.\"The latest Hib dose was administered less than 6 months ago\""
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is not due for Hib booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is not due for Hib booster dose Guidance\n@guidance: Should not vaccinate client with Hib booster dose as latest Hib dose was administered less than 6 months ago. Hib primary series is complete. \nCheck for any other vaccines due and inform the caregiver of when to come back for booster dose.\n*/\ndefine \"Primary series is complete. Client is not due for Hib booster dose Guidance\":\n  'Should not vaccinate client with Hib booster dose as latest Hib dose was administered less than 6 months ago. Hib primary series is complete. \nCheck for any other vaccines due and inform the caregiver of when to come back for booster dose.'"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest Hib dose was administered more than 6 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest Hib dose was administered more than 6 months ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\") ≥ 6 months\n@code: The latest Hib dose was administered more than 6 months ago-114\n@decision: IMMZ.D2.DT.Hib.3 doses with booster dose: 3 primary doses with a booster dose (3p+1)\n@decision: IMMZ.D2.DT.Hib.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"The latest Hib dose was administered more than 6 months ago\":\n  not(\"The latest Hib dose was administered less than 6 months ago\")"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is due for Hib booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is due for Hib booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hib-containing vaccines\")\n*/\ndefine \"Primary series is complete. Client is due for Hib booster dose\":\n  Encounter.\"Two Hib primary series doses were administered\"\n    and Encounter.\"No Hib booster doses were administered\"\n    and Encounter.\"Client's age is at least 6 weeks and not more than 5 years\"\n    and Encounter.\"The latest Hib dose was administered more than 6 months ago\""
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is due for Hib booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is due for Hib booster dose Guidance\n@guidance: Should vaccinate client with Hib booster dose as primary series is complete and the latest Hib dose was administered more than 6 months ago. \nCheck for contraindications.\n*/\ndefine \"Primary series is complete. Client is due for Hib booster dose Guidance\":\n  'Should vaccinate client with Hib booster dose as primary series is complete and the latest Hib dose was administered more than 6 months ago. \nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for Hib vaccination\" then \"Client is not due for Hib vaccination Guidance\"\n    when \"Client is due for Hib vaccination\" then \"Client is due for Hib vaccination Guidance\"\n    when \"Hib immunization schedule is complete\" then \"Hib immunization schedule is complete Guidance\"\n    when \"Primary series is complete. Client is not due for Hib booster dose\" then \"Primary series is complete. Client is not due for Hib booster dose Guidance\"\n    when \"Primary series is complete. Client is due for Hib booster dose\" then \"Primary series is complete. Client is due for Hib booster dose Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTHib2DosesWithBoosterDoseLogic"
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
        "valueInteger" : 45
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
        "valueInteger" : 46
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
        "valueInteger" : 47
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
        "valueInteger" : 48
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 52
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
        "valueInteger" : 53
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
        "valueInteger" : 54
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHibEncounterElements"
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
      "display" : "Value set Hib-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE4"
    }],
    "parameter" : [{
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
      "name" : "Client is due for Hib vaccination",
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
      "name" : "Primary series is complete. Client is due for Hib booster dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    }],
    "dataRequirement" : [{
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
    },
    {
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHib2DosesWithBoosterDose",
  "title" : "IMMZ.D2.DT.Hib.2 doses with booster dose",
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
  "description" : "IMMZ.D2.DT.Hib.2 doses with booster dose\n2 primary doses with a booster dose (2p+1)",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTHib2DosesWithBoosterDoseLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Because serious Hib disease occurs most commonly in children aged between 4 months and 18 months, \n  immunization should start from 6 weeks of age, or as early as possible thereafter. The interval between doses \n  should be at least 8 weeks if 2 primary doses are given. Hib-containing vaccine is not required for healthy \n  children aged over 5 years."
    }],
    "title" : "Determine if the client is due for HIb.",
    "description" : "Determine if the client is due for HIb vaccine according to the national immunization protocol.\n2 primary doses with a booster dose (2p+1)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for Hib vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for Hib vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE4', display: 'Hib-containing vaccines' } }, display: 'Hib-containing vaccines' }"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Booster doses should be administered at least 6 months after completion of the primary series. "
    }],
    "title" : "Determine if the client is due for HIb.",
    "description" : "Determine if the client is due for HIb vaccine according to the national immunization protocol.\n2 primary doses with a booster dose (2p+1)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Primary series is complete. Client is due for Hib booster dose",
        "language" : "text/cql-identifier",
        "expression" : "Primary series is complete. Client is due for Hib booster dose"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE4', display: 'Hib-containing vaccines' } }, display: 'Hib-containing vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Hib.2 doses with booster dose.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Hib.2 doses with booster dose.",
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
