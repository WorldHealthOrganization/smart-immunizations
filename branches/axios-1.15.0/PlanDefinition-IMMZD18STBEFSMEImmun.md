# IMMZ.D18.S.TBE.FSME-Immun schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.TBE.FSME-Immun schedule**

## PlanDefinition: IMMZ.D18.S.TBE.FSME-Immun schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18STBEFSMEImmun | *Version*:0.2.0 |
| Draft as of 2026-04-12 | *Computable Name*:IMMZD18STBEFSMEImmun |

 
IMMZ.D18.S.TBE.FSME-Immun schedule FSME-Immun, 3-dose schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.TBE.FSME-Immun schedule](PlanDefinition-IMMZD18STBEFSMEImmun.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.TBE.FSME-Immun schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-12 07:49:12+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.TBE.FSME-Immun schedule FSME-Immun, 3-dose schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18STBEFSMEImmunLogic](Library-IMMZD18STBEFSMEImmunLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18STBEFSMEImmun",
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
        "valueInteger" : 2
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
        "valueInteger" : 3
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
        "valueString" : "Two TBE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two TBE primary series doses were administered-112\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"Two TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 2"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second TBE dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second TBE dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n*/\ndefine \"Second TBE dose from the primary series was administered\":\n  Encounter.\"Two TBE primary series doses were administered\""
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
        "valueString" : "Three TBE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three TBE primary series doses were administered-112\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"Three TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 3"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "Third TBE dose from the primary series was administered. The primary series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Third TBE dose from the primary series was administered. The primary series has been completed\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"TBE vaccines\")\n*/\ndefine \"Third TBE dose from the primary series was administered. The primary series has been completed\":\n  Encounter.\"Three TBE primary series doses were administered\""
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun dose 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: TBE FSME-Immun dose 3\n@description: Provision of the TBE FSME-Immun dose 3\n@trigger: Second TBE dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\")\n*/\ndefine \"TBE FSME-Immun dose 3\":\n  \"Second TBE dose from the primary series was administered\"\n  and not \"Third TBE dose from the primary series was administered. The primary series has been completed\""
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
        "valueString" : "Date of Latest TBE Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest TBE Dose\n*/\ndefine \"Date of Latest TBE Dose\":\n  date from start of \"TBE Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun dose 3 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: TBE FSME-Immun dose 3 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") + 5 months\n*/\ndefine \"TBE FSME-Immun dose 3 Due Date\":\n  if \"TBE FSME-Immun dose 3\" then Encounter.\"Date of Latest TBE Dose\" + 5 months\n  else null"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun dose 3 Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: TBE FSME-Immun dose 3 Overdue\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") + 12 months\n*/\ndefine \"TBE FSME-Immun dose 3 Overdue\":\n  if \"TBE FSME-Immun dose 3\" then Encounter.\"Date of Latest TBE Dose\" + 12 months\n  else null"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun dose 3 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: TBE FSME-Immun dose 3 Create\n@create: An interval of 5–12 months is recommended between the second and third doses\n*/\ndefine \"TBE FSME-Immun dose 3 Create\":\n  if \"TBE FSME-Immun dose 3\"\n  then 'An interval of 5–12 months is recommended between the second and third doses' + '\nDue Date: ' + ToString(\"TBE FSME-Immun dose 3 Due Date\") + '\nOverdue: ' + ToString(\"TBE FSME-Immun dose 3 Overdue\")\n  else ''"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "TBE Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: TBE Booster Series Doses Administered to Patient\n*/\ndefine \"TBE Booster Series Doses Administered to Patient\":\n  \"TBE Doses Administered to Patient\".seriesBooster()"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of TBE Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of TBE Booster Series Doses Administered\n*/\ndefine \"Number of TBE Booster Series Doses Administered\":\n  Count(\"TBE Booster Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTTBEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "At least one booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: At least one booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Booster dose\") ≥ 1\n@code: At least one booster dose was administered-110\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n*/\ndefine \"At least one booster dose was administered\":\n  \"Number of TBE Booster Series Doses Administered\" >= 1"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: TBE booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n*/\ndefine \"TBE booster dose was administered\":\n  Encounter.\"At least one booster dose was administered\""
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: TBE FSME-Immun booster dose\n@description: Provision of the TBE FSME-Immun booster dose\n@trigger: The primary series has been completed\n@pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"TBE vaccines\")\n@triggerDate: \"Date when primary vaccination series was completed\"\n*/\ndefine \"TBE FSME-Immun booster dose\":\n  \"Third TBE dose from the primary series was administered. The primary series has been completed\"\n  and not \"TBE booster dose was administered\""
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun booster dose Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: TBE FSME-Immun booster dose Due Date\n@pseudocode: \"Date when primary vaccination series was completed\" + 3 years\n*/\ndefine \"TBE FSME-Immun booster dose Due Date\":\n  if \"TBE FSME-Immun booster dose\" then Encounter.\"Date of Latest TBE Dose\" + 3 years\n  else null"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun booster dose Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: TBE FSME-Immun booster dose Overdue\n@pseudocode: \"Date when primary vaccination series was completed\" + 5 years\n*/\ndefine \"TBE FSME-Immun booster dose Overdue\":\n  if \"TBE FSME-Immun booster dose\" then Encounter.\"Date of Latest TBE Dose\" + 5 years\n  else null"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun booster dose Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: TBE FSME-Immun booster dose Create\n@create: The manufacturer recommends a booster dose to be administered 3 years after completion of the primary series\n*/\ndefine \"TBE FSME-Immun booster dose Create\":\n  if \"TBE FSME-Immun booster dose\"\n  then 'The manufacturer recommends a booster dose to be administered 3 years after completion of the primary series' + '\nDue Date: ' + ToString(\"TBE FSME-Immun booster dose Due Date\") + '\nOverdue: ' + ToString(\"TBE FSME-Immun booster dose Overdue\")\n  else ''"
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
        "valueString" : "One TBE primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One TBE primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One TBE primary series dose was administered-112\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"One TBE primary series dose was administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 1"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "First TBE dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First TBE dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n*/\ndefine \"First TBE dose from the primary series was administered\":\n  Encounter.\"One TBE primary series dose was administered\""
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun dose 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: TBE FSME-Immun dose 2\n@description: Provision of the TBE FSME-Immun dose 2\n@trigger: First TBE dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@triggerDate: \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\")\n*/\ndefine \"TBE FSME-Immun dose 2\":\n  \"First TBE dose from the primary series was administered\"\n  and not \"Second TBE dose from the primary series was administered\""
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun dose 2 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: TBE FSME-Immun dose 2 Due Date\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") + 1 month\n*/\ndefine \"TBE FSME-Immun dose 2 Due Date\":\n  if \"TBE FSME-Immun dose 2\" then Encounter.\"Date of Latest TBE Dose\" + 1 month\n  else null"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun dose 2 Overdue"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: TBE FSME-Immun dose 2 Overdue\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\") + 3 months\n*/\ndefine \"TBE FSME-Immun dose 2 Overdue\":\n  if \"TBE FSME-Immun dose 2\" then Encounter.\"Date of Latest TBE Dose\" + 3 months\n  else null"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "TBE FSME-Immun dose 2 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: TBE FSME-Immun dose 2 Create\n@create: An interval of 1–3 months is recommended between the first 2 doses\n*/\ndefine \"TBE FSME-Immun dose 2 Create\":\n  if \"TBE FSME-Immun dose 2\"\n  then 'An interval of 1–3 months is recommended between the first 2 doses' + '\nDue Date: ' + ToString(\"TBE FSME-Immun dose 2 Due Date\") + '\nOverdue: ' + ToString(\"TBE FSME-Immun dose 2 Overdue\")\n  else ''"
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
        "valueString" : "No TBE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No TBE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No TBE primary series doses were administered-112\n@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)\n@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)\n@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)\n@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)\n*/\ndefine \"No TBE primary series doses were administered\":\n  \"Number of TBE Primary Series Doses Administered\"  = 0"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tick-borne encephalitis (TBE) FSME-Immun dose 1\n@description: Provision of the TBE FSME-Immun dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"Tick-borne encephalitis (TBE) FSME-Immun dose 1\":\n  Encounter.\"No TBE primary series doses were administered\"\n  and not \"First TBE dose from the primary series was administered\""
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Tick-borne encephalitis (TBE) FSME-Immun dose 1 Due Date\n@pseudocode: \"Date of birth\" + 1 year\n*/\ndefine \"Tick-borne encephalitis (TBE) FSME-Immun dose 1 Due Date\":\n  if \"Tick-borne encephalitis (TBE) FSME-Immun dose 1\" then Patient.birthDate + 1 year\n  else null"
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
        "valueString" : "IMMZD18STBEFSMEImmunLogic"
      },
      {
        "url" : "name",
        "valueString" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Tick-borne encephalitis (TBE) FSME-Immun dose 1 Create\n@create: The vaccine can be given from > 1 year of age\n*/\ndefine \"Tick-borne encephalitis (TBE) FSME-Immun dose 1 Create\":\n  if \"Tick-borne encephalitis (TBE) FSME-Immun dose 1\"\n  then 'The vaccine can be given from > 1 year of age' + '\nDue Date: ' + ToString(\"Tick-borne encephalitis (TBE) FSME-Immun dose 1 Due Date\")\n  else ''"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 40
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
      "name" : "TBE FSME-Immun dose 3 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "TBE FSME-Immun booster dose Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "TBE FSME-Immun booster dose",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "TBE FSME-Immun dose 2 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "TBE FSME-Immun dose 3",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "TBE FSME-Immun dose 2",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18STBEFSMEImmun",
  "version" : "0.2.0",
  "name" : "IMMZD18STBEFSMEImmun",
  "title" : "IMMZ.D18.S.TBE.FSME-Immun schedule",
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
  "description" : "IMMZ.D18.S.TBE.FSME-Immun schedule\nFSME-Immun, 3-dose schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18STBEFSMEImmunLogic"],
  "action" : [{
    "title" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1",
    "description" : "Provision of the TBE FSME-Immun dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: The vaccine can be given from > 1 year of age",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1"
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
        "expression" : "Tick-borne encephalitis (TBE) FSME-Immun dose 1 Create"
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
    "title" : "TBE FSME-Immun dose 2",
    "description" : "Provision of the TBE FSME-Immun dose 2\nTrigger event: First TBE dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\")\nCreate condition: An interval of 1–3 months is recommended between the first 2 doses",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "TBE FSME-Immun dose 2",
        "language" : "text/cql-identifier",
        "expression" : "TBE FSME-Immun dose 2"
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
        "expression" : "TBE FSME-Immun dose 2 Create"
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
    "title" : "TBE FSME-Immun dose 3",
    "description" : "Provision of the TBE FSME-Immun dose 3\nTrigger event: Second TBE dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\")\nCreate condition: An interval of 5–12 months is recommended between the second and third doses",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "TBE FSME-Immun dose 3",
        "language" : "text/cql-identifier",
        "expression" : "TBE FSME-Immun dose 3"
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
        "expression" : "TBE FSME-Immun dose 3 Create"
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
    "title" : "TBE FSME-Immun booster dose",
    "description" : "Provision of the TBE FSME-Immun booster dose\nTrigger event: The primary series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"TBE vaccines\")\nTrigger date: \"Date when primary vaccination series was completed\"\nCreate condition: The manufacturer recommends a booster dose to be administered 3 years after completion of the primary series",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "TBE FSME-Immun booster dose",
        "language" : "text/cql-identifier",
        "expression" : "TBE FSME-Immun booster dose"
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
        "expression" : "TBE FSME-Immun booster dose Create"
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
