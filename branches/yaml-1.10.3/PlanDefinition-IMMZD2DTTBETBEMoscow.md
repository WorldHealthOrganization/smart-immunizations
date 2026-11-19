# IMMZ.D2.DT.TBE.TBE-Moscow - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.TBE.TBE-Moscow**

## PlanDefinition: IMMZ.D2.DT.TBE.TBE-Moscow 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTBETBEMoscow | *Version*:0.2.0 |
| Draft as of 2026-03-25 | *Computable Name*:IMMZD2DTTBETBEMoscow |

 
IMMZ.D2.DT.TBE.TBE-Moscow TBE-Moscow schedule (In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children) 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.TBE.TBE-Moscow](PlanDefinition-IMMZD2DTTBETBEMoscow.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.TBE.TBE-Moscow
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-25 23:30:34+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.TBE.TBE-Moscow TBE-Moscow schedule (In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTTBETBEMoscowLogic](Library-IMMZD2DTTBETBEMoscowLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTTBETBEMoscow",
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
        "valueString" : "Current Patient Age In Years"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in years\n */\ndefine \"Current Patient Age In Years\":\n  AgeInYearsAt(Today)"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 3 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 3 years\n@pseudocode: Today's date − \"Date of birth\" < 3 years\n@code: Client's age is less than 3 years-40\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"Client's age is less than 3 years\":\n  Encounter.\"Current Patient Age In Years\" < 3"
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for TBE vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for TBE vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for TBE vaccination Case 1\":\n  Encounter.\"Client's age is less than 3 years\""
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "TBE Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: TBE containing Doses Administered to Patient\n*/\ndefine \"TBE Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"TBE vaccines\""
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "TBE Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: TBE containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"TBE Primary Series Doses Administered to Patient\":\n  \"TBE Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of TBE Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of TBE Primary Series doses\n*/\ndefine \"Number of TBE Primary Series Doses Administered\":\n  Count(\"TBE Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One TBE primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One TBE primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One TBE primary series dose was administered-112\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"One TBE primary series dose was administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 1"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest TBE Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest TBE Dose\n*/\ndefine \"Date of Latest TBE Dose\":\n  date from start of \"TBE Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest TBE dose was administered less than 1 month ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered less than 1 month ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") < 1 month\n@code: The latest TBE dose was administered less than 1 month ago-95\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n*/\ndefine \"The latest TBE dose was administered less than 1 month ago\":\n  \"Date of Latest TBE Dose\" is not null\n    and duration in months between \"Date of Latest TBE Dose\" and Today < 1"
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for TBE vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for TBE vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for TBE vaccination Case 2\":\n  Encounter.\"One TBE primary series dose was administered\"\n    and Encounter.\"The latest TBE dose was administered less than 1 month ago\""
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two TBE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two TBE primary series doses were administered-112\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"Two TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 2"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest TBE dose was administered less than 12 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered less than 12 months ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") < 12 months\n@code: The latest TBE dose was administered less than 12 months ago-104\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"The latest TBE dose was administered less than 12 months ago\":\n  \"Date of Latest TBE Dose\" is not null\n    and duration in months between \"Date of Latest TBE Dose\" and Today < 12"
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for TBE vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for TBE vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for TBE vaccination Case 3\":\n  Encounter.\"Two TBE primary series doses were administered\"\n    and Encounter.\"The latest TBE dose was administered less than 12 months ago\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for TBE vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for TBE vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for TBE vaccination\":\n  \"Client is not due for TBE vaccination Case 1\"\n    or \"Client is not due for TBE vaccination Case 2\"\n    or \"Client is not due for TBE vaccination Case 3\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for TBE vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for TBE vaccination Guidance\n@guidance = Should not vaccinate client with first TBE dose as client's age is under 3 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.\n@guidance = Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose.\n@guidance = Should not vaccinate client with third TBE dose as the latest dose was administered less than 12 months ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose\n*/\ndefine \"Client is not due for TBE vaccination Guidance\":\n  case\n    when \"Client is not due for TBE vaccination Case 1\" then 'Should not vaccinate client with first TBE dose as client\\'s age is under 3 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.'\n    when \"Client is not due for TBE vaccination Case 2\" then 'Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose.'\n    when \"Client is not due for TBE vaccination Case 3\" then 'Should not vaccinate client with third TBE dose as the latest dose was administered less than 12 months ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No TBE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No TBE primary series doses were administered-112\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"No TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 0"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to 3 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 3 years\n@pseudocode: Today's date − \"Date of birth\" ≥ 3 years\n@code: Client's age is more than or equal to 3 years-40\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"Client's age is more than or equal to 3 years\":\n  Encounter.\"Current Patient Age In Years\" >= 3"
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for TBE vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for TBE vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for TBE vaccination Case 1\":\n  Encounter.\"No TBE primary series doses were administered\"\n    and Encounter.\"Client's age is more than or equal to 3 years\""
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest TBE dose was administered more than 1 month ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered more than 1 month ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") ≥ 1 month\n@code: The latest TBE dose was administered more than 1 month ago-95\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n*/\ndefine \"The latest TBE dose was administered more than 1 month ago\":\n  not \"The latest TBE dose was administered less than 1 month ago\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for TBE vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for TBE vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for TBE vaccination Case 2\":\n  Encounter.\"One TBE primary series dose was administered\"\n    and Encounter.\"The latest TBE dose was administered more than 1 month ago\""
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest TBE dose was administered more than 12 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered more than 12 months ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") ≥ 12 months\n@code: The latest TBE dose was administered more than 12 months ago-97\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"The latest TBE dose was administered more than 12 months ago\":\n  not \"The latest TBE dose was administered less than 12 months ago\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for TBE vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for TBE vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for TBE vaccination Case 3\":\n  Encounter.\"Two TBE primary series doses were administered\"\n    and Encounter.\"The latest TBE dose was administered more than 12 months ago\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for TBE vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for TBE vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for TBE vaccination\":\n  \"Client is due for TBE vaccination Case 1\"\n    or \"Client is due for TBE vaccination Case 2\"\n    or \"Client is due for TBE vaccination Case 3\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for TBE vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for TBE vaccination Guidance\n@guidance = Should vaccinate client with first TBE dose as no TBE doses have been administered and client's age is more than 3 years.\nCheck for contraindications.\n@guidance = Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago.\nCheck for contraindications.\n@guidance = Should vaccinate client with third TBE dose as the latest dose was administered more than 12 months ago.\nCheck for contraindications.\n*/\ndefine \"Client is due for TBE vaccination Guidance\":\n  case\n    when \"Client is due for TBE vaccination Case 1\" then 'Should vaccinate client with first TBE dose as no TBE doses have been administered and client\\'s age is more than 3 years.\nCheck for contraindications.'\n    when \"Client is due for TBE vaccination Case 2\" then 'Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago.\nCheck for contraindications.'\n    when \"Client is due for TBE vaccination Case 3\" then 'Should vaccinate client with third TBE dose as the latest dose was administered more than 12 months ago.\nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Three TBE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three TBE primary series doses were administered-112\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"Three TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 3"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest TBE dose was administered less than 3 years ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered less than 3 years ago\n@pseudocode: 'Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") < 3 years\n@code: The latest TBE dose was administered less than 3 years ago-103\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"The latest TBE dose was administered less than 3 years ago\":\n  \"Date of Latest TBE Dose\" is not null\n    and duration in years between \"Date of Latest TBE Dose\" and Today < 3"
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is not due for TBE booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is not due for TBE booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"TBE vaccines\")\n*/\ndefine \"Primary series is complete. Client is not due for TBE booster dose\":\n  Encounter.\"Three TBE primary series doses were administered\"\n    and Encounter.\"The latest TBE dose was administered less than 3 years ago\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is not due for TBE booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is not due for TBE booster dose Guidance\n@guidance: Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago.\nCheck for contraindications.\n*/\ndefine \"Primary series is complete. Client is not due for TBE booster dose Guidance\":\n  'Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago.\nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest TBE dose was administered more than 3 years ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered more than 3 years ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") ≥ 3 years\n@code: The latest TBE dose was administered more than 3 years ago-102\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"The latest TBE dose was administered more than 3 years ago\":\n  not \"The latest TBE dose was administered less than 3 years ago\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is due for TBE booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is due for TBE booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"TBE vaccines\")\n*/\ndefine \"Primary series is complete. Client is due for TBE booster dose\":\n  Encounter.\"Three TBE primary series doses were administered\"\n    and Encounter.\"The latest TBE dose was administered more than 3 years ago\""
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is due for TBE booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is due for TBE booster dose Guidance\n@guidance: Should vaccinate client with TBE booster dose as the primary series has been completed and the latest TBE dose was administered more than 3 years ago.\nCheck for contraindications.\n*/\ndefine \"Primary series is complete. Client is due for TBE booster dose Guidance\":\n  'Should vaccinate client with TBE booster dose as the primary series has been completed and the latest TBE dose was administered more than 3 years ago.\nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for TBE vaccination\" then \"Client is not due for TBE vaccination Guidance\"\n    when \"Client is due for TBE vaccination\" then \"Client is due for TBE vaccination Guidance\"\n    when \"Primary series is complete. Client is not due for TBE booster dose\" then \"Primary series is complete. Client is not due for TBE booster dose Guidance\"\n    when \"Primary series is complete. Client is due for TBE booster dose\" then \"Primary series is complete. Client is due for TBE booster dose Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTTBETBEMoscowLogic"
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
        "valueInteger" : 34
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 41
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTTBEEncounterElements"
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
      "display" : "Value set TBE vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE20"
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
      "name" : "Primary series is complete. Client is due for TBE booster dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Client is due for TBE vaccination",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTBETBEMoscow",
  "version" : "0.2.0",
  "name" : "IMMZD2DTTBETBEMoscow",
  "title" : "IMMZ.D2.DT.TBE.TBE-Moscow",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-25T23:30:34+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.TBE.TBE-Moscow\nTBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTTBETBEMoscowLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "The TBE-Moscow vaccine is licensed for use in people aged 3 years or older.\nThe manufacturer of TBE-Moscow recommends a standard primary immunization schedule of 2 doses given at an interval of 1–7 months.\nThe recommended interval is 12 months between the second and third doses."
    }],
    "title" : "Determine if the client is due for TBE.",
    "description" : "Determine if the client is due for TBE vaccine according to the national immunization protocol.\nTBE-Moscow schedule \n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, \nWHO recommends that vaccination be offered to all age groups, including children)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for TBE vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for TBE vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE20', display: 'TBE vaccines' } }, display: 'TBE vaccines' }"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Further booster doses are recommended at 3-year intervals."
    }],
    "title" : "Determine if the client is due for TBE.",
    "description" : "Determine if the client is due for TBE vaccine according to the national immunization protocol.\nTBE-Moscow schedule \n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, \nWHO recommends that vaccination be offered to all age groups, including children)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Primary series is complete. Client is due for TBE booster dose",
        "language" : "text/cql-identifier",
        "expression" : "Primary series is complete. Client is due for TBE booster dose"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE20', display: 'TBE vaccines' } }, display: 'TBE vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.TBE.TBE-Moscow.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.TBE.TBE-Moscow.",
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
