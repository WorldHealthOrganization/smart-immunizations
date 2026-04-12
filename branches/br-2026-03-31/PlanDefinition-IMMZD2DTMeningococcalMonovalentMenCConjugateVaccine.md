# IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine**

## PlanDefinition: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine |

 
IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine Monovalent MenC conjugate vaccine schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine](PlanDefinition-IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-31 13:43:57+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine Monovalent MenC conjugate vaccine schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic](Library-IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine",
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 2 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 2 months\n@pseudocode: Today's date − \"Date of birth\" < 2 months\n@code: Client's age is less than 2 months-41\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n*/\ndefine \"Client's age is less than 2 months\":\n  Encounter.\"Current Patient Age In Months\" < 2"
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for meningococcal vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for meningococcal vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for meningococcal vaccination Case 1\":\n  Encounter.\"Client's age is less than 2 months\""
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Meningococcal containing Doses Administered to Patient\n*/\ndefine \"Meningococcal Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Meningococcal vaccines\""
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Meningococcal containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Meningococcal Primary Series Doses Administered to Patient\":\n  \"Meningococcal Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Meningococcal Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Meningococcal Primary Series doses\n*/\ndefine \"Number of Meningococcal Primary Series Doses Administered\":\n  Count(\"Meningococcal Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One meningococcal primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One meningococcal primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One meningococcal primary series dose was administered-122\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose: MenA conjugate vaccine, 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses: MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose: Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)\n*/\ndefine \"One meningococcal primary series dose was administered\":\n  \"Number of Meningococcal Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of First Primary Series Meningococcal Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of First Primary Series Meningococcal Dose\n*/\ndefine \"Date of First Primary Series Meningococcal Dose\":\n  date from start of \"Meningococcal Primary Series Doses Administered to Patient\".earliest().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age was less than or equal to 11 months when the primary series was started"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age was less than or equal to 11 months when the primary series was started\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" ≤ 11 months\n@code: Client's age was less than or equal to 11 months when the primary series was started-110\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n*/\ndefine \"Client's age was less than or equal to 11 months when the primary series was started\":\n  AgeInMonthsAt(\"Date of First Primary Series Meningococcal Dose\") <= 11"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Primary Meningococcal Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Primary Meningococcal Dose\n*/\ndefine \"Date of Latest Primary Meningococcal Dose\":\n  date from start of \"Meningococcal Primary Series Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest meningococcal dose was administered less than 2 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest meningococcal dose was administered less than 2 months ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 2 months\n@code: The latest meningococcal dose was administered less than 2 months ago-106\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n*/\ndefine \"The latest meningococcal dose was administered less than 2 months ago\":\n  \"Date of Latest Primary Meningococcal Dose\" is not null\n  and duration in months between \"Date of Latest Primary Meningococcal Dose\" and Today < 2"
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for meningococcal vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for meningococcal vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for meningococcal vaccination Case 2\":\n  Encounter.\"One meningococcal primary series dose was administered\"\n    and Encounter.\"Client's age was less than or equal to 11 months when the primary series was started\"\n    and Encounter.\"The latest meningococcal dose was administered less than 2 months ago\""
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two meningococcal primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two meningococcal primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two meningococcal primary series doses were administered-122\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses: MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule\n*/\ndefine \"Two meningococcal primary series doses were administered\":\n  \"Number of Meningococcal Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest meningococcal dose was administered less than 1 year ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest meningococcal dose was administered less than 1 year ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 1 year\n@code: The latest meningococcal dose was administered less than 1 year ago-111\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n*/\ndefine \"The latest meningococcal dose was administered less than 1 year ago\":\n  \"Date of Latest Primary Meningococcal Dose\" is not null\n  and duration in years between \"Date of Latest Primary Meningococcal Dose\" and Today < 1"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal Booster Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Meningococcal Booster Series Doses Administered to Patient\n*/\ndefine \"Meningococcal Booster Series Doses Administered to Patient\":\n  \"Meningococcal Doses Administered to Patient\".seriesBooster()"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Meningococcal Booster Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Meningococcal Booster Series Doses Administered\n*/\ndefine \"Number of Meningococcal Booster Series Doses Administered\":\n  Count(\"Meningococcal Booster Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No meningococcal booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No meningococcal booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 0\n@code: No meningococcal booster dose was administered-120\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n@decision: IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)\n*/\ndefine \"No meningococcal booster dose was administered\":\n  \"Number of Meningococcal Booster Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for meningococcal vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for meningococcal vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for meningococcal vaccination Case 3\":\n  Encounter.\"Two meningococcal primary series doses were administered\"\n    and Encounter.\"The latest meningococcal dose was administered less than 1 year ago\"\n    and Encounter.\"No meningococcal booster dose was administered\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for meningococcal vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for meningococcal vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for meningococcal vaccination\":\n  \"Client is not due for meningococcal vaccination Case 1\"\n    or \"Client is not due for meningococcal vaccination Case 2\"\n    or \"Client is not due for meningococcal vaccination Case 3\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for meningococcal vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for meningococcal vaccination Guidance\n@guidance = Should not vaccinate client with first meningococcal dose as client's age is under 2 months. Check for any vaccines due and inform the caregiver of when to come back for the first dose.\n@guidance = Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 2 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the second dose.\n@guidance = Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 1 year ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose.\n*/\ndefine \"Client is not due for meningococcal vaccination Guidance\":\n  case\n    when \"Client is not due for meningococcal vaccination Case 1\" then 'Should not vaccinate client with first meningococcal dose as client\\'s age is under 2 months. Check for any vaccines due and inform the caregiver of when to come back for the first dose.'\n    when \"Client is not due for meningococcal vaccination Case 2\" then 'Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 2 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the second dose.'\n    when \"Client is not due for meningococcal vaccination Case 3\" then 'Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 1 year ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No meningococcal primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No meningococcal primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No meningococcal primary series dose was administered-122\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose: MenA conjugate vaccine, 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses: MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose: Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule\n@decision: IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)\n*/\ndefine \"No meningococcal primary series dose was administered\":\n  \"Number of Meningococcal Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to 2 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 2 months\n@pseudocode: Today's date − \"Date of birth\" ≥ 2 months\n@code: Client's age is more than or equal to 2 months-41\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n*/\ndefine \"Client's age is more than or equal to 2 months\":\n  Encounter.\"Current Patient Age In Months\" >= 2"
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for meningococcal vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for meningococcal vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for meningococcal vaccination Case 1\":\n  Encounter.\"No meningococcal primary series dose was administered\"\n    and Encounter.\"Client's age is more than or equal to 2 months\""
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest meningococcal dose was administered more than 2 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest meningococcal dose was administered more than 2 months ago\n@pseudocode: Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 2 months\n@code: The latest meningococcal dose was administered more than 2 months ago-106\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n*/\ndefine \"The latest meningococcal dose was administered more than 2 months ago\":\n  not \"The latest meningococcal dose was administered less than 2 months ago\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for meningococcal vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for meningococcal vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for meningococcal vaccination Case 2\":\n  Encounter.\"One meningococcal primary series dose was administered\"\n    and Encounter.\"Client's age was less than or equal to 11 months when the primary series was started\"\n    and Encounter.\"The latest meningococcal dose was administered more than 2 months ago\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for meningococcal vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for meningococcal vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for meningococcal vaccination\":\n  \"Client is due for meningococcal vaccination Case 1\"\n    or \"Client is due for meningococcal vaccination Case 2\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for meningococcal vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for meningococcal vaccination Guidance\n@guidance = Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client is within appropriate age range.\nCheck for contraindications.\n@guidance = Should vaccinate client with second meningococcal dose as client was less than 11 months when primary series was started and latest meningococcal dose was administered more than 2 months ago. \nCheck for contraindications.\n*/\ndefine \"Client is due for meningococcal vaccination Guidance\":\n  case\n    when \"Client is due for meningococcal vaccination Case 1\" then 'Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client is within appropriate age range.\nCheck for contraindications.'\n    when \"Client is due for meningococcal vaccination Case 2\" then 'Should vaccinate client with second meningococcal dose as client was less than 11 months when primary series was started and latest meningococcal dose was administered more than 2 months ago. \nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age was more than 11 months when the primary series was started"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age was more than 11 months when the primary series was started\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" > 11 months\n@code: Client's age was more than 11 months when the primary series was started-110\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n*/\ndefine \"Client's age was more than 11 months when the primary series was started\":\n  AgeInMonthsAt(\"Date of First Primary Series Meningococcal Dose\") > 11"
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal immunization schedule is complete Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Meningococcal immunization schedule is complete Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Meningococcal vaccines\") = TRUE\n*/\ndefine \"Meningococcal immunization schedule is complete Case 1\":\n  Encounter.\"One meningococcal primary series dose was administered\"\n    and Encounter.\"Client's age was more than 11 months when the primary series was started\""
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal booster dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Meningococcal booster dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\n@code: Meningococcal booster dose was administered-120\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n@decision: IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)\n*/\ndefine \"Meningococcal booster dose was administered\":\n  \"Number of Meningococcal Booster Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal immunization schedule is complete Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Meningococcal immunization schedule is complete Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n*/\ndefine \"Meningococcal immunization schedule is complete Case 2\":\n  Encounter.\"Two meningococcal primary series doses were administered\"\n    and Encounter.\"Meningococcal booster dose was administered\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Meningococcal immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Meningococcal vaccines\") = TRUE\n*/\ndefine \"Meningococcal immunization schedule is complete\":\n  \"Meningococcal immunization schedule is complete Case 1\"\n    or \"Meningococcal immunization schedule is complete Case 2\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Meningococcal immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Meningococcal immunization schedule is complete Guidance\n@guidance = Meningococcal immunization schedule is complete as client's age was more than 11 months when primary series was started. One primary series dose was administered. Check for any other vaccines due.\n@guidance = Meningococcal immunization schedule is complete. Two primary series doses and one booster dose were administered. \nCheck for any vaccines due.\n*/\ndefine \"Meningococcal immunization schedule is complete Guidance\":\n  case\n    when \"Meningococcal immunization schedule is complete Case 1\" then 'Meningococcal immunization schedule is complete as client\\'s age was more than 11 months when primary series was started. One primary series dose was administered. Check for any other vaccines due.'\n    when \"Meningococcal immunization schedule is complete Case 2\" then 'Meningococcal immunization schedule is complete. Two primary series doses and one booster dose were administered. \nCheck for any vaccines due.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTMeningococcalEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest meningococcal dose was administered more than 1 year ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest meningococcal dose was administered more than 1 year ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 1 year\n@code: The latest meningococcal dose was administered more than 1 year ago-111\n@decision: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine: Monovalent MenC conjugate vaccine schedule\n*/\ndefine \"The latest meningococcal dose was administered more than 1 year ago\":\n  not \"The latest meningococcal dose was administered less than 1 year ago\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "The primary series is complete. Client is due for meningococcal booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: The primary series is complete. Client is due for meningococcal booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n\"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Meningococcal vaccines\") = TRUE\n*/\ndefine \"The primary series is complete. Client is due for meningococcal booster dose\":\n  Encounter.\"Two meningococcal primary series doses were administered\"\n    and Encounter.\"The latest meningococcal dose was administered more than 1 year ago\"\n    and Encounter.\"No meningococcal booster dose was administered\""
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "The primary series is complete. Client is due for meningococcal booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: The primary series is complete. Client is due for meningococcal booster dose Guidance\n@guidance: Should vaccinate client with Meningococcal booster dose as no meningococcal booster dose was administered and the latest meningococcal dose was administered more than 1 year ago. \nCheck for contraindications.\n*/\ndefine \"The primary series is complete. Client is due for meningococcal booster dose Guidance\":\n  'Should vaccinate client with Meningococcal booster dose as no meningococcal booster dose was administered and the latest meningococcal dose was administered more than 1 year ago. \nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for meningococcal vaccination\" then \"Client is not due for meningococcal vaccination Guidance\"\n    when \"Client is due for meningococcal vaccination\" then \"Client is due for meningococcal vaccination Guidance\"\n    when \"Meningococcal immunization schedule is complete\" then \"Meningococcal immunization schedule is complete Guidance\"\n    when \"The primary series is complete. Client is due for meningococcal booster dose\" then \"The primary series is complete. Client is due for meningococcal booster dose Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
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
        "valueInteger" : 39
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "toInterval"
      },
      {
        "url" : "statement",
        "valueString" : "/*\nFrom FHIRCommon 4.1.0:\n*/\n\n/*\n@description: Normalizes a value that is a choice of timing-valued types to an equivalent interval\n@comment: Normalizes a choice type of FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instance, FHIR.string, FHIR.Age, or FHIR.Range types\nto an equivalent interval. This selection of choice types is a superset of the majority of choice types that are used as possible\nrepresentations for timing-valued elements in FHIR, allowing this function to be used across any resource.\n\nThe input can be provided as a dateTime, Period, Timing, instant, string, Age, or Range.\nThe intent of this function is to provide a clear and concise mechanism to treat single\nelements that have multiple possible representations as intervals so that logic doesn't have to account\nfor the variability. More complex calculations (such as medication request period or dispense period\ncalculation) need specific guidance and consideration. That guidance may make use of this function, but\nthe focus of this function is on single element calculations where the semantics are unambiguous.\nIf the input is a dateTime, the result a DateTime Interval beginning and ending on that dateTime.\nIf the input is a Period, the result is a DateTime Interval.\nIf the input is a Timing, an error is raised indicating a single interval cannot be computed from a Timing.\nIf the input is an instant, the result is a DateTime Interval beginning and ending on that instant.\nIf the input is a string, an error is raised indicating a single interval cannot be computed from a string.\nIf the input is an Age, the result is a DateTime Interval beginning when the patient was the given Age,\nand ending immediately prior to when the patient was the given Age plus one year.\nIf the input is a Range, the result is a DateTime Interval beginning when the patient was the Age given\nby the low end of the Range, and ending immediately prior to when the patient was the Age given by the\nhigh end of the Range plus one year.\n\nNOTE: Due to the\ncomplexity of determining a single interval from a Timing or String type, this function will throw a run-time exception if it is used\nwith a Timing or String.\n*/\ndefine fluent function toInterval(choice Choice<FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instant, FHIR.string, FHIR.Age, FHIR.Range>):\n  case\n    when choice is FHIR.dateTime then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.dateTime), FHIRHelpers.ToDateTime(choice as FHIR.dateTime)]\n    when choice is FHIR.Period then\n      FHIRHelpers.ToInterval(choice as FHIR.Period)\n    when choice is FHIR.instant then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.instant), FHIRHelpers.ToDateTime(choice as FHIR.instant)]\n    when choice is FHIR.Age then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age) + 1 year)\n    when choice is FHIR.Range then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).low),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).high) + 1 year)\n    when choice is FHIR.Timing then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a Timing value is not supported')\n    when choice is FHIR.string then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported')\n    else\n      null as Interval<DateTime>\n  end"
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
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueString" : "earliest"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function earliest(immunizations List<Immunization>):\n  First(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMeningococcalEncounterElements"
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
      "display" : "Value set Meningococcal vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10"
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
      "name" : "Client is due for meningococcal vaccination",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "The primary series is complete. Client is due for meningococcal booster dose",
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
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10"
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine",
  "title" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine\nMonovalent MenC conjugate vaccine schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Children aged 2–11 months require 2 doses administered. \nFor monovalent MenC conjugate vaccine, one single intramuscular dose is recommended for children aged ≥ 12 months, \nteenagers and adults. Children aged 2–11 months require 2 doses administered. \nChildren aged 2–11 months require 2 doses administered at an interval of at least 2 months.\nFor monovalent MenC conjugate vaccine, one single intramuscular dose is recommended for children aged ≥ 12 months, teenagers and adults.\nIt is not yet known whether booster doses will be needed for long-term protection in healthy individuals who received primary vaccination when aged ≥ 12 months. "
    }],
    "title" : "Determine if the client is due for Meningococcal.",
    "description" : "Determine if the client is due for Meningococcal vaccine according to the national immunization protocol.\nMonovalent MenC conjugate vaccine schedule",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for meningococcal vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for meningococcal vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE10', display: 'Meningococcal vaccines' } }, display: 'Meningococcal vaccines' }"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Children aged 2–11 months require 2 doses administered at an interval of at least 2 months and a booster about 1 year after."
    }],
    "title" : "Determine if the client is due for Meningococcal.",
    "description" : "Determine if the client is due for Meningococcal vaccine according to the national immunization protocol.\nMonovalent MenC conjugate vaccine schedule",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "The primary series is complete. Client is due for meningococcal booster dose",
        "language" : "text/cql-identifier",
        "expression" : "The primary series is complete. Client is due for meningococcal booster dose"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE10', display: 'Meningococcal vaccines' } }, display: 'Meningococcal vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine.",
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
