# IMMZD2DTYellowfeverElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTYellowfeverElements**

## Library: IMMZD2DTYellowfeverElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD2DTYellowfeverElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD2DTYellowfeverElements |

 
This library defines context-independent elements for Yellow fever used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverElements */ library IMMZD2DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Elements."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Elements."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Elements."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Id: **
  * ?: IMMZD2DTYellowfeverElements
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverElements */ library IMMZD2DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Elements."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Elements."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Elements."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverElements */ library IMMZD2DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Elements."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Elements."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Elements."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Url: **
  * ?: [IMMZD2DTYellowfeverElements](Library-IMMZD2DTYellowfeverElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverElements */ library IMMZD2DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Elements."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Elements."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Elements."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverElements */ library IMMZD2DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Elements."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Elements."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Elements."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverElements */ library IMMZD2DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Elements."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Elements."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Elements."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverElements */ library IMMZD2DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Elements."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Elements."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Elements."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Description: **
  * ?: This library defines context-independent elements for Yellow fever used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD2DTYellowfeverElements",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablelibrary",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablelibrary",
    "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library",
    "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://smart.who.int/immunizations/Library/IMMZD2DTYellowfeverElements",
  "version" : "0.2.0",
  "name" : "IMMZD2DTYellowfeverElements",
  "title" : "IMMZD2DTYellowfeverElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines context-independent elements for Yellow fever used throughout the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library WHOConcepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library WC",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library WE",
    "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library Common",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library Concepts",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library Elements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
  }],
  "parameter" : [{
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Yellow fever Doses Administered to Patient",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Immunization"
  },
  {
    "name" : "Yellow fever Primary Series Doses Administered to Patient",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Immunization"
  },
  {
    "name" : "Number of Yellow fever Primary Series Doses Administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "integer"
  },
  {
    "name" : "No yellow fever primary series doses were administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's age is less than 9 months",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's age is more than or equal to 9 months",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Live vaccine was administered in the past 4 weeks",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "No live vaccine was administered in the past 4 weeks",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "One yellow fever primary series dose was administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDJEVFllbGxvd2ZldmVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpEMkRUWWVsbG93ZmV2ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IFllbGxvdyBmZXZlciBjb250YWluaW5nIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50CiovCmRlZmluZSAiWWVsbG93IGZldmVyIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IjoKICBFbGVtZW50cy4iRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiIEkKICB3aGVyZQogICAgSS52YWNjaW5lQ29kZSBpbiBDb25jZXB0cy4iWWVsbG93IGZldmVyIHZhY2NpbmVzIgoKLyoKQGludGVybmFsOiBZZWxsb3cgZmV2ZXIgY29udGFpbmluZyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCB0aGF0IGFyZSBpbiB0aGUgUHJpbWFyeSBzZXJpZXMKKi8KZGVmaW5lICJZZWxsb3cgZmV2ZXIgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiOgogICJZZWxsb3cgZmV2ZXIgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiLnNlcmllc1ByaW1hcnkoKQoKLyoKQGludGVybmFsOiBOdW1iZXIgb2YgWWVsbG93IGZldmVyIFByaW1hcnkgU2VyaWVzIGRvc2VzCiovCmRlZmluZSAiTnVtYmVyIG9mIFllbGxvdyBmZXZlciBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQiOgogIENvdW50KCJZZWxsb3cgZmV2ZXIgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiKQoKLyoKQGlucHV0OiBObyB5ZWxsb3cgZmV2ZXIgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQKQHBzZXVkb2NvZGU6IENvdW50IG9mIHZhY2NpbmVzIGFkbWluaXN0ZXJlZCAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiWWVsbG93IGZldmVyIHZhY2NpbmVzIiBhbmQgIlR5cGUgb2YgZG9zZSIgPSAiUHJpbWFyeSBzZXJpZXMiKSA9IDAKQGNvZGU6IE5vIHllbGxvdyBmZXZlciBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZC0xMjEKQGRlY2lzaW9uOiBJTU1aLkQyLkRULlllbGxvdyBmZXZlcgoqLwpkZWZpbmUgIk5vIHllbGxvdyBmZXZlciBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZCI6CiAgIk51bWJlciBvZiBZZWxsb3cgZmV2ZXIgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIiA9IDAKCi8qCkBpbnB1dDogQ2xpZW50J3MgYWdlIGlzIGxlc3MgdGhhbiA5IG1vbnRocwpAcHNldWRvY29kZTogVG9kYXkncyBkYXRlIOKIkiAiRGF0ZSBvZiBiaXJ0aCIgPCA5IG1vbnRocwpAY29kZTogQ2xpZW50J3MgYWdlIGlzIGxlc3MgdGhhbiA5IG1vbnRocy00MQpAZGVjaXNpb246IElNTVouRDIuRFQuWWVsbG93IGZldmVyCiovCmRlZmluZSAiQ2xpZW50J3MgYWdlIGlzIGxlc3MgdGhhbiA5IG1vbnRocyI6CiAgRWxlbWVudHMuIkN1cnJlbnQgUGF0aWVudCBBZ2UgSW4gTW9udGhzIiA8IDkKCi8qCkBpbnB1dDogQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byA5IG1vbnRocwpAcHNldWRvY29kZTogVG9kYXkncyBkYXRlIOKIkiAiRGF0ZSBvZiBiaXJ0aCIg4omlIDkgbW9udGhzCkBjb2RlOiBDbGllbnQncyBhZ2UgaXMgbW9yZSB0aGFuIG9yIGVxdWFsIHRvIDkgbW9udGhzLTQxCkBkZWNpc2lvbjogSU1NWi5EMi5EVC5ZZWxsb3cgZmV2ZXIKKi8KZGVmaW5lICJDbGllbnQncyBhZ2UgaXMgbW9yZSB0aGFuIG9yIGVxdWFsIHRvIDkgbW9udGhzIjoKICBFbGVtZW50cy4iQ3VycmVudCBQYXRpZW50IEFnZSBJbiBNb250aHMiID49IDkKCi8qCkBpbnB1dDogTGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIHBhc3QgNCB3ZWVrcwpAcHNldWRvY29kZTogVG9kYXkncyBkYXRlIOKIkiBsYXRlc3QgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iICh3aGVyZSAiTGl2ZSB2YWNjaW5lIiA9IFRSVUUpIDwgNCB3ZWVrcwpAY29kZTogTGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIHBhc3QgNCB3ZWVrcy05MgpAZGVjaXNpb246IElNTVouRDIuRFQuWWVsbG93IGZldmVyCiovCmRlZmluZSAiTGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIHBhc3QgNCB3ZWVrcyI6CiAgRWxlbWVudHMuIkxpdmUgdmFjY2luZSB3YXMgYWRtaW5pc3RlcmVkIGluIHRoZSBsYXN0IDQgd2Vla3MiCgovKgpAaW5wdXQ6IE5vIGxpdmUgdmFjY2luZSB3YXMgYWRtaW5pc3RlcmVkIGluIHRoZSBwYXN0IDQgd2Vla3MKQHBzZXVkb2NvZGU6IFRvZGF5J3MgZGF0ZSDiiJIgbGF0ZXN0ICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiAod2hlcmUgIkxpdmUgdmFjY2luZSIgPSBUUlVFKSDiiaUgNCB3ZWVrcwpAY29kZTogTm8gbGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIHBhc3QgNCB3ZWVrcy05MgpAZGVjaXNpb246IElNTVouRDIuRFQuWWVsbG93IGZldmVyCiovCmRlZmluZSAiTm8gbGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIHBhc3QgNCB3ZWVrcyI6CiAgRWxlbWVudHMuIk5vIGxpdmUgdmFjY2luZSB3YXMgYWRtaW5pc3RlcmVkIGluIHRoZSBsYXN0IDQgd2Vla3MiCgovKgpAaW5wdXQ6IE9uZSB5ZWxsb3cgZmV2ZXIgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkCkBwc2V1ZG9jb2RlOiBDb3VudCBvZiB2YWNjaW5lcyBhZG1pbmlzdGVyZWQgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIlllbGxvdyBmZXZlciB2YWNjaW5lcyIgYW5kICJUeXBlIG9mIGRvc2UiID0gIlByaW1hcnkgc2VyaWVzIikgPSAxCkBjb2RlOiBPbmUgeWVsbG93IGZldmVyIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZC0xMjEKQGRlY2lzaW9uOiBJTU1aLkQyLkRULlllbGxvdyBmZXZlcgoqLwpkZWZpbmUgIk9uZSB5ZWxsb3cgZmV2ZXIgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIjoKICAiTnVtYmVyIG9mIFllbGxvdyBmZXZlciBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQiID0gMQo="
  }]
}

```
