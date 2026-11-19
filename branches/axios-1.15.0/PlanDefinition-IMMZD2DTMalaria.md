# IMMZ.D2.DT.Malaria - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Malaria**

## PlanDefinition: IMMZ.D2.DT.Malaria 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMalaria | *Version*:0.2.0 |
| Draft as of 2026-04-12 | *Computable Name*:IMMZD2DTMalaria |

 
IMMZ.D2.DT.Malaria 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO) 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Malaria](PlanDefinition-IMMZD2DTMalaria.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Malaria
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-12 07:49:12+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Malaria 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTMalariaLogic](Library-IMMZD2DTMalariaLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTMalaria",
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
        "valueString" : "Current Patient Age In Months"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in months\n */\ndefine \"Current Patient Age In Months\":\n  AgeInMonthsAt(Today)"
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 5 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 5 months\n@pseudocode: Today's date − \"Date of birth\" < 5 months\n@code: Client's age is less than 5 months-41\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"Client's age is less than 5 months\":\n  Encounter.\"Current Patient Age In Months\" < 5"
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for malaria vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for malaria vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for malaria vaccination Case 1\":\n  Encounter.\"Client's age is less than 5 months\""
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
        "valueInteger" : 5
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
        "valueString" : "Number of Malaria Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Malaria Primary Series doses\n*/\ndefine \"Number of Malaria Primary Series Doses Administered\":\n  Count(\"Malaria Primary Series Doses Administered to Patient\")"
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
        "valueInteger" : 8
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
        "valueString" : "The latest malaria dose was administered less than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest malaria dose was administered less than 4 weeks ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") < 4 weeks\n@code: The latest malaria dose was administered less than 4 weeks ago-99\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"The latest malaria dose was administered less than 4 weeks ago\":\n\t\"Date of Latest Malaria Dose\" is not null\n    and duration in weeks between \"Date of Latest Malaria Dose\" and Today < 4"
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for malaria vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for malaria vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for malaria vaccination Case 2\":\n  Encounter.\"One malaria primary series dose was administered\"\n    and Encounter.\"The latest malaria dose was administered less than 4 weeks ago\""
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
        "valueInteger" : 12
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for malaria vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for malaria vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for malaria vaccination Case 3\":\n  Encounter.\"Two malaria primary series doses were administered\"\n    and Encounter.\"The latest malaria dose was administered less than 4 weeks ago\""
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
        "valueInteger" : 14
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for malaria vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for malaria vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for malaria vaccination Case 4\":\n  Encounter.\"Three malaria primary series doses were administered\"\n    and Encounter.\"The latest malaria dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for malaria vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for malaria vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for malaria vaccination\":\n  \"Client is not due for malaria vaccination Case 1\"\n    or \"Client is not due for malaria vaccination Case 2\"\n    or \"Client is not due for malaria vaccination Case 3\"\n    or \"Client is not due for malaria vaccination Case 4\""
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for malaria vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for malaria vaccination Guidance\n@guidance = Should not vaccinate client with first malaria dose as client's age is less than 5 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose.\n@guidance = Should not vaccinate client with second malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose.\n@guidance = Should not vaccinate client with third malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose.\n@guidance = Should not vaccinate client with fourth malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the fourth dose.\n*/\ndefine \"Client is not due for malaria vaccination Guidance\":\n  case\n    when \"Client is not due for malaria vaccination Case 1\" then 'Should not vaccinate client with first malaria dose as client\\'s age is less than 5 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose.'\n    when \"Client is not due for malaria vaccination Case 2\" then 'Should not vaccinate client with second malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose.'\n    when \"Client is not due for malaria vaccination Case 3\" then 'Should not vaccinate client with third malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose.'\n    when \"Client is not due for malaria vaccination Case 4\" then 'Should not vaccinate client with fourth malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the fourth dose.'\n    else ''\n  end"
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
        "valueInteger" : 18
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
        "valueString" : "Client's age is more than or equal to 5 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 5 months\n@pseudocode: Today's date − \"Date of birth\" ≥ 5 months\n@code: Client's age is more than or equal to 5 months-41\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"Client's age is more than or equal to 5 months\":\n  Encounter.\"Current Patient Age In Months\" >= 5"
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for malaria vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for malaria vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for malaria vaccination Case 1\":\n  Encounter.\"No malaria primary series doses were administered\"\n    and Encounter.\"Client's age is more than or equal to 5 months\""
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
        "valueString" : "IMMZD2DTMalariaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest malaria dose was administered more than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest malaria dose was administered more than 4 weeks ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") ≥ 4 weeks\n@code: The latest malaria dose was administered more than 4 weeks ago-106\n@decision: IMMZ.D2.DT.Malaria: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\n*/\ndefine \"The latest malaria dose was administered more than 4 weeks ago\":\n  not \"The latest malaria dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for malaria vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for malaria vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for malaria vaccination Case 2\":\n  Encounter.\"One malaria primary series dose was administered\"\n    and Encounter.\"The latest malaria dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for malaria vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for malaria vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for malaria vaccination Case 3\":\n  Encounter.\"Two malaria primary series doses were administered\"\n    and Encounter.\"The latest malaria dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for malaria vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for malaria vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for malaria vaccination Case 4\":\n  Encounter.\"Three malaria primary series doses were administered\"\n    and Encounter.\"The latest malaria dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for malaria vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for malaria vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for malaria vaccination\":\n  \"Client is due for malaria vaccination Case 1\"\n    or \"Client is due for malaria vaccination Case 2\"\n    or \"Client is due for malaria vaccination Case 3\"\n    or \"Client is due for malaria vaccination Case 4\""
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for malaria vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for malaria vaccination Guidance\n@guidance = Should vaccinate client with first malaria dose as no malaria doses were administered and client is within appropriate age range. \nCheck for contraindications.\n@guidance = Should vaccinate client with second malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications.\n@guidance = Should vaccinate client with third malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications.\n@guidance = Should vaccinate client with fourth malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications.\n*/\ndefine \"Client is due for malaria vaccination Guidance\":\n  case\n    when \"Client is due for malaria vaccination Case 1\" then 'Should vaccinate client with first malaria dose as no malaria doses were administered and client is within appropriate age range. \nCheck for contraindications.'\n    when \"Client is due for malaria vaccination Case 2\" then 'Should vaccinate client with second malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications.'\n    when \"Client is due for malaria vaccination Case 3\" then 'Should vaccinate client with third malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications.'\n    when \"Client is due for malaria vaccination Case 4\" then 'Should vaccinate client with fourth malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications.'\n    else ''\n  end"
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
        "valueInteger" : 27
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Malaria vaccines\")\"\n*/\ndefine \"Malaria immunization schedule is complete\":\n  Encounter.\"Four malaria primary series doses were administered\""
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Malaria immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Malaria immunization schedule is complete Guidance\n@guidance: Malaria immunization schedule is complete. Four malaria primary series doses were administered. \nCheck for any other vaccines due.\n*/\ndefine \"Malaria immunization schedule is complete Guidance\":\n  'Malaria immunization schedule is complete. Four malaria primary series doses were administered. \nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTMalariaLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for malaria vaccination\" then \"Client is not due for malaria vaccination Guidance\"\n    when \"Client is due for malaria vaccination\" then \"Client is due for malaria vaccination Guidance\"\n    when \"Malaria immunization schedule is complete\" then \"Malaria immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTMalariaLogic"
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
        "valueString" : "seriesPrimary"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the primary series\n */\ndefine fluent function seriesPrimary(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Primary series' )"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 38
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
      "name" : "Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Client is due for malaria vaccination",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMalaria",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMalaria",
  "title" : "IMMZ.D2.DT.Malaria",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-12T07:49:12+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.Malaria\n4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTMalariaLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "The vaccine should be administered in a 3-dose primary schedule, with a fourth dose \nprovided approximately 12–18 months after the third dose to prolong the duration of protection. \nThere should be a minimum interval of 4 weeks between doses."
    }],
    "title" : "Determine if the client is due for Malaria.",
    "description" : "Determine if the client is due for Malaria vaccine according to the national immunization protocol.\n4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium \nfalciparum malaria in children living in regions with moderate to high malaria transmission, as \ndefined by WHO)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for malaria vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for malaria vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE27', display: 'Malaria vaccines' } }, display: 'Malaria vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Malaria.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Malaria.",
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
