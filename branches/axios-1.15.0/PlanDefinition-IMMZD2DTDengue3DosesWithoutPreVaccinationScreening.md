# IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening**

## PlanDefinition: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening | *Version*:0.2.0 |
| Draft as of 2026-04-12 | *Computable Name*:IMMZD2DTDengue3DosesWithoutPreVaccinationScreening |

 
IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years] 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening](PlanDefinition-IMMZD2DTDengue3DosesWithoutPreVaccinationScreening.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-04-12 07:49:12+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic](Library-IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreening",
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 9 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 9 years\n@pseudocode: Today's date − \"Date of birth\" < 9 years\n@code: Client's age is less than 9 years-40\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"Client's age is less than 9 years\":\n  Encounter.\"Current Patient Age In Years\" < 9"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for dengue vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for dengue vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for dengue vaccination Case 1\":\n  Encounter.\"Client's age is less than 9 years\""
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than 45 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than 45 years\n@pseudocode: Today's date − \"Date of birth\" > 45 years\n@code: Client's age is more than 45 years-41\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"Client's age is more than 45 years\":\n  Encounter.\"Current Patient Age In Years\" > 45"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for dengue vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for dengue vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for dengue vaccination Case 2\":\n  Encounter.\"Client's age is more than 45 years\""
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
        "valueInteger" : 5
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
        "valueInteger" : 6
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Dengue Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Dengue containing Doses Administered to Patient\n*/\ndefine \"Dengue Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Dengue vaccines\""
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Dengue Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Dengue containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Dengue Primary Series Doses Administered to Patient\":\n  \"Dengue Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Dengue Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Dengue Primary Series doses\n*/\ndefine \"Number of Dengue Primary Series Doses Administered\":\n  Count(\"Dengue Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One dengue primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One dengue primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One dengue primary series dose was administered-115\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"One dengue primary series dose was administered\":\n  \"Number of Dengue Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is between 9 years and 45 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is between 9 years and 45 years\n@pseudocode: 9 years ≤ Today's date − \"Date of birth\" ≤ 45 years\n@code: Client's age is between 9 years and 45 years-51\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"Client's age is between 9 years and 45 years\":\n  Encounter.\"Current Patient Age In Years\" >= 9\n  and Encounter.\"Current Patient Age In Years\" <= 45"
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Dengue Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Dengue Dose\n*/\ndefine \"Date of Latest Dengue Dose\":\n  date from start of \"Dengue Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest dengue dose was administered less than 6 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest dengue dose was administered less than 6 months ago\n@pseudocode: Today's date - Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Dengue vaccines\") < 6 months\n@code: The latest dengue dose was administered less than 6 months ago-106\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"The latest dengue dose was administered less than 6 months ago\":\n  \"Date of Latest Dengue Dose\" is not null\n  and duration in months between \"Date of Latest Dengue Dose\" and Today < 6"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for dengue vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for dengue vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for dengue vaccination Case 3\":\n  Encounter.\"One dengue primary series dose was administered\"\n    and Encounter.\"Client's age is between 9 years and 45 years\"\n    and Encounter.\"The latest dengue dose was administered less than 6 months ago\""
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two dengue primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two dengue primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two dengue primary series doses were administered-115\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"Two dengue primary series doses were administered\":\n  \"Number of Dengue Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for dengue vaccination Case 4"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for dengue vaccination Case 4\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for dengue vaccination Case 4\":\n  Encounter.\"Two dengue primary series doses were administered\"\n    and Encounter.\"Client's age is between 9 years and 45 years\"\n    and Encounter.\"The latest dengue dose was administered less than 6 months ago\""
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for dengue vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for dengue vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for dengue vaccination\":\n  \"Client is not due for dengue vaccination Case 1\"\n    or \"Client is not due for dengue vaccination Case 2\"\n    or \"Client is not due for dengue vaccination Case 3\"\n    or \"Client is not due for dengue vaccination Case 4\""
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for dengue vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for dengue vaccination Guidance\n@guidance = Should not vaccinate client with first dengue dose as client's age is less than 9 years. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose.\n@guidance = Should not vaccinate client with first dengue dose as client's age is more than 45 years. \nCheck for any vaccines due.\n@guidance = Should not vaccinate client with second dengue dose as latest dengue dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose.\n@guidance = Should not vaccinate client with third dengue dose as latest dengue vaccine was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose.\n*/\ndefine \"Client is not due for dengue vaccination Guidance\":\n  case\n    when \"Client is not due for dengue vaccination Case 1\" then 'Should not vaccinate client with first dengue dose as client\\'s age is less than 9 years. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose.'\n    when \"Client is not due for dengue vaccination Case 2\" then 'Should not vaccinate client with first dengue dose as client\\'s age is more than 45 years. \nCheck for any vaccines due.'\n    when \"Client is not due for dengue vaccination Case 3\" then 'Should not vaccinate client with second dengue dose as latest dengue dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose.'\n    when \"Client is not due for dengue vaccination Case 4\" then 'Should not vaccinate client with third dengue dose as latest dengue vaccine was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No dengue primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No dengue primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No dengue primary series doses were administered-115\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"No dengue primary series doses were administered\":\n  \"Number of Dengue Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for dengue vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for dengue vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for dengue vaccination Case 1\":\n  Encounter.\"No dengue primary series doses were administered\"\n    and Encounter.\"Client's age is between 9 years and 45 years\""
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest dengue dose was administered more than 6 months ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest dengue dose was administered more than 6 months ago\n@pseudocode: Today's date - Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Dengue vaccines\") ≥ 6 months\n@code: The latest dengue dose was administered more than 6 months ago-106\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"The latest dengue dose was administered more than 6 months ago\":\n  \"Date of Latest Dengue Dose\" is not null\n  and duration in months between \"Date of Latest Dengue Dose\" and Today >= 6"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for dengue vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for dengue vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for dengue vaccination Case 2\":\n  Encounter.\"One dengue primary series dose was administered\"\n    and Encounter.\"Client's age is between 9 years and 45 years\"\n    and Encounter.\"The latest dengue dose was administered more than 6 months ago\""
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for dengue vaccination Case 3"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for dengue vaccination Case 3\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for dengue vaccination Case 3\":\n  Encounter.\"Two dengue primary series doses were administered\"\n    and Encounter.\"Client's age is between 9 years and 45 years\"\n    and Encounter.\"The latest dengue dose was administered more than 6 months ago\""
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for dengue vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for dengue vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for dengue vaccination\":\n  \"Client is due for dengue vaccination Case 1\"\n    or \"Client is due for dengue vaccination Case 2\"\n    or \"Client is due for dengue vaccination Case 3\""
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for dengue vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for dengue vaccination Guidance\n@guidance = Should vaccinate client with first dengue dose as no dengue doses were administered and client is within appropriate age range. \nCheck for contraindications.\n@guidance = Should vaccinate client with second dengue dose as latest dengue dose was administered more than 6 months ago. \nCheck for contraindications.\n@guidance = Should vaccinate client with third dengue dose as latest dengue dose was administered more than 6 months ago. \nCheck for contraindications.\n*/\ndefine \"Client is due for dengue vaccination Guidance\":\n  case\n    when \"Client is due for dengue vaccination Case 1\" then 'Should vaccinate client with first dengue dose as no dengue doses were administered and client is within appropriate age range. \nCheck for contraindications.'\n    when \"Client is due for dengue vaccination Case 2\" then 'Should vaccinate client with second dengue dose as latest dengue dose was administered more than 6 months ago. \nCheck for contraindications.'\n    when \"Client is due for dengue vaccination Case 3\" then 'Should vaccinate client with third dengue dose as latest dengue dose was administered more than 6 months ago. \nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTDengueEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Three dengue primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three dengue primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three dengue primary series doses were administered-115\n@decision: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)\n@decision: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]\n*/\ndefine \"Three dengue primary series doses were administered\":\n  \"Number of Dengue Primary Series Doses Administered\" = 3"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Dengue immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Dengue immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Dengue vaccines\")\"\n*/\ndefine \"Dengue immunization schedule is complete\":\n  Encounter.\"Three dengue primary series doses were administered\"\n    and Encounter.\"Client's age is between 9 years and 45 years\""
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Dengue immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Dengue immunization schedule is complete Guidance\n@guidance: Dengue immunization schedule is complete. Three dengue primary series doses were administered. \nCheck for any other vaccines due.\n*/\ndefine \"Dengue immunization schedule is complete Guidance\":\n  'Dengue immunization schedule is complete. Three dengue primary series doses were administered. \nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for dengue vaccination\" then \"Client is not due for dengue vaccination Guidance\"\n    when \"Client is due for dengue vaccination\" then \"Client is due for dengue vaccination Guidance\"\n    when \"Dengue immunization schedule is complete\" then \"Dengue immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
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
        "valueInteger" : 30
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
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 37
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTDengueEncounterElements"
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
      "display" : "Value set Dengue vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE25"
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
      "name" : "Has Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Client is due for dengue vaccination",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening",
  "version" : "0.2.0",
  "name" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreening",
  "title" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening",
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
  "description" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening\nCYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Currently, the dengue vaccine should be used within the indicated age range, which in \nmost countries is 9–45 years. \nIf pre-vaccination screening is not feasible, vaccination without individual screening could be \nconsidered in areas with recent documentation of seroprevalence rates of at least 80% by age 9 \nyears. Communication needs to ensure appropriate and full disclosure of the risks of vaccination \nof persons with unknown serostatus.\nCYD-TDV is recommended as a 3-dose series given 6 months apart. Should a vaccine dose be delayed \nfor any reason, it is not necessary to restart the course and the next dose in the series should \nbe administered as soon as possible."
    }],
    "title" : "Determine if the client is due for Dengue.",
    "description" : "Determine if the client is due for Dengue vaccine according to the national immunization protocol.\nCYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for dengue vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for dengue vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE25', display: 'Dengue vaccines' } }, display: 'Dengue vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening.",
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
