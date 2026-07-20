# IMMZ.D2.DT.TBE.FSME-Immun - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.TBE.FSME-Immun**

## PlanDefinition: IMMZ.D2.DT.TBE.FSME-Immun 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTBEFSME | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD2DTTBEFSME |

 
IMMZ.D2.DT.TBE.FSME-Immun FSME-Immun schedule (In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children) 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.TBE.FSME-Immun](PlanDefinition-IMMZD2DTTBEFSME.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.TBE.FSME-Immun
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-31 13:43:43+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.TBE.FSME-Immun FSME-Immun schedule (In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTTBEFSMELogic](Library-IMMZD2DTTBEFSMELogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTTBEFSME",
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
        "valueString" : "Client's age is less than 1 year"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 1 year\n@pseudocode: Today's date − \"Date of birth\" < 1 year\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n*/\ndefine \"Client's age is less than 1 year\":\n  Encounter.\"Current Patient Age In Years\" < 1"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for TBE vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for TBE vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for TBE vaccination Case 1\":\n  Encounter.\"Client's age is less than 1 year\""
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
        "valueString" : "/*\n@input: One TBE primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n@decision: TBE-Moscow schedule\n@decision: EnceVir schedule\n*/\ndefine \"One TBE primary series dose was administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 1"
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
        "valueString" : "/*\n@internal: Date and time of last TBE dose\n*/\ndefine \"Date of Latest TBE Dose\":\n  date from start of \"TBE Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "/*\n@input: The latest TBE dose was administered less than 1 month ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") < 1 month\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n@decision: TBE-Moscow schedule\n*/\ndefine \"The latest TBE dose was administered less than 1 month ago\":\n  \"Date of Latest TBE Dose\" is not null\n    and duration in months between \"Date of Latest TBE Dose\" and Today < 1"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
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
        "valueString" : "/*\n@input: Two TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n@decision: TBE-Moscow schedule\n@decision: EnceVir schedule\n*/\ndefine \"Two TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 2"
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
        "valueString" : "The latest TBE dose was administered less than 5 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered less than 5 months ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") < 5 months\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: EnceVir schedule\n*/\ndefine \"The latest TBE dose was administered less than 5 months ago\":\n  \"Date of Latest TBE Dose\" is not null\n    and duration in months between \"Date of Latest TBE Dose\" and Today < 5"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for TBE vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for TBE vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for TBE vaccination Case 3\":\n  Encounter.\"Two TBE primary series doses were administered\"\n    and Encounter.\"The latest TBE dose was administered less than 5 months ago\""
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for TBE vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for TBE vaccination Guidance\n@guidance: Should not vaccinate client with first TBE dose as client's age is less than 1 year.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.\n@guidance: Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago. Check for any vaccines due and inform the caregiver of when to come back for the next dose\n@guidance: Should not vaccinate client with third TBE dose as the latest dose was administered less than 5 months ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose.\n*/\ndefine \"Client is not due for TBE vaccination Guidance\":\n  case\n    when \"Client is not due for TBE vaccination Case 1\" then 'Should not vaccinate client with first TBE dose as client\\'s age is less than 1 year.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.'\n    when \"Client is not due for TBE vaccination Case 2\" then 'Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago. Check for any vaccines due and inform the caregiver of when to come back for the next dose'\n    when \"Client is not due for TBE vaccination Case 3\" then 'Should not vaccinate client with third TBE dose as the latest dose was administered less than 5 months ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose.'\n    else ''\n  end"
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
        "valueString" : "/*\n@input: No TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n@decision: TBE-Moscow schedule\n@decision: EnceVir schedule\n*/\ndefine \"No TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 0"
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
        "valueString" : "Client's age is more than or equal to 1 year"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 1 year\n@pseudocode: Today's date − \"Date of birth\" ≥ 1 year\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n*/\ndefine \"Client's age is more than or equal to 1 year\":\n  Encounter.\"Current Patient Age In Years\" >= 1"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for TBE vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for TBE vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for TBE vaccination Case 1\":\n  Encounter.\"No TBE primary series doses were administered\"\n    and Encounter.\"Client's age is more than or equal to 1 year\""
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
        "valueString" : "/*\n@input: The latest TBE dose was administered more than 1 month ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") ≥ 1 month\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n@decision: TBE-Moscow schedule\n*/\ndefine \"The latest TBE dose was administered more than 1 month ago\":\n  not \"The latest TBE dose was administered less than 1 month ago\""
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
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
        "valueString" : "The latest TBE dose was administered more than 5 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered more than 5 months ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") ≥ 5 months\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: EnceVir schedule\n*/\ndefine \"The latest TBE dose was administered more than 5 months ago\":\n  not \"The latest TBE dose was administered less than 5 months ago\""
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for TBE vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for TBE vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for TBE vaccination Case 3\":\n  Encounter.\"Two TBE primary series doses were administered\"\n    and Encounter.\"The latest TBE dose was administered more than 5 months ago\""
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for TBE vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for TBE vaccination Guidance\n@guidance: Should vaccinate client with first TBE dose as no TBE doses have been administered and client's age is more than 1 year.\nCheck for contraindications.\n@guidance: Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago.\nCheck for contraindications.\n@guidance: Should vaccinate client with third TBE dose as the latest dose was administered more than 5 months ago.\nCheck for contraindications.\n*/\ndefine \"Client is due for TBE vaccination Guidance\":\n  case\n    when \"Client is due for TBE vaccination Case 1\" then 'Should vaccinate client with first TBE dose as no TBE doses have been administered and client\\'s age is more than 1 year.\nCheck for contraindications.'\n    when \"Client is due for TBE vaccination Case 2\" then 'Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago.\nCheck for contraindications.'\n    when \"Client is due for TBE vaccination Case 3\" then 'Should vaccinate client with third TBE dose as the latest dose was administered more than 5 months ago.\nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "/*\n@input: Three TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n@decision: TBE-Moscow schedule\n@decision: EnceVir schedule\n*/\ndefine \"Three TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 3"
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
        "valueString" : "TBE Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: TBE containing Doses Administered to Patient that are in the Booster series\n*/\ndefine \"TBE Booster Series Doses Administered to Patient\":\n  \"TBE Doses Administered to Patient\".seriesBooster()"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of TBE Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of TBE Booster Series doses\n*/\ndefine \"Number of TBE Booster Series Doses Administered\":\n  Count(\"TBE Booster Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No TBE booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No TBE booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Booster dose\") = 0\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n*/\ndefine \"No TBE booster dose was administered\":\n  \"Number of TBE Booster Series Doses Administered\" = 0"
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
        "valueString" : "The latest TBE dose was administered less than 3 years ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered less than 3 years ago\n@pseudocode: 'Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") < 3 years\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n@decision: TBE-Moscow schedule\n@decision: EnceVir schedule\n*/\ndefine \"The latest TBE dose was administered less than 3 years ago\":\n  \"Date of Latest TBE Dose\" is not null\n    and duration in years between \"Date of Latest TBE Dose\" and Today < 3"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is not due for TBE booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is not due for TBE booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Primary series is complete. Client is not due for TBE booster dose\":\n  Encounter.\"Three TBE primary series doses were administered\"\n    and Encounter.\"No TBE booster dose was administered\"\n    and Encounter.\"The latest TBE dose was administered less than 3 years ago\""
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is not due for TBE booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is not due for TBE booster dose Guidance\n@guidance: Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose\n*/\ndefine \"Primary series is complete. Client is not due for TBE booster dose Guidance\":\n  'Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose'"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest TBE dose was administered more than 3 years ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest TBE dose was administered more than 3 years ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") ≥ 3 years\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n@decision: TBE-Moscow schedule\n@decision: EnceVir schedule\n*/\ndefine \"The latest TBE dose was administered more than 3 years ago\":\n  not \"The latest TBE dose was administered less than 3 years ago\""
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is due for TBE booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is due for TBE booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Primary series is complete. Client is due for TBE booster dose\":\n  Encounter.\"Three TBE primary series doses were administered\"\n    and Encounter.\"No TBE booster dose was administered\"\n    and Encounter.\"The latest TBE dose was administered more than 3 years ago\""
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete. Client is due for TBE booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete. Client is due for TBE booster dose Guidance\n@guidance: Should vaccinate client with TBE booster dose as the latest TBE dose was administered more than 3 years ago.\nCheck for contraindications.\n*/\ndefine \"Primary series is complete. Client is due for TBE booster dose Guidance\":\n  'Should vaccinate client with TBE booster dose as the latest TBE dose was administered more than 3 years ago.\nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "At least one booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: At least one booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Booster dose\") ≥ 1\n@decision: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: Encepur schedule\n*/\ndefine \"At least one booster dose was administered\":\n  \"Number of TBE Booster Series Doses Administered\" >= 1"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required."
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required.\n@pseudocode: Create a clinical note\n*/\ndefine \"Clinical judgement is required.\":\n  Encounter.\"Three TBE primary series doses were administered\"\n    and Encounter.\"At least one booster dose was administered\""
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Clinical judgement is required. Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Clinical judgement is required. Guidance\n@guidance: Assess if supplementary booster TBE dose(s) are necessary and create a clinical note.\nCheck for any other vaccines due.\n*/\ndefine \"Clinical judgement is required. Guidance\":\n  'Assess if supplementary booster TBE dose(s) are necessary and create a clinical note.\nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case\n    when \"Client is not due for TBE vaccination\" then \"Client is not due for TBE vaccination Guidance\"\n    when \"Client is due for TBE vaccination\" then \"Client is due for TBE vaccination Guidance\"\n    when \"Primary series is complete. Client is not due for TBE booster dose\" then \"Primary series is complete. Client is not due for TBE booster dose Guidance\"\n    when \"Primary series is complete. Client is due for TBE booster dose\" then \"Primary series is complete. Client is due for TBE booster dose Guidance\"\n    when \"Clinical judgement is required.\" then \"Clinical judgement is required. Guidance\"\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTTBEFSMELogic"
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
        "valueInteger" : 40
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
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 54
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
        "valueInteger" : 55
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
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
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
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE20"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTBEFSME",
  "version" : "0.2.0",
  "name" : "IMMZD2DTTBEFSME",
  "title" : "IMMZ.D2.DT.TBE.FSME-Immun",
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
  "description" : "IMMZ.D2.DT.TBE.FSME-Immun\nFSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTTBEFSMELogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "The vaccines manufactured in Austria and Germany (FSME-Immun and Encepur) can be given from > 1 year of age.\nFor the vaccines manufactured in Austria and Germany (FSME-Immun and Encepur), an interval of 1–3 months is recommended between the first 2 doses."
    }],
    "title" : "Determine if the client is due for TBE.",
    "description" : "Determine if the client is due for TBE vaccine according to the national immunization protocol.\nFSME-Immun schedule \n(In areas where the disease is highly endemic, implying that there is a high \nindividual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for TBE vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for TBE vaccination"
      }
    }],
    "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTTBEMR",
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
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "For both vaccines (FSME-Immun and Encepur), the manufacturers recommend a booster dose to be administered \n3 years after completion of the primary series. Although there is a strong indication that the spacing of boosters could \nbe expanded considerably from the intervals currently recommended by the manufacturers (every 3–5 years), the evidence \nis still insufficient for a definitive recommendation on the optimal frequency and number of booster doses."
    }],
    "title" : "Determine if the client is due for TBE.",
    "description" : "Determine if the client is due for TBE vaccine according to the national immunization protocol.\nFSME-Immun schedule \n(In areas where the disease is highly endemic, implying that there is a high \nindividual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Primary series is complete. Client is due for TBE booster dose",
        "language" : "text/cql-identifier",
        "expression" : "Primary series is complete. Client is due for TBE booster dose"
      }
    }],
    "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTTBEMR",
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
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.TBE.FSME-Immun.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.TBE.FSME-Immun.",
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
