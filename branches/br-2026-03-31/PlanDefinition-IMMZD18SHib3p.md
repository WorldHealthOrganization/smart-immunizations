# IMMZ.D18.S.Hib.3 doses schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Hib.3 doses schedule**

## PlanDefinition: IMMZ.D18.S.Hib.3 doses schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHib3p | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SHib3p |

 
IMMZ.D18.S.Hib.3 doses schedule 3 primary doses without a booster dose (3p) schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Hib.3 doses schedule](PlanDefinition-IMMZD18SHib3p.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Hib.3 doses schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-31 13:43:43+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Hib.3 doses schedule 3 primary doses without a booster dose (3p) schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SHib3pLogic](Library-IMMZD18SHib3pLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHib3p",
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
        "valueInteger" : 2
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
        "valueInteger" : 3
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
        "valueString" : "One Hib primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One Hib primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 1\n@decision: 3 primary doses without a booster dose (3p)\n@decision: 3 primary doses with a booster dose (3p+1)\n*/\ndefine \"One Hib primary series dose was administered\":\n  \"Number of Hib Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "First Hib dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First Hib dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 1\n*/\ndefine \"First Hib dose from the primary series was administered\":\n  Encounter.\"One Hib primary series dose was administered\""
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
        "valueString" : "Date of First Hib Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date and time of first Hib dose\n*/\ndefine \"Date of First Hib Dose\":\n  date from start of \"Hib Doses Administered to Patient\".earliest().occurrence.toInterval()"
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
        "valueString" : "Client's age was less than 1 year when first Hib dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age was less than 1 year when first Hib dose was administered\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\"= \"Hib-containing vaccines\" and \"Dose number\" = 1) − \"Date of birth\" < 1 year\n@decision: 3 primary doses without a booster dose (3p)\n@decision: 3 primary doses with a booster dose (3p+1)\n@decision: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Client's age was less than 1 year when first Hib dose was administered\":\n  AgeInYearsAt(\"Date of First Hib Dose\") < 1"
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
        "valueString" : "Current Patient Age In Weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in weeks\n */\ndefine \"Current Patient Age In Weeks\":\n  AgeInWeeksAt(Today)"
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
        "valueString" : "/*\n@input: Client's age is between 6 weeks and 5 years\n@pseudocode: 6 weeks ≤ Today's date − \"Date of birth\" ≤ 5 years\n@decision: 3 primary doses without a booster dose (3p)\n@decision: 3 primary doses with a booster dose (3p+1)\n@decision: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Client's age is between 6 weeks and 5 years\":\n  6 <= Encounter.\"Current Patient Age In Weeks\" \n  and Encounter.\"Current Patient Age In Years\" <= 5"
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
        "valueString" : "Two Hib primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two Hib primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\" = \"Primary series\" ) = 2\n@decision: 3 primary doses without a booster dose (3p)\n@decision: 3 primary doses with a booster dose (3p+1)\n@decision: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"Two Hib primary series doses were administered\":\n  \"Number of Hib Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second Hib dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second Hib dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 2\n*/\ndefine \"Second Hib dose from the primary series was administered\":\n  Encounter.\"Two Hib primary series doses were administered\""
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib dose 2 Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Hib dose 2 Expiration\n@pseudocode: \"Date of birth\" + 6 years\n*/\ndefine \"Hib dose 2 Expiration\":\n  Patient.birthDate + 6 years"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib dose 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hib dose 2\n@description: Provision of the Hib dose 2\n@trigger: First Hib dose from the primary series was administered to the client within 1 year of age. Client's age is less than 5 years\nCount of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\"= \"Hib-containing vaccines\" and \"Dose number\" = 1) − \"Date of birth\" < 1 year AND Today's date − \"Date of birth\" ≤ 5 years\n@triggerDate: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\")\n*/\ndefine \"Hib dose 2\":\n  \"First Hib dose from the primary series was administered\"\n  and Encounter.\"Client's age was less than 1 year when first Hib dose was administered\"\n  and Encounter.\"Client's age is between 6 weeks and 5 years\"\n  and not \"Second Hib dose from the primary series was administered\"\n  and \"Hib dose 2 Expiration\" after day of Today"
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
        "valueString" : "Three Hib primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three Hib primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 3\n@decision: 3 primary doses without a booster dose (3p)\n@decision: 3 primary doses with a booster dose (3p+1)\n*/\ndefine \"Three Hib primary series doses were administered\":\n  \"Number of Hib Primary Series Doses Administered\" = 3"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Third Hib dose from the primary series was administered. The primary series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Third Hib dose from the primary series was administered. The primary series has been completed\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Hib-containing vaccines\")\n*/\ndefine \"Third Hib dose from the primary series was administered. The primary series has been completed\":\n  Encounter.\"Three Hib primary series doses were administered\""
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib dose 3 Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Hib dose 3 Expiration\n@pseudocode: \"Date of birth\" + 6 years\n*/\ndefine \"Hib dose 3 Expiration\":\n  Patient.birthDate + 6 years"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib dose 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hib dose 3\n@description: Provision of the Hib dose 3\n@trigger: Second Hib dose from the primary series was administered. Client's age is less than 5 years\nCount of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 2 AND Today's date − \"Date of birth\" ≤ 5 years\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\")\n*/\ndefine \"Hib dose 3\":\n  \"Second Hib dose from the primary series was administered\"\n  and Encounter.\"Client's age is between 6 weeks and 5 years\"\n  and not \"Third Hib dose from the primary series was administered. The primary series has been completed\"\n  and \"Hib dose 3 Expiration\" after day of Today"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Hib Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date and time of last Hib dose\n*/\ndefine \"Date of Latest Hib Dose\":\n  date from start of \"Hib Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib dose 3 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Hib dose 3 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\") + 4 weeks\n*/\ndefine \"Hib dose 3 Due Date\":\n  if \"Hib dose 3\" then Encounter.\"Date of Latest Hib Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib dose 3 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hib dose 3 Create\n@create: Hib dose 3 should be provided if the client was given the previous dose more than 4 weeks before and the first Hib dose was received by the time the child turned 1 year old\n*/\ndefine \"Hib dose 3 Create\":\n  if \"Hib dose 3\" \n  then 'Hib dose 3 should be provided if the client was given the previous dose more than 4 weeks before and the first Hib dose was received by the time the child turned 1 year old' + '\nDue Date: ' + ToString(\"Hib dose 3 Due Date\") + '\nExpiration: ' + ToString(\"Hib dose 3 Expiration\")\n  else ''"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib dose 2 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Hib dose 2 Due Date\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\") + 4 weeks\n*/\ndefine \"Hib dose 2 Due Date\":\n  if \"Hib dose 2\" then Encounter.\"Date of Latest Hib Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Hib dose 2 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Hib dose 2 Create\n@create: Hib dose 2 should be provided if the client was given the previous dose more than 4 weeks ago and the first Hib dose was received by the time the child turned 1 year old\n*/\ndefine \"Hib dose 2 Create\":\n  if \"Hib dose 2\" \n  then 'Hib dose 2 should be provided if the client was given the previous dose more than 4 weeks ago and the first Hib dose was received by the time the child turned 1 year old' + '\nDue Date: ' + ToString(\"Hib dose 2 Due Date\") + '\nExpiration: ' + ToString(\"Hib dose 2 Expiration\")\n  else ''"
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
        "valueString" : "IMMZD2DTHibEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No Hib primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No Hib primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@decision: 3 primary doses without a booster dose (3p)\n@decision: 3 primary doses with a booster dose (3p+1)\n@decision: 2 primary doses with a booster dose (2p+1)\n*/\ndefine \"No Hib primary series doses were administered\":\n  \"Number of Hib Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Haemophilus influenzae type b (Hib) dose 1 Expiration"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Haemophilus influenzae type b (Hib) dose 1 Expiration\n@pseudocode: \"Date of birth\" + 6 years\n*/\ndefine \"Haemophilus influenzae type b (Hib) dose 1 Expiration\":\n  Patient.birthDate + 6 years"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Haemophilus influenzae type b (Hib) dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Haemophilus influenzae type b (Hib) dose 1\n@description: Provision of the Hib dose 1\n@trigger: Child's birth\n@triggerDate: \"Date of birth\"\n*/\ndefine \"Haemophilus influenzae type b (Hib) dose 1\":\n  Encounter.\"No Hib primary series doses were administered\"\n  and \"Haemophilus influenzae type b (Hib) dose 1 Expiration\" after day of Today"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Haemophilus influenzae type b (Hib) dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Haemophilus influenzae type b (Hib) dose 1 Due Date\n@pseudocode: \"Date of birth\" + 6 weeks\n*/\ndefine \"Haemophilus influenzae type b (Hib) dose 1 Due Date\":\n  if \"Haemophilus influenzae type b (Hib) dose 1\" then Patient.birthDate + 6 weeks\n  else null"
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
        "valueString" : "IMMZD18SHib3pLogic"
      },
      {
        "url" : "name",
        "valueString" : "Haemophilus influenzae type b (Hib) dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Haemophilus influenzae type b (Hib) dose 1 Create\n@create: Immunization should start from 6 weeks of age, or as early as possible thereafter.\nHib-containing vaccine is not required for healthy children aged over 5 years.\n*/\ndefine \"Haemophilus influenzae type b (Hib) dose 1 Create\":\n  if \"Haemophilus influenzae type b (Hib) dose 1\" \n  then 'Immunization should start from 6 weeks of age, or as early as possible thereafter.\nHib-containing vaccine is not required for healthy children aged over 5 years.' + '\nDue Date: ' + ToString(\"Haemophilus influenzae type b (Hib) dose 1 Due Date\") + '\nExpiration: ' + ToString(\"Haemophilus influenzae type b (Hib) dose 1 Expiration\")\n  else ''"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 43
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
        "valueInteger" : 44
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
      "name" : "Hib dose 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Hib dose 3 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Hib dose 3",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Hib dose 2 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Haemophilus influenzae type b (Hib) dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Haemophilus influenzae type b (Hib) dose 1",
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
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE4"
      }]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["birthDate"]
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHib3p",
  "version" : "0.2.0",
  "name" : "IMMZD18SHib3p",
  "title" : "IMMZ.D18.S.Hib.3 doses schedule",
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
  "description" : "IMMZ.D18.S.Hib.3 doses schedule\n3 primary doses without a booster dose (3p) schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SHib3pLogic"],
  "action" : [{
    "title" : "Haemophilus influenzae type b (Hib) dose 1",
    "description" : "Provision of the Hib dose 1\nTrigger event: Child's birth\nTrigger date: \"Date of birth\"\nCreate condition: Immunization should start from 6 weeks of age, or as early as possible thereafter.\nHib-containing vaccine is not required for healthy children aged over 5 years.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Haemophilus influenzae type b (Hib) dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Haemophilus influenzae type b (Hib) dose 1"
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
        "expression" : "Haemophilus influenzae type b (Hib) dose 1 Create"
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
    "title" : "Hib dose 2",
    "description" : "Provision of the Hib dose 2\nTrigger event: First Hib dose from the primary series was administered to the client within 1 year of age. Client's age is less than 5 years\nCount of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\"= \"Hib-containing vaccines\" and \"Dose number\" = 1) − \"Date of birth\" < 1 year AND Today's date − \"Date of birth\" ≤ 5 years\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\")\nCreate condition: Hib dose 2 should be provided if the client was given the previous dose more than 4 weeks ago and the first Hib dose was received by the time the child turned 1 year old",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Hib dose 2",
        "language" : "text/cql-identifier",
        "expression" : "Hib dose 2"
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
        "expression" : "Hib dose 2 Create"
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
    "title" : "Hib dose 3",
    "description" : "Provision of the Hib dose 3\nTrigger event: Second Hib dose from the primary series was administered. Client's age is less than 5 years\nCount of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 2 AND Today's date − \"Date of birth\" ≤ 5 years\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\")\nCreate condition: Hib dose 3 should be provided if the client was given the previous dose more than 4 weeks before and the first Hib dose was received by the time the child turned 1 year old",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Hib dose 3",
        "language" : "text/cql-identifier",
        "expression" : "Hib dose 3"
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
        "expression" : "Hib dose 3 Create"
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
