# IMMZ.D2.DT.Typhoid.Ty21a - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Typhoid.Ty21a**

## PlanDefinition: IMMZ.D2.DT.Typhoid.Ty21a 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTyphoidTy21a | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD2DTTyphoidTy21a |

 
IMMZ.D2.DT.Typhoid.Ty21a Live attenuated Ty21a vaccine schedule 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Typhoid.Ty21a](PlanDefinition-IMMZD2DTTyphoidTy21a.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Typhoid.Ty21a
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-31 13:43:57+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Typhoid.Ty21a Live attenuated Ty21a vaccine schedule
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTTyphoidTy21aLogic](Library-IMMZD2DTTyphoidTy21aLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTTyphoidTy21a",
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
        "code" : "DE203",
        "display" : "Completed the primary vaccination series"
      }
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
        "valueInteger" : 0
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 6 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 6 years\n@pseudocode: Today's date − \"Date of birth\" < 6 years\n@code: Client's age is less than 6 years-40\n@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule\n*/\ndefine \"Client's age is less than 6 years\":\n  Encounter.\"Current Patient Age In Years\" < 6"
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Typhoid vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Typhoid vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Typhoid vaccination Case 1\":\n  Encounter.\"Client's age is less than 6 years\""
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to 6 years"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 6 years\n@pseudocode: Today's date − \"Date of birth\" ≥ 6 years\n@code: Client's age is more than or equal to 6 years-40\n@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule\n*/\ndefine \"Client's age is more than or equal to 6 years\":\n  Encounter.\"Current Patient Age In Years\" >= 6"
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
        "valueInteger" : 4
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
        "valueInteger" : 5
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Typhoid containing Doses Administered to Patient\n*/\ndefine \"Typhoid Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Typhoid vaccines\""
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Typhoid Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Typhoid containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Typhoid Primary Series Doses Administered to Patient\":\n  \"Typhoid Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Typhoid Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Typhoid Primary Series doses\n*/\ndefine \"Number of Typhoid Primary Series Doses Administered\":\n  Count(\"Typhoid Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One typhoid primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One typhoid primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Typhoid vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One typhoid primary series dose was administered-116\n@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule\n@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule\n*/\ndefine \"One typhoid primary series dose was administered\":\n  \"Number of Typhoid Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Completed the primary vaccination series Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Completed the primary vaccination series Observation\n*/\ndefine \"Completed the primary vaccination series Observation\":\n  ([Observation: Concepts.\"Completed the primary vaccination series\"]).complete()"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Completed the primary vaccination series Observation"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Completed the primary vaccination series Observation\n*/\ndefine \"Completed the primary vaccination series Observation\":\n  Elements.\"Completed the primary vaccination series Observation\".encounterOrOnBefore(EncounterId, Today)"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Primary series is complete\n@pseudocode: \"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Typhoid vaccines\") = TRUE\n@code: Primary series is complete-93\n@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule\n*/\ndefine \"Primary series is complete\":\n  \"One typhoid primary series dose was administered\"\n  or Coalesce(\n    \"Typhoid Doses Administered to Patient\" Dose\n    aggregate Result: Encounter.\"Completed the primary vaccination series Observation\".partOf.references(Dose) or Result,\n    false )"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is not complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Primary series is not complete\n@pseudocode: \"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Typhoid vaccines\") ≠ TRUE\n@code: Primary series is not complete-93\n@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule\n*/\ndefine \"Primary series is not complete\":\n  not \"Primary series is complete\""
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
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Live Attenuated Vaccines"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n  @dataElement: Live attenuated vaccines\n*/\ndefine \"Live Attenuated Vaccines\":\n  \"Doses Administered to Patient\" I \n    where I.vaccineCode in Concepts.\"Live Attenuated\""
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Live Attenuated Vaccines"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dataElement Live attenuated vaccines\n*/\ndefine \"Live Attenuated Vaccines\":\n  Elements.\"Live Attenuated Vaccines\" I\n    where I.occurrence.toInterval() same day or before Today"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Live Attenuated Vaccine"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dataElement Date and time of last live attenuated vaccine\n*/\ndefine \"Date of Latest Live Attenuated Vaccine\":\n  date from start of \"Live Attenuated Vaccines\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Live vaccine was administered in the last 4 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Live vaccine was administered in the last 4 weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weeks\n*/\ndefine \"Live vaccine was administered in the last 4 weeks\":\n\t\"Date of Latest Live Attenuated Vaccine\" is not null \n    and duration in weeks between \"Date of Latest Live Attenuated Vaccine\" and Today < 4"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Live vaccine, other than typhoid, was administered in the past 4 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Live vaccine, other than typhoid, was administered in the past 4 weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE AND \"Vaccine type\" ≠ \"Typhoid vaccines\") < 4 weeks\n@code: Live vaccine, other than typhoid, was administered in the past 4 weeks-132\n@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule\n*/\ndefine \"Live vaccine, other than typhoid, was administered in the past 4 weeks\":\n  Encounter.\"Live vaccine was administered in the last 4 weeks\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Typhoid vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Typhoid vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Typhoid vaccination Case 2\":\n  Encounter.\"Client's age is more than or equal to 6 years\"\n    and Encounter.\"Primary series is not complete\"\n    and Encounter.\"Live vaccine, other than typhoid, was administered in the past 4 weeks\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Typhoid vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Typhoid vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for Typhoid vaccination\":\n  \"Client is not due for Typhoid vaccination Case 1\"\n    or \"Client is not due for Typhoid vaccination Case 2\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for Typhoid vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for Typhoid vaccination Guidance\n@guidance = Should not vaccinate client with typhoid dose as client's age is less than 6 years.\nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose.\n@guidance = Should not vaccinate client with typhoid dose as live vaccine was administered in the past 4 weeks.\nCheck for other vaccines due and inform the caregiver or the client when the next dose should be administered.\n*/\ndefine \"Client is not due for Typhoid vaccination Guidance\":\n  case\n    when \"Client is not due for Typhoid vaccination Case 1\" then 'Should not vaccinate client with typhoid dose as client\\'s age is less than 6 years.\nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose.'\n    when \"Client is not due for Typhoid vaccination Case 2\" then 'Should not vaccinate client with typhoid dose as live vaccine was administered in the past 4 weeks.\nCheck for other vaccines due and inform the caregiver or the client when the next dose should be administered.'\n    else ''\n  end"
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No live vaccine was administered in the last 4 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No live vaccine was administered in the last 4 weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks\n*/\ndefine \"No live vaccine was administered in the last 4 weeks\":\n  not(\"Live vaccine was administered in the last 4 weeks\")"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No live vaccine, other than typhoid, was administered in the past 4 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No live vaccine, other than typhoid, was administered in the past 4 weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE AND \"Vaccine type\" ≠ \"Typhoid vaccines\") ≥ 4 weeks\n@code: No live vaccine, other than typhoid, was administered in the past 4 weeks-132\n@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule\n*/\ndefine \"No live vaccine, other than typhoid, was administered in the past 4 weeks\":\n  Encounter.\"No live vaccine was administered in the last 4 weeks\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Typhoid vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Typhoid vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for Typhoid vaccination\":\n  Encounter.\"Client's age is more than or equal to 6 years\"\n    and Encounter.\"Primary series is not complete\"\n    and Encounter.\"No live vaccine, other than typhoid, was administered in the past 4 weeks\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for Typhoid vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for Typhoid vaccination Guidance\n@guidance: Prescribe the Ty21a primary series (if not done yet). Should vaccinate client with typhoid dose as primary series has not been completed and no live vaccines was administered in the past 4 weeks.\nCheck for contraindications.\n*/\ndefine \"Client is due for Typhoid vaccination Guidance\":\n  'Prescribe the Ty21a primary series (if not done yet). Should vaccinate client with typhoid dose as primary series has not been completed and no live vaccines was administered in the past 4 weeks.\nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest Typhoid Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Typhoid Dose\n*/\ndefine \"Date of Latest Typhoid Dose\":\n  date from start of \"Typhoid Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest typhoid dose was administered less than 3 years ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest typhoid dose was administered less than 3 years ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Typhoid vaccines\") < 3 years\n@code: The latest typhoid dose was administered less than 3 years ago-106\n@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule\n@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule\n*/\ndefine \"The latest typhoid dose was administered less than 3 years ago\":\n  \"Date of Latest Typhoid Dose\" is not null\n    and duration in years between \"Date of Latest Typhoid Dose\" and Today < 3"
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for typhoid booster dose Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for typhoid booster dose Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for typhoid booster dose Case 1\":\n  Encounter.\"Client's age is more than or equal to 6 years\"\n    and Encounter.\"Primary series is complete\"\n    and Encounter.\"The latest typhoid dose was administered less than 3 years ago\""
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
        "valueString" : "IMMZD2DTTyphoidEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest typhoid dose was administered more than 3 years ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest typhoid dose was administered more than 3 years ago\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Typhoid vaccines\") ≥ 3 years\n@code: The latest typhoid dose was administered more than 3 years ago-106\n@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule\n@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule\n*/\ndefine \"The latest typhoid dose was administered more than 3 years ago\":\n  not \"The latest typhoid dose was administered less than 3 years ago\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for typhoid booster dose Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for typhoid booster dose Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for typhoid booster dose Case 2\":\n  Encounter.\"Client's age is more than or equal to 6 years\"\n    and Encounter.\"Primary series is complete\"\n    and Encounter.\"The latest typhoid dose was administered more than 3 years ago\"\n    and Encounter.\"Live vaccine, other than typhoid, was administered in the past 4 weeks\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for typhoid booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for typhoid booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for typhoid booster dose\":\n  \"Client is not due for typhoid booster dose Case 1\"\n    or \"Client is not due for typhoid booster dose Case 2\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for typhoid booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for typhoid booster dose Guidance\n@guidance = Should not vaccinate client with typhoid booster dose as the latest typhoid dose was administered less than 3 years ago.\nCheck for any other vaccines due and inform the caregiver or the client when the next dose should be administered.\n@guidance = Should not vaccinate client with typhoid booster dose as live vaccine was administered in the past 4 weeks.\nCheck for any other vaccines due and inform the caregiver or the client when the next dose should be administered\n*/\ndefine \"Client is not due for typhoid booster dose Guidance\":\n  case\n    when \"Client is not due for typhoid booster dose Case 1\" then 'Should not vaccinate client with typhoid booster dose as the latest typhoid dose was administered less than 3 years ago.\nCheck for any other vaccines due and inform the caregiver or the client when the next dose should be administered.'\n    when \"Client is not due for typhoid booster dose Case 2\" then 'Should not vaccinate client with typhoid booster dose as live vaccine was administered in the past 4 weeks.\nCheck for any other vaccines due and inform the caregiver or the client when the next dose should be administered'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for typhoid booster dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for typhoid booster dose\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for typhoid booster dose\":\n  Encounter.\"Client's age is more than or equal to 6 years\"\n    and Encounter.\"Primary series is complete\"\n    and Encounter.\"The latest typhoid dose was administered more than 3 years ago\"\n    and Encounter.\"No live vaccine, other than typhoid, was administered in the past 4 weeks\""
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for typhoid booster dose Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for typhoid booster dose Guidance\n@guidance: Prescribe the Ty21a booster series. Should vaccinate client with typhoid booster dose as primary series has been completed, the latest typhoid dose was administered more than 3 years ago and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications.\n*/\ndefine \"Client is due for typhoid booster dose Guidance\":\n  'Prescribe the Ty21a booster series. Should vaccinate client with typhoid booster dose as primary series has been completed, the latest typhoid dose was administered more than 3 years ago and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for Typhoid vaccination\" then \"Client is not due for Typhoid vaccination Guidance\"\n    when \"Client is due for Typhoid vaccination\" then \"Client is due for Typhoid vaccination Guidance\"\n    when \"Client is not due for typhoid booster dose\" then \"Client is not due for typhoid booster dose Guidance\"\n    when \"Client is due for typhoid booster dose\" then \"Client is due for typhoid booster dose Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTTyphoidTy21aLogic"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if any of the given references are to the given resource\n@comment: Returns true if the `id` element of the given resource exactly equals the tail of any of the given references.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(references List<FHIR.Reference>, resource FHIR.Resource):\n  exists (references R where R.references(resource))"
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
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if the given reference is to the given resource\n@comment: Returns true if the `id` element of the given resource exactly equals the tail of the given reference.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(reference FHIR.Reference, resource FHIR.Resource):\n  resource.id = Last(Split(reference.reference, '/'))"
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
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "encounterOrOnBefore"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets observation from an encounter or on or before a date\n */\ndefine fluent function encounterOrOnBefore(observations List<Observation>, EncounterId String, beforeDate Date):\n  observations O where\n    (O.encounter.references(EncounterId)\n      or O.effective.toInterval() starts same day or before beforeDate)"
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
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if the given reference is to the given resourceId\n@comment: Returns true if the `resourceId` parameter exactly equals the tail of the given reference.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(reference FHIR.Reference, resourceId String):\n  resourceId = Last(Split(reference.reference, '/'))"
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
        "valueString" : "complete"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function complete(observations List<Observation>):\n  observations O where O.status in { 'final', 'amended', 'corrected' }"
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
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ObservationStatus): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 55
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
        "valueInteger" : 56
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTTyphoidEncounterElements"
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
      "display" : "Code system IMMZD",
      "resource" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Typhoid vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Live Attenuated",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.LiveAttenuated"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "EncounterId",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "string"
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
      "name" : "Client is due for Typhoid vaccination",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Client is due for typhoid booster dose",
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
      "mustSupport" : ["status",
      "isSubpotent",
      "vaccineCode",
      "protocolApplied",
      "occurrence"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      },
      {
        "path" : "vaccineCode",
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.LiveAttenuated"
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
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21"
      }]
    },
    {
      "type" : "Resource",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Resource"],
      "mustSupport" : ["id"]
    },
    {
      "type" : "Observation",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
      "mustSupport" : ["code", "encounter", "effective", "status"],
      "codeFilter" : [{
        "path" : "code",
        "code" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
          "code" : "DE203",
          "display" : "Completed the primary vaccination series"
        }]
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTyphoidTy21a",
  "version" : "0.2.0",
  "name" : "IMMZD2DTTyphoidTy21a",
  "title" : "IMMZ.D2.DT.Typhoid.Ty21a",
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
  "description" : "IMMZ.D2.DT.Typhoid.Ty21a\nLive attenuated Ty21a vaccine schedule",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTTyphoidTy21aLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "For Ty21a, a 3-dose oral immunization schedule, administering the vaccine every second \n  (alternate) day, is recommended above 6 years of age. If interruption between doses is > 21 days, restart primary series."
    }],
    "title" : "Determine if the client is due for Typhoid.",
    "description" : "Determine if the client is due for Typhoid vaccine according to the national immunization protocol.\nLive attenuated Ty21a vaccine schedule",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for Typhoid vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for Typhoid vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE21', display: 'Typhoid vaccines' } }, display: 'Typhoid vaccines' }"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Revaccination is recommended every 3–7 years for Ty21a (every 1 to 7 years for travellers from non-endemic \n  to endemic areas, depending on national policies). As a general rule, any live vaccine may be given either simultaneously \n  or at an interval of 4 weeks."
    }],
    "title" : "Determine if the client is due for Typhoid.",
    "description" : "Determine if the client is due for Typhoid vaccine according to the national immunization protocol.\nLive attenuated Ty21a vaccine schedule",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for typhoid booster dose",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for typhoid booster dose"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE21', display: 'Typhoid vaccines' } }, display: 'Typhoid vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Typhoid.Ty21a.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Typhoid.Ty21a.",
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
