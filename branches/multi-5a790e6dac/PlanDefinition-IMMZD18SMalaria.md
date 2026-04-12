# IMMZ.D18.S.Malaria schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Malaria schedule**

## PlanDefinition: IMMZ.D18.S.Malaria schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMalaria | *Version*:0.2.0 |
| Draft as of 2026-04-03 | *Computable Name*:IMMZD18SMalaria |

 
IMMZ.D18.S.Malaria schedule 4-dose schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Malaria schedule](PlanDefinition-IMMZD18SMalaria.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Malaria schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-03 22:35:55+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Malaria schedule 4-dose schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SMalariaLogic](Library-IMMZD18SMalariaLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMalaria",
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Malaria Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Malaria containing Doses Administered to Patient\n*/\ndefine \"Malaria Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Malaria vaccines\""
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Malaria Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Malaria containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Malaria Primary Series Doses Administered to Patient\":\n  \"Malaria Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Malaria Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Malaria Primary Series doses\n*/\ndefine \"Number of Malaria Primary Series Doses Administered\":\n  Count(\"Malaria Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One malaria primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One malaria primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One malaria primary series dose was administered-116\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"One malaria primary series dose was administered\":\n  \"Number of Malaria Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "First malaria dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First malaria dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n*/\ndefine \"First malaria dose from the primary series was administered\":\n  Encounter.\"One malaria primary series dose was administered\""
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two malaria primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two malaria primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two malaria primary series doses were administered-116\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"Two malaria primary series doses were administered\":\n  \"Number of Malaria Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second malaria dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second malaria dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n*/\ndefine \"Second malaria dose from the primary series was administered\":\n  Encounter.\"Two malaria primary series doses were administered\""
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria dose 2\n@description: Provision of the malaria dose 2\n@trigger: First malaria dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@triggerDate: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\")\n*/\ndefine \"Malaria dose 2\":\n  \"First malaria dose from the primary series was administered\"\n  and not \"Second malaria dose from the primary series was administered\""
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Three malaria primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three malaria primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three malaria primary series doses were administered-116\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"Three malaria primary series doses were administered\":\n  \"Number of Malaria Primary Series Doses Administered\" = 3"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Third malaria dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Third malaria dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n*/\ndefine \"Third malaria dose from the primary series was administered\":\n  Encounter.\"Three malaria primary series doses were administered\""
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria dose 3\n@description: Provision of the malaria dose 3\n@trigger: Second malaria dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\")\n*/\ndefine \"Malaria dose 3\":\n  \"Second malaria dose from the primary series was administered\"\n  and not \"Third malaria dose from the primary series was administered\""
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Malaria Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Malaria Dose\n*/\ndefine \"Date of Latest Malaria Dose\":\n  date from start of \"Malaria Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 3 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Malaria dose 3 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") + 4 weeks\n*/\ndefine \"Malaria dose 3 Due Date\":\n  if \"Malaria dose 3\" then Encounter.\"Date of Latest Malaria Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 3 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria dose 3 Create\n@create: There should be a minimum interval of 4 weeks between doses.\n*/\ndefine \"Malaria dose 3 Create\":\n  if \"Malaria dose 3\"\n  then 'There should be a minimum interval of 4 weeks between doses.' + '\nDue Date: ' + ToString(\"Malaria dose 3 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Four malaria primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Four malaria primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 4\n@code: Four malaria primary series doses were administered-116\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"Four malaria primary series doses were administered\":\n  \"Number of Malaria Primary Series Doses Administered\" = 4"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Fourth malaria dose from the primary series was administered. The primary series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Fourth malaria dose from the primary series was administered. The primary series has been completed\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Malaria vaccines\")\"\n*/\ndefine \"Fourth malaria dose from the primary series was administered. The primary series has been completed\":\n  Encounter.\"Four malaria primary series doses were administered\""
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria dose 4\n@description: Provision of the malaria dose 4\n@trigger: Third malaria dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\")\n*/\ndefine \"Malaria dose 4\":\n  \"Third malaria dose from the primary series was administered\"\n  and not \"Fourth malaria dose from the primary series was administered. The primary series has been completed\""
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 4 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Malaria dose 4 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") + 4 weeks\n*/\ndefine \"Malaria dose 4 Due Date\":\n  if \"Malaria dose 4\" then Encounter.\"Date of Latest Malaria Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 4 Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Malaria dose 4 Overdue\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") + 18 months\n*/\ndefine \"Malaria dose 4 Overdue\":\n  if \"Malaria dose 4\" then Encounter.\"Date of Latest Malaria Dose\" + 18 months\n  else null"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 4 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria dose 4 Create\n@create: There should be a minimum interval of 4 weeks between doses. The fourth dose should be provided approximately 12–18 months after the third dose to prolong the duration of protection.\n*/\ndefine \"Malaria dose 4 Create\":\n  if \"Malaria dose 4\"\n  then 'There should be a minimum interval of 4 weeks between doses. The fourth dose should be provided approximately 12–18 months after the third dose to prolong the duration of protection.' + '\nDue Date: ' + ToString(\"Malaria dose 4 Due Date\") + '\nOverdue: ' + ToString(\"Malaria dose 4 Overdue\")\n  else ''"
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No malaria primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No malaria primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No malaria primary series doses were administered-116\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"No malaria primary series doses were administered\":\n  \"Number of Malaria Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria dose 1\n@description: Provision of the malaria dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"Malaria dose 1\":\n  Encounter.\"No malaria primary series doses were administered\"\n  and not \"First malaria dose from the primary series was administered\""
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 2 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Malaria dose 2 Due Date\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") + 4 weeks\n*/\ndefine \"Malaria dose 2 Due Date\":\n  if \"Malaria dose 2\" then Encounter.\"Date of Latest Malaria Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 2 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria dose 2 Create\n@create: There should be a minimum interval of 4 weeks between doses.\n*/\ndefine \"Malaria dose 2 Create\":\n  if \"Malaria dose 2\"\n  then 'There should be a minimum interval of 4 weeks between doses.' + '\nDue Date: ' + ToString(\"Malaria dose 2 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Malaria dose 1 Due Date\n@pseudocode: \"Date of birth\" + 5 months\n*/\ndefine \"Malaria dose 1 Due Date\":\n  if \"Malaria dose 1\" then Patient.birthDate + 5 months\n  else null"
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
        "valueString" : "IMMZD18SMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria dose 1 Create\n@create: WHO recommends that the first dose of vaccine be administered from 5 months of age.\n*/\ndefine \"Malaria dose 1 Create\":\n  if \"Malaria dose 1\"\n  then 'WHO recommends that the first dose of vaccine be administered from 5 months of age.' + '\nDue Date: ' + ToString(\"Malaria dose 1 Due Date\")\n  else ''"
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
        "valueInteger" : 28
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueString" : "mostRecent"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function mostRecent(immunizations List<Immunization>):\n  Last(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMalariaEncounterElements"
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
      "display" : "Value set Malaria vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE27"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "Malaria dose 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Malaria dose 3",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Malaria dose 3 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Malaria dose 4 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Malaria dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Malaria dose 2 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Malaria dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Malaria dose 4",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMalaria",
  "version" : "0.2.0",
  "name" : "IMMZD18SMalaria",
  "title" : "IMMZ.D18.S.Malaria schedule",
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
  "description" : "IMMZ.D18.S.Malaria schedule\n4-dose schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SMalariaLogic"],
  "action" : [{
    "title" : "Malaria dose 1",
    "description" : "Provision of the malaria dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: WHO recommends that the first dose of vaccine be administered from 5 months of age.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Malaria dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Malaria dose 1"
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
        "expression" : "Malaria dose 1 Create"
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
    "title" : "Malaria dose 2",
    "description" : "Provision of the malaria dose 2\nTrigger event: First malaria dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\")\nCreate condition: There should be a minimum interval of 4 weeks between doses.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Malaria dose 2",
        "language" : "text/cql-identifier",
        "expression" : "Malaria dose 2"
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
        "expression" : "Malaria dose 2 Create"
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
    "title" : "Malaria dose 3",
    "description" : "Provision of the malaria dose 3\nTrigger event: Second malaria dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\")\nCreate condition: There should be a minimum interval of 4 weeks between doses.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Malaria dose 3",
        "language" : "text/cql-identifier",
        "expression" : "Malaria dose 3"
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
        "expression" : "Malaria dose 3 Create"
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
    "title" : "Malaria dose 4",
    "description" : "Provision of the malaria dose 4\nTrigger event: Third malaria dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 3\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\")\nCreate condition: There should be a minimum interval of 4 weeks between doses. The fourth dose should be provided approximately 12–18 months after the third dose to prolong the duration of protection.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Malaria dose 4",
        "language" : "text/cql-identifier",
        "expression" : "Malaria dose 4"
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
        "expression" : "Malaria dose 4 Create"
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
