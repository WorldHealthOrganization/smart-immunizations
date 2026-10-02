# IMMZ.D2.DT.Polio.Sequential IPV–bOPV - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Polio.Sequential IPV–bOPV**

## PlanDefinition: IMMZ.D2.DT.Polio.Sequential IPV–bOPV 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV | *Version*:0.2.0 |
| Draft as of 2026-03-29 | *Computable Name*:IMMZD2DTPolioSequentialIPVbOPV |

 
IMMZ.D2.DT.Polio.Sequential IPV–bOPV Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage]) 

* **Actions: **: **Url: **
  * : [IMMZ.D2.DT.Polio.Sequential IPV–bOPV](PlanDefinition-IMMZD2DTPolioSequentialIPVbOPV.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D2.DT.Polio.Sequential IPV–bOPV
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-29 17:23:09+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D2.DT.Polio.Sequential IPV–bOPV Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD2DTPolioSequentialIPVbOPVLogic](Library-IMMZD2DTPolioSequentialIPVbOPVLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTPolioSequentialIPVbOPV",
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
        "valueString" : "Number of Polio Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of Polio Primary Series doses\n*/\ndefine \"Number of Polio Primary Series Doses Administered\":\n  Count(\"Polio Primary Series Doses Administered to Patient\")"
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
        "valueString" : "No poliovirus primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No poliovirus primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No poliovirus primary series doses were administered-130\n@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: \"Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (applicable for all countries)\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)\n*/\ndefine \"No poliovirus primary series doses were administered\":\n  \"Number of Polio Primary Series Doses Administered\" = 0"
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
        "valueString" : "Current Patient Age In Weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @dataElement Patient age in weeks\n */\ndefine \"Current Patient Age In Weeks\":\n  AgeInWeeksAt(Today)"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Client's age is less than 8 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is less than 8 weeks\n@pseudocode: Today's date − \"Date of birth\" < 8 weeks\n@code: Client's age is less than 8 weeks-40\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n*/\ndefine \"Client's age is less than 8 weeks\":\n  Encounter.\"Current Patient Age In Weeks\" < 8"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for IPV vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for IPV vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for IPV vaccination Case 1\":\n  Encounter.\"No poliovirus primary series doses were administered\"\n    and Encounter.\"Client's age is less than 8 weeks\""
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
        "valueString" : "One poliovirus primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One poliovirus primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One poliovirus primary series dose was administered-130\n@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: \"Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (applicable for all countries)\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)\n*/\ndefine \"One poliovirus primary series dose was administered\":\n  \"Number of Polio Primary Series Doses Administered\" = 1"
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
        "valueString" : "Polio Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Polio containing Doses Administered to Patient\n*/\ndefine \"Polio Doses Administered to Patient\":\n  PolioElements.\"Polio Doses Administered to Patient\".onOrBefore(Today)"
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
        "valueString" : "Date of Latest Polio Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest Polio Dose\n*/\ndefine \"Date of Latest Polio Dose\":\n  date from start of \"Polio Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest poliovirus dose was administered less than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest poliovirus dose was administered less than 4 weeks ago\n@pseudocode: Today's date − Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") < 4 weeks\n@code: The latest poliovirus dose was administered less than 4 weeks ago-120\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)\n*/\ndefine \"The latest poliovirus dose was administered less than 4 weeks ago\":\n  \"Date of Latest Polio Dose\" is not null\n    and duration in weeks between \"Date of Latest Polio Dose\" and Today < 4"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for IPV vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for IPV vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for IPV vaccination Case 2\":\n  Encounter.\"One poliovirus primary series dose was administered\"\n    and Encounter.\"The latest poliovirus dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for IPV vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for IPV vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for IPV vaccination\":\n  \"Client is not due for IPV vaccination Case 1\"\n    or \"Client is not due for IPV vaccination Case 2\""
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for IPV vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for IPV vaccination Guidance\n@guidance = Should not vaccinate client with first IPV dose as client's age is less than 8 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first poliovirus dose.\n@guidance = Should not vaccinate client with second IPV dose as the latest IPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.\n*/\ndefine \"Client is not due for IPV vaccination Guidance\":\n  case\n    when \"Client is not due for IPV vaccination Case 1\" then 'Should not vaccinate client with first IPV dose as client\\'s age is less than 8 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first poliovirus dose.'\n    when \"Client is not due for IPV vaccination Case 2\" then 'Should not vaccinate client with second IPV dose as the latest IPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose.'\n    else ''\n  end"
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
        "valueString" : "Client's age is more than or equal to 8 weeks"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Client's age is more than or equal to 8 weeks\n@pseudocode: Today's date − \"Date of birth\" ≥ 8 weeks\n@code: Client's age is more than or equal to 8 weeks-40\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n*/\ndefine \"Client's age is more than or equal to 8 weeks\":\n  Encounter.\"Current Patient Age In Weeks\" >= 8"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for IPV vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for IPV vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\" (where \"Type of poliovirus dose\" = \"IPV\")\n*/\ndefine \"Client is due for IPV vaccination Case 1\":\n  Encounter.\"No poliovirus primary series doses were administered\"\n    and Encounter.\"Client's age is more than or equal to 8 weeks\""
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "The latest poliovirus dose was administered more than 4 weeks ago"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: The latest poliovirus dose was administered more than 4 weeks ago\n@pseudocode: Today's date − Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") ≥ 4 weeks\n@code: The latest poliovirus dose was administered more than 4 weeks ago-120\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)\n*/\ndefine \"The latest poliovirus dose was administered more than 4 weeks ago\":\n  not(\"The latest poliovirus dose was administered less than 4 weeks ago\")"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for IPV vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for IPV vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\" (where \"Type of poliovirus dose\" = \"IPV\")\n*/\ndefine \"Client is due for IPV vaccination Case 2\":\n  Encounter.\"One poliovirus primary series dose was administered\"\n    and Encounter.\"The latest poliovirus dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for IPV vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for IPV vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\" (where \"Type of poliovirus dose\" = \"IPV\")\n*/\ndefine \"Client is due for IPV vaccination\":\n  \"Client is due for IPV vaccination Case 1\"\n    or \"Client is due for IPV vaccination Case 2\""
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for IPV vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for IPV vaccination Guidance\n@guidance = Should vaccinate client with first IPV dose as client is within appropriate age range and IPV dose was not administered. \nCheck for contraindications.\n@guidance = Should vaccinate client with second IPV dose as the latest IPV dose was administered more than 4 weeks ago.\nCheck for contraindications.\n*/\ndefine \"Client is due for IPV vaccination Guidance\":\n  case\n    when \"Client is due for IPV vaccination Case 1\" then 'Should vaccinate client with first IPV dose as client is within appropriate age range and IPV dose was not administered. \nCheck for contraindications.'\n    when \"Client is due for IPV vaccination Case 2\" then 'Should vaccinate client with second IPV dose as the latest IPV dose was administered more than 4 weeks ago.\nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two poliovirus primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two poliovirus primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two poliovirus primary series doses were administered-130\n@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: \"Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (applicable for all countries)\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)\n*/\ndefine \"Two poliovirus primary series doses were administered\":\n  \"Number of Polio Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for bOPV vaccination Case 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for bOPV vaccination Case 1\n@pseudocode: \"Immunization recommendation status\" = \"Due\" (where \"Type of poliovirus dose\" = \"bOPV\")\n*/\ndefine \"Client is due for bOPV vaccination Case 1\":\n  Encounter.\"Two poliovirus primary series doses were administered\""
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Three poliovirus primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Three poliovirus primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 3\n@code: Three poliovirus primary series doses were administered-130\n@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: \"Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (applicable for all countries)\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)\n*/\ndefine \"Three poliovirus primary series doses were administered\":\n  \"Number of Polio Primary Series Doses Administered\" = 3"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for bOPV vaccination Case 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for bOPV vaccination Case 2\n@pseudocode: \"Immunization recommendation status\" = \"Due\" (where \"Type of poliovirus dose\" = \"bOPV\")\n*/\ndefine \"Client is due for bOPV vaccination Case 2\":\n  Encounter.\"Three poliovirus primary series doses were administered\"\n    and Encounter.\"The latest poliovirus dose was administered more than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for bOPV vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for bOPV vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Due\" (where \"Type of poliovirus dose\" = \"bOPV\")\n*/\ndefine \"Client is due for bOPV vaccination\":\n  \"Client is due for bOPV vaccination Case 1\"\n    or \"Client is due for bOPV vaccination Case 2\""
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is due for bOPV vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is due for bOPV vaccination Guidance\n@guidance = Should vaccinate client with first bOPV dose as two IPV doses were administered.\nCheck for contraindications.\n@guidance = Should vaccinate client with second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.\nCheck for contraindications.\n*/\ndefine \"Client is due for bOPV vaccination Guidance\":\n  case\n    when \"Client is due for bOPV vaccination Case 1\" then 'Should vaccinate client with first bOPV dose as two IPV doses were administered.\nCheck for contraindications.'\n    when \"Client is due for bOPV vaccination Case 2\" then 'Should vaccinate client with second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.\nCheck for contraindications.'\n    else ''\n  end"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for bOPV vaccination"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for bOPV vaccination\n@pseudocode: \"Immunization recommendation status\" = \"Not due\"\n*/\ndefine \"Client is not due for bOPV vaccination\":\n  Encounter.\"Three poliovirus primary series doses were administered\"\n    and Encounter.\"The latest poliovirus dose was administered less than 4 weeks ago\""
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Client is not due for bOPV vaccination Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Client is not due for bOPV vaccination Guidance\n@guidance: Should not vaccinate client with second bOPV dose as the latest bOPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose\n*/\ndefine \"Client is not due for bOPV vaccination Guidance\":\n  'Should not vaccinate client with second bOPV dose as the latest bOPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose'"
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
        "valueString" : "IMMZD2DTPolioEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Four poliovirus primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Four poliovirus primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 4\n@code: Four poliovirus primary series doses were administered-130\n@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: \"Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (applicable for all countries)\n@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])\n*/\ndefine \"Four poliovirus primary series doses were administered\":\n  \"Number of Polio Primary Series Doses Administered\" = 4"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete\n@pseudocode: \"Immunization recommendation status\" = \"Further evaluation needed\"\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\n*/\ndefine \"Primary series is complete\":\n  Encounter.\"Four poliovirus primary series doses were administered\""
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Primary series is complete Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Primary series is complete Guidance\n@guidance: Poliovirus primary series is complete. Assess if supplementary bOPV dose(s) are necessary and create a clinical note.\nCheck for any other vaccines due.\n*/\ndefine \"Primary series is complete Guidance\":\n  'Poliovirus primary series is complete. Assess if supplementary bOPV dose(s) are necessary and create a clinical note.\nCheck for any other vaccines due.'"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
      },
      {
        "url" : "name",
        "valueString" : "Guidance"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case \n    when \"Client is not due for IPV vaccination\" then \"Client is not due for IPV vaccination Guidance\"\n    when \"Client is due for IPV vaccination\" then \"Client is due for IPV vaccination Guidance\"\n    when \"Client is due for bOPV vaccination\" then \"Client is due for bOPV vaccination Guidance\"\n    when \"Client is not due for bOPV vaccination\" then \"Client is not due for bOPV vaccination Guidance\"\n    when \"Primary series is complete\" then \"Primary series is complete Guidance\" \n    else ''\n  end"
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
        "valueString" : "IMMZD2DTPolioSequentialIPVbOPVLogic"
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
        "valueString" : "onOrBefore"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets immunizations on or before a date\n */\ndefine fluent function onOrBefore(immunizations List<Immunization>, beforeDate Date):\n  immunizations I where\n    I.occurrence.toInterval() same day or before beforeDate"
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
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
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
        "valueInteger" : 42
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
      "display" : "Library PolioElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPolioElements"
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
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
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
      "name" : "Guidance",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Client is due for bOPV vaccination",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Client is due for IPV vaccination",
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
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "vaccineCode"]
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPolioSequentialIPVbOPV",
  "title" : "IMMZ.D2.DT.Polio.Sequential IPV–bOPV",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-29T17:23:09+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D2.DT.Polio.Sequential IPV–bOPV\nSequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD2DTPolioSequentialIPVbOPVLogic"],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "For sequential IPV– bOPV schedules, WHO recommends that the first dose of IPV be given starting from 8 weeks of \n  age with an interval of 4–8 weeks before administration of the second IPV dose. This should be followed by at least 2 doses \n  of bOPV separated by 4–8 weeks depending on the risk of exposure to poliovirus in early childhood. Where a sequential IPV–bOPV \n  schedule is used, the initial administration of 2 doses of IPV should be followed by ≥2 doses of bOPV to ensure sufficient \n  levels of protection in the intestinal mucosa as well as a decrease in the burden of vaccine-associated paralytic polio (VAPP)."
    }],
    "title" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule",
    "description" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nSequential  \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high \nvaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share \nsubstantial population movement have a similarly high coverage])",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for IPV vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for IPV vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE31', display: 'Inactivated polio vaccines' } }, display: 'Inactivated polio vaccines' }"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "For sequential IPV– bOPV schedules, WHO recommends that the first dose of IPV be given starting from 8 weeks of \n  age with an interval of 4–8 weeks before administration of the second IPV dose. This should be followed by at least 2 doses \n  of bOPV separated by 4–8 weeks depending on the risk of exposure to poliovirus in early childhood. Where a sequential IPV–bOPV \n  schedule is used, the initial administration of 2 doses of IPV should be followed by ≥2 doses of bOPV to ensure sufficient \n  levels of protection in the intestinal mucosa as well as a decrease in the burden of vaccine-associated paralytic polio (VAPP)."
    }],
    "title" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule",
    "description" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nSequential  \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high \nvaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share \nsubstantial population movement have a similarly high coverage])",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Client is due for bOPV vaccination",
        "language" : "text/cql-identifier",
        "expression" : "Client is due for bOPV vaccination"
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
        "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE30', display: 'Oral polio vaccines' } }, display: 'Oral polio vaccines' }"
      }
    }]
  },
  {
    "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Polio.Sequential IPV–bOPV.",
    "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Polio.Sequential IPV–bOPV.",
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
