# IMMZ.D2.DT.Rubella.High incidence - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Rubella.High incidence**

## PlanDefinition: IMMZ.D2.DT.Rubella.High incidence 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRubellaHighIncidence | *Version*:0.2.0 |
| Draft as of 2026-03-03 | *Computable Name*:IMMZD2DTRubellaHighIncidence |

 
IMMZ.D2.DT.Rubella.High incidence Countries with high incidence and mortality from rubella 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Rubella.High incidence](PlanDefinition-IMMZD2DTRubellaHighIncidence.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Rubella.High incidence
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-03 13:07:11+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Rubella.High incidence Countries with high incidence and mortality from rubella
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTRubellaHighIncidenceLogic](Library-IMMZD2DTRubellaHighIncidenceLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTRubellaHighIncidence",
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
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 9 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 9 months\n@pseudocode: Today's date − \"Date of birth\" < 9 months\n@code: Client's age is less than 9 months-41\n@decision: IMMZ.D2.DT.Rubella.High incidence: Countries with high incidence and mortality from rubella\n*/\ndefine \"Client's age is less than 9 months\":\n  Encounter.\"Current Patient Age In Months\" < 9"
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for rubella vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for rubella vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for rubella vaccination Case 1\":\n  Encounter.\"Client's age is less than 9 months\""
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
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Rubella Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Rubella containing Doses Administered to Patient\n*/\ndefine \"Rubella Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"Rubella-containing vaccines\""
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
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Rubella Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Rubella containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"Rubella Primary Series Doses Administered to Patient\":\n  \"Rubella Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of Rubella Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Rubella Primary Series doses\n*/\ndefine \"Number of Rubella Primary Series Doses Administered\":\n  Count(\"Rubella Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No rubella primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No rubella primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Rubella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No rubella primary series dose was administered-127\n@decision: IMMZ.D2.DT.Rubella.High incidence: Countries with high incidence and mortality from rubella\n@decision: IMMZ.D2.DT.Rubella.Low incidence: Countries with low incidence of rubella\n*/\ndefine \"No rubella primary series dose was administered\":\n  \"Number of Rubella Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is more than or equal to 9 months"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 9 months\n@pseudocode: Today's date − \"Date of birth\" ≥ 9 months\n@code: Client's age is more than or equal to 9 months-41\n@decision: IMMZ.D2.DT.Rubella.High incidence: Countries with high incidence and mortality from rubella\n*/\ndefine \"Client's age is more than or equal to 9 months\":\n  Encounter.\"Current Patient Age In Months\" >= 9"
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
        "valueString" : "Live Attenuated Vaccines"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n  @dataElement: Live attenuated vaccines\n*/\ndefine \"Live Attenuated Vaccines\":\n  \"Doses Administered to Patient\" I \n    where I.vaccineCode in Concepts.\"Live Attenuated\""
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
        "valueString" : "Live Attenuated Vaccines"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dataElement Live attenuated vaccines\n*/\ndefine \"Live Attenuated Vaccines\":\n  Elements.\"Live Attenuated Vaccines\" I\n    where I.occurrence.toInterval() same day or before Today"
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
        "valueInteger" : 12
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
        "valueInteger" : 13
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Live vaccine was administered in the last 4 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Live vaccine was administered in the last 4 weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weeks\n@code: Live vaccine was administered in the last 4 weeks-92\n@decision: IMMZ.D2.DT.Rubella.High incidence: Countries with high incidence and mortality from rubella\n*/\ndefine \"Live vaccine was administered in the last 4 weeks\":\n  Encounter.\"Live vaccine was administered in the last 4 weeks\""
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for rubella vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for rubella vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for rubella vaccination Case 2\":\n  Encounter.\"No rubella primary series dose was administered\"\n    and Encounter.\"Client's age is more than or equal to 9 months\"\n    and Encounter.\"Live vaccine was administered in the last 4 weeks\""
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for rubella vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for rubella vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for rubella vaccination\":\n  \"Client is not due for rubella vaccination Case 1\"\n    or \"Client is not due for rubella vaccination Case 2\""
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for rubella vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for rubella vaccination Guidance\n@guidance = Should not vaccinate client with rubella dose as client's age is less than 9 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.\n@guidance = Should not vaccinate client with rubella dose as live vaccine was administered in the last 4 weeks.\nCheck for any other vaccines due.\n*/\ndefine \"Client is not due for rubella vaccination Guidance\":\n  case\n    when \"Client is not due for rubella vaccination Case 1\" then 'Should not vaccinate client with rubella dose as client\\'s age is less than 9 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose.'\n    when \"Client is not due for rubella vaccination Case 2\" then 'Should not vaccinate client with rubella dose as live vaccine was administered in the last 4 weeks.\nCheck for any other vaccines due.'\n    else ''\n  end"
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
        "valueInteger" : 18
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No live vaccine was administered in the last 4 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No live vaccine was administered in the last 4 weeks\n@pseudocode: Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks\n@code: No live vaccine was administered in the last 4 weeks-92\n@decision: IMMZ.D2.DT.Rubella.High incidence: Countries with high incidence and mortality from rubella\n@decision: IMMZ.D2.DT.Rubella.Low incidence: Countries with low incidence of rubella\n*/\ndefine \"No live vaccine was administered in the last 4 weeks\":\n  Encounter.\"No live vaccine was administered in the last 4 weeks\""
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for rubella vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for rubella vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\"\n*/\ndefine \"Client is due for rubella vaccination\":\n  Encounter.\"No rubella primary series dose was administered\"\n    and Encounter.\"Client's age is more than or equal to 9 months\"\n    and Encounter.\"No live vaccine was administered in the last 4 weeks\""
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for rubella vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for rubella vaccination Guidance\n@guidance: Should vaccinate client with rubella dose as no rubella doses were administered, client is within the appropriate age range and no live vaccine was administered in the last 4 weeks.\nCheck for contraindications.\n*/\ndefine \"Client is due for rubella vaccination Guidance\":\n  'Should vaccinate client with rubella dose as no rubella doses were administered, client is within the appropriate age range and no live vaccine was administered in the last 4 weeks.\nCheck for contraindications.'"
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
        "valueString" : "IMMZD2DTRubellaEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One rubella primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One rubella primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Rubella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One rubella primary series dose was administered-127\n@decision: IMMZ.D2.DT.Rubella.High incidence: Countries with high incidence and mortality from rubella\n@decision: IMMZ.D2.DT.Rubella.Low incidence: Countries with low incidence of rubella\n*/\ndefine \"One rubella primary series dose was administered\":\n  \"Number of Rubella Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella immunization schedule is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella immunization schedule is complete\n@pseudocode: \"Immunization recommendation status\" = \"Complete\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Rubella-containing vaccines\")\n*/\ndefine \"Rubella immunization schedule is complete\":\n  Encounter.\"One rubella primary series dose was administered\""
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Rubella immunization schedule is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Rubella immunization schedule is complete Guidance\n@guidance: Rubella immunization schedule is complete. One rubella primary series dose was administered.\nCheck for any other vaccines due.\n*/\ndefine \"Rubella immunization schedule is complete Guidance\":\n  'Rubella immunization schedule is complete. One rubella primary series dose was administered.\nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for rubella vaccination\" then \"Client is not due for rubella vaccination Guidance\"\n    when \"Client is due for rubella vaccination\" then \"Client is due for rubella vaccination Guidance\"\n    when \"Rubella immunization schedule is complete\" then \"Rubella immunization schedule is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTRubellaHighIncidenceLogic"
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
        "valueInteger" : 26
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
        "valueInteger" : 27
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
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 33
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
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTRubellaEncounterElements"
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
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Rubella-containing vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE17"
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
      "name" : "Client is due for rubella vaccination",
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
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode", "occurrence"]
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRubellaHighIncidence",
  "version" : "0.2.0",
  "name" : "IMMZD2DTRubellaHighIncidence",
  "title" : "IMMZ.D2.DT.Rubella.High incidence",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-03T13:07:11+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.Rubella.High incidence\nCountries with high incidence and mortality from rubella",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTRubellaHighIncidenceLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "The first dose of rubella-containing vaccine can be delivered at 9 months of age, due \n  to a high level of measles virus transmission."
    }],
    "title" : "Determine if the client is due for Rubella.",
    "description" : "Determine if the client is due for Rubella vaccine according to the national immunization protocol.\nCountries with high incidence and mortality from rubella",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for rubella vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for rubella vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE17', display: 'Rubella-containing vaccines' } }, display: 'Rubella-containing vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Rubella.High incidence.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Rubella.High incidence.",
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
