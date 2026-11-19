# IMMZ.D18.S.Polio.IPV-only schedule - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Polio.IPV-only schedule**

## PlanDefinition: IMMZ.D18.S.Polio.IPV-only schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioIPVOnly | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SPolioIPVOnly |

 
IMMZ.D18.S.Polio.IPV-only schedule Inactivated polio vaccine (IPV)-only schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.Polio.IPV-only schedule](PlanDefinition-IMMZD18SPolioIPVOnly.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.Polio.IPV-only schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-09 13:50:16+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.Polio.IPV-only schedule Inactivated polio vaccine (IPV)-only schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SPolioIPVOnlyLogic](Library-IMMZD18SPolioIPVOnlyLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPolioIPVOnly",
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
        "code" : "DE213",
        "display" : "IPV"
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
        "valueString" : "IMMZD2DTPolioElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio containing Doses Administered to Patient\n*/\ndefine \"Polio Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Poliovirus-containing vaccines\""
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
        "valueString" : "IMMZD2DTPolioElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Polio Primary Series Doses Administered to Patient\":\n  \"Polio Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Polio Primary Series Doses Administered to Patient\":\n  PolioElements.\"Polio Primary Series Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio IPV Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio IPV Primary Series Doses Administered to Patient\n*/\ndefine \"Polio IPV Primary Series Doses Administered to Patient\":\n  \"Polio Primary Series Doses Administered to Patient\" I\n  where I.typeOfDose() ~ Concepts.\"IPV\""
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Polio IPV Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Polio IPV Primary Series Doses Administered\n*/\ndefine \"Number of Polio IPV Primary Series Doses Administered\":\n  Count(\"Polio IPV Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second IPV dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second IPV dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 2\n*/\ndefine \"Second IPV dose from the primary series was administered\":\n  Encounter.\"Number of Polio IPV Primary Series Doses Administered\" >= 2"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "Third IPV dose from the primary series was administered. The primary series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Third IPV dose from the primary series was administered. The primary series has been completed\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\n*/\ndefine \"Third IPV dose from the primary series was administered. The primary series has been completed\":\n  Encounter.\"Number of Polio IPV Primary Series Doses Administered\" >= 3"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: IPV dose 3\n@description: Provision of IPV dose 3\n@trigger: Second IPV dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 2\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\n*/\ndefine \"IPV dose 3\":\n  \"Second IPV dose from the primary series was administered\" and not \"Third IPV dose from the primary series was administered. The primary series has been completed\""
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio containing Doses Administered to Patient\n*/\ndefine \"Polio Doses Administered to Patient\":\n  PolioElements.\"Polio Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "IPV Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: IPV Doses Administered to Patient\n*/\ndefine \"IPV Doses Administered to Patient\":\n  \"Polio Doses Administered to Patient\" I\n  where I.typeOfDose() ~ Concepts.\"IPV\""
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest IPV Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest IPV Dose\n*/\ndefine \"Date of Latest IPV Dose\":\n  date from start of \"IPV Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 3 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: IPV dose 3 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Type of poliovirus dose\" = \"IPV\") + 4 weeks\n*/\ndefine \"IPV dose 3 Due Date\":\n  if \"IPV dose 3\" then Encounter.\"Date of Latest IPV Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 3 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: IPV dose 3 Create\n@create: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.\n*/\ndefine \"IPV dose 3 Create\":\n  if \"IPV dose 3\"\n  then 'A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.' + '\nDue Date: ' + ToString(\"IPV dose 3 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD2DTPolioElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio Booster Series Doses Administered to Patient\n*/\ndefine \"Polio Booster Series Doses Administered to Patient\":\n  \"Polio Doses Administered to Patient\".seriesBooster()"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Polio Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio Booster Series Doses Administered to Patient\n*/\ndefine \"Polio Booster Series Doses Administered to Patient\":\n  PolioElements.\"Polio Booster Series Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Polio Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Polio Booster Series Doses Administered\n*/\ndefine \"Number of Polio Booster Series Doses Administered\":\n  Count(\"Polio Booster Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "Booster IPV dose was administered. Polio immunization schedule has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Booster IPV dose was administered. Polio immunization schedule has been completed\n@pseudocode: Count of vaccines administered (where \"Type of poliovirus dose\" = \"IPV\" and \"Type of dose\" = \"Booster dose\") = 1\n*/\ndefine \"Booster IPV dose was administered. Polio immunization schedule has been completed\":\n  Encounter.\"Number of Polio Booster Series Doses Administered\" >= 1"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV booster"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: IPV booster\n@description: Provision of IPV booster\n@trigger: Third IPV dose from the primary series was administered and the client's age was 6 weeks when the primary series was started\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 3 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" = 6 weeks\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\n*/\ndefine \"IPV booster\":\n  \"Third IPV dose from the primary series was administered. The primary series has been completed\" and not \"Booster IPV dose was administered. Polio immunization schedule has been completed\""
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "First IPV dose from the primary series was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: First IPV dose from the primary series was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 1\n*/\ndefine \"First IPV dose from the primary series was administered\":\n  Encounter.\"Number of Polio IPV Primary Series Doses Administered\" >= 1"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: IPV dose 1\n@description: Provision of IPV dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"IPV dose 1\":\n  not \"First IPV dose from the primary series was administered\""
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: IPV dose 1 Due Date\n@pseudocode: \"Date of birth\" + 6 weeks\n*/\ndefine \"IPV dose 1 Due Date\":\n  if \"IPV dose 1\" then Patient.birthDate + 6 weeks\n  else null"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: IPV dose 1 Create\n@create: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.\n*/\ndefine \"IPV dose 1 Create\":\n  if \"IPV dose 1\"\n  then 'A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.' + '\nDue Date: ' + ToString(\"IPV dose 1 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: IPV dose 2\n@description: Provision of IPV dose 2\n@trigger: First IPV dose from the primary series was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 1\n@triggerDate: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\n*/\ndefine \"IPV dose 2\":\n  \"First IPV dose from the primary series was administered\" and not \"Second IPV dose from the primary series was administered\""
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 2 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: IPV dose 2 Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Type of poliovirus dose\" = \"IPV\") + 4 weeks\n*/\ndefine \"IPV dose 2 Due Date\":\n  if \"IPV dose 2\" then Encounter.\"Date of Latest IPV Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV dose 2 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: IPV dose 2 Create\n@create: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.\n*/\ndefine \"IPV dose 2 Create\":\n  if \"IPV dose 2\"\n  then 'A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.' + '\nDue Date: ' + ToString(\"IPV dose 2 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Polio Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Polio Dose\n*/\ndefine \"Date of Latest Polio Dose\":\n  date from start of \"Polio Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV booster Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: IPV booster Due Date\n@pseudocode: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") + 6 months\n*/\ndefine \"IPV booster Due Date\":\n  if \"IPV booster\" then Encounter.\"Date of Latest Polio Dose\" + 6 months\n  else null"
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
        "valueString" : "IMMZD18SPolioIPVOnlyLogic"
      },
      {
        "url" : "name",
        "valueString" : "IPV booster Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: IPV booster Create\n@create: If the primary series begins at 6 weeks, a booster dose should be given 6 months or more after the third dose\n*/\ndefine \"IPV booster Create\":\n  if \"IPV booster\"\n  then 'If the primary series begins at 6 weeks, a booster dose should be given 6 months or more after the third dose' + '\nDue Date: ' + ToString(\"IPV booster Due Date\")\n  else ''"
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
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "onOrBefore"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets immunizations on or before a date\n */\ndefine fluent function onOrBefore(immunizations List<Immunization>, beforeDate Date):\n  immunizations I where\n    I.occurrence.toInterval() same day or before beforeDate"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "typeOfDose"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the type of antigen dose extension value from an Immunization\n */\ndefine fluent function typeOfDose(immz Immunization):\n  (First(\n    immz.extension E where E.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose'\n  )).value as FHIR.CodeableConcept"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value uri): value.value"
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
        "valueString" : "mostRecent"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function mostRecent(immunizations List<Immunization>):\n  Last(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
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
        "valueString" : "seriesBooster"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the Booster series\n */\ndefine fluent function seriesBooster(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Booster dose' )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 46
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPolioEncounterElements"
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
      "display" : "Library FHIRHelpers",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
    },
    {
      "type" : "depends-on",
      "display" : "Library PolioElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPolioElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
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
      "display" : "Value set Poliovirus-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "IPV dose 3 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "IPV booster",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "IPV dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "IPV dose 2 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "IPV dose 3",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "IPV dose 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "IPV dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "IPV booster Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    }],
    "dataRequirement" : [{
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["birthDate"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "occurrence", "protocolApplied", "url"],
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
      "mustSupport" : ["occurrence", "protocolApplied", "url"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status",
      "isSubpotent",
      "vaccineCode",
      "occurrence",
      "protocolApplied",
      "url"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      },
      {
        "path" : "vaccineCode",
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioIPVOnly",
  "version" : "1.0.0",
  "name" : "IMMZD18SPolioIPVOnly",
  "title" : "IMMZ.D18.S.Polio.IPV-only schedule",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-09T13:50:16+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D18.S.Polio.IPV-only schedule\nInactivated polio vaccine (IPV)-only schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SPolioIPVOnlyLogic"],
  "action" : [{
    "title" : "IPV dose 1",
    "description" : "Provision of IPV dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "IPV dose 1",
        "language" : "text/cql-identifier",
        "expression" : "IPV dose 1"
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
        "expression" : "IPV dose 1 Create"
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
    "title" : "IPV dose 2",
    "description" : "Provision of IPV dose 2\nTrigger event: First IPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\nCreate condition: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "IPV dose 2",
        "language" : "text/cql-identifier",
        "expression" : "IPV dose 2"
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
        "expression" : "IPV dose 2 Create"
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
    "title" : "IPV dose 3",
    "description" : "Provision of IPV dose 3\nTrigger event: Second IPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\nCreate condition: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "IPV dose 3",
        "language" : "text/cql-identifier",
        "expression" : "IPV dose 3"
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
        "expression" : "IPV dose 3 Create"
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
    "title" : "IPV booster",
    "description" : "Provision of IPV booster\nTrigger event: Third IPV dose from the primary series was administered and the client's age was 6 weeks when the primary series was started\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 3 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" = 6 weeks\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\nCreate condition: If the primary series begins at 6 weeks, a booster dose should be given 6 months or more after the third dose",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "IPV booster",
        "language" : "text/cql-identifier",
        "expression" : "IPV booster"
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
        "expression" : "IPV booster Create"
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
