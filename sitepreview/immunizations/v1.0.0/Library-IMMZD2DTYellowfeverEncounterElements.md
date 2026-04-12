# IMMZD2DTYellowfeverEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTYellowfeverEncounterElements**

## Library: IMMZD2DTYellowfeverEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD2DTYellowfeverEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD2DTYellowfeverEncounterElements |

 
This library defines encounter-based elements for Yellow fever used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverEncounterElements */ library IMMZD2DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Encounter."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Encounter."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Encounter."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Id: **
  * ?: IMMZD2DTYellowfeverEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverEncounterElements */ library IMMZD2DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Encounter."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Encounter."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Encounter."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverEncounterElements */ library IMMZD2DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Encounter."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Encounter."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Encounter."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Url: **
  * ?: [IMMZD2DTYellowfeverEncounterElements](Library-IMMZD2DTYellowfeverEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverEncounterElements */ library IMMZD2DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Encounter."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Encounter."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Encounter."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverEncounterElements */ library IMMZD2DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Encounter."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Encounter."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Encounter."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverEncounterElements */ library IMMZD2DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Encounter."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Encounter."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Encounter."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTYellowfeverEncounterElements */ library IMMZD2DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Yellow fever containing Doses Administered to Patient */ define "Yellow fever Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Yellow fever vaccines" /* @internal: Yellow fever containing Doses Administered to Patient that are in the Primary series */ define "Yellow fever Primary Series Doses Administered to Patient": "Yellow fever Doses Administered to Patient".seriesPrimary() /* @internal: Number of Yellow fever Primary Series doses */ define "Number of Yellow fever Primary Series Doses Administered": Count("Yellow fever Primary Series Doses Administered to Patient") /* @input: No yellow fever primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 0 @code: No yellow fever primary series doses were administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "No yellow fever primary series doses were administered": "Number of Yellow fever Primary Series Doses Administered" = 0 /* @input: Client's age is less than 9 months @pseudocode: Today's date − "Date of birth" < 9 months @code: Client's age is less than 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is less than 9 months": Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 9 months @pseudocode: Today's date − "Date of birth" ≥ 9 months @code: Client's age is more than or equal to 9 months-41 @decision: IMMZ.D2.DT.Yellow fever */ define "Client's age is more than or equal to 9 months": Encounter."Current Patient Age In Months" >= 9 /* @input: Live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks @code: Live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "Live vaccine was administered in the past 4 weeks": Encounter."Live vaccine was administered in the last 4 weeks" /* @input: No live vaccine was administered in the past 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks @code: No live vaccine was administered in the past 4 weeks-92 @decision: IMMZ.D2.DT.Yellow fever */ define "No live vaccine was administered in the past 4 weeks": Encounter."No live vaccine was administered in the last 4 weeks" /* @input: One yellow fever primary series dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever vaccines" and "Type of dose" = "Primary series") = 1 @code: One yellow fever primary series dose was administered-121 @decision: IMMZ.D2.DT.Yellow fever */ define "One yellow fever primary series dose was administered": "Number of Yellow fever Primary Series Doses Administered" = 1 ````: **Description: **
  * ?: This library defines encounter-based elements for Yellow fever used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD2DTYellowfeverEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD2DTYellowfeverEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD2DTYellowfeverEncounterElements",
  "title" : "IMMZD2DTYellowfeverEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T14:18:30+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Yellow fever used throughout the Immunization CPG",
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
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library YellowfeverElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTYellowfeverElements"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDJEVFllbGxvd2ZldmVyRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpEMkRUWWVsbG93ZmV2ZXJFbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKaW5jbHVkZSBJTU1aRDJEVFllbGxvd2ZldmVyRWxlbWVudHMgY2FsbGVkIFllbGxvd2ZldmVyRWxlbWVudHMKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogWWVsbG93IGZldmVyIGNvbnRhaW5pbmcgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQKKi8KZGVmaW5lICJZZWxsb3cgZmV2ZXIgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiOgogIEVuY291bnRlci4iRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiIEkKICB3aGVyZQogICAgSS52YWNjaW5lQ29kZSBpbiBDb25jZXB0cy4iWWVsbG93IGZldmVyIHZhY2NpbmVzIgoKLyoKQGludGVybmFsOiBZZWxsb3cgZmV2ZXIgY29udGFpbmluZyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCB0aGF0IGFyZSBpbiB0aGUgUHJpbWFyeSBzZXJpZXMKKi8KZGVmaW5lICJZZWxsb3cgZmV2ZXIgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiOgogICJZZWxsb3cgZmV2ZXIgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiLnNlcmllc1ByaW1hcnkoKQoKLyoKQGludGVybmFsOiBOdW1iZXIgb2YgWWVsbG93IGZldmVyIFByaW1hcnkgU2VyaWVzIGRvc2VzCiovCmRlZmluZSAiTnVtYmVyIG9mIFllbGxvdyBmZXZlciBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQiOgogIENvdW50KCJZZWxsb3cgZmV2ZXIgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiKQoKLyoKQGlucHV0OiBObyB5ZWxsb3cgZmV2ZXIgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQKQHBzZXVkb2NvZGU6IENvdW50IG9mIHZhY2NpbmVzIGFkbWluaXN0ZXJlZCAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiWWVsbG93IGZldmVyIHZhY2NpbmVzIiBhbmQgIlR5cGUgb2YgZG9zZSIgPSAiUHJpbWFyeSBzZXJpZXMiKSA9IDAKQGNvZGU6IE5vIHllbGxvdyBmZXZlciBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZC0xMjEKQGRlY2lzaW9uOiBJTU1aLkQyLkRULlllbGxvdyBmZXZlcgoqLwpkZWZpbmUgIk5vIHllbGxvdyBmZXZlciBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZCI6CiAgIk51bWJlciBvZiBZZWxsb3cgZmV2ZXIgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIiA9IDAKCi8qCkBpbnB1dDogQ2xpZW50J3MgYWdlIGlzIGxlc3MgdGhhbiA5IG1vbnRocwpAcHNldWRvY29kZTogVG9kYXkncyBkYXRlIOKIkiAiRGF0ZSBvZiBiaXJ0aCIgPCA5IG1vbnRocwpAY29kZTogQ2xpZW50J3MgYWdlIGlzIGxlc3MgdGhhbiA5IG1vbnRocy00MQpAZGVjaXNpb246IElNTVouRDIuRFQuWWVsbG93IGZldmVyCiovCmRlZmluZSAiQ2xpZW50J3MgYWdlIGlzIGxlc3MgdGhhbiA5IG1vbnRocyI6CiAgRW5jb3VudGVyLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIE1vbnRocyIgPCA5CgovKgpAaW5wdXQ6IENsaWVudCdzIGFnZSBpcyBtb3JlIHRoYW4gb3IgZXF1YWwgdG8gOSBtb250aHMKQHBzZXVkb2NvZGU6IFRvZGF5J3MgZGF0ZSDiiJIgIkRhdGUgb2YgYmlydGgiIOKJpSA5IG1vbnRocwpAY29kZTogQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byA5IG1vbnRocy00MQpAZGVjaXNpb246IElNTVouRDIuRFQuWWVsbG93IGZldmVyCiovCmRlZmluZSAiQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byA5IG1vbnRocyI6CiAgRW5jb3VudGVyLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIE1vbnRocyIgPj0gOQoKLyoKQGlucHV0OiBMaXZlIHZhY2NpbmUgd2FzIGFkbWluaXN0ZXJlZCBpbiB0aGUgcGFzdCA0IHdlZWtzCkBwc2V1ZG9jb2RlOiBUb2RheSdzIGRhdGUg4oiSIGxhdGVzdCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgKHdoZXJlICJMaXZlIHZhY2NpbmUiID0gVFJVRSkgPCA0IHdlZWtzCkBjb2RlOiBMaXZlIHZhY2NpbmUgd2FzIGFkbWluaXN0ZXJlZCBpbiB0aGUgcGFzdCA0IHdlZWtzLTkyCkBkZWNpc2lvbjogSU1NWi5EMi5EVC5ZZWxsb3cgZmV2ZXIKKi8KZGVmaW5lICJMaXZlIHZhY2NpbmUgd2FzIGFkbWluaXN0ZXJlZCBpbiB0aGUgcGFzdCA0IHdlZWtzIjoKICBFbmNvdW50ZXIuIkxpdmUgdmFjY2luZSB3YXMgYWRtaW5pc3RlcmVkIGluIHRoZSBsYXN0IDQgd2Vla3MiCgovKgpAaW5wdXQ6IE5vIGxpdmUgdmFjY2luZSB3YXMgYWRtaW5pc3RlcmVkIGluIHRoZSBwYXN0IDQgd2Vla3MKQHBzZXVkb2NvZGU6IFRvZGF5J3MgZGF0ZSDiiJIgbGF0ZXN0ICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiAod2hlcmUgIkxpdmUgdmFjY2luZSIgPSBUUlVFKSDiiaUgNCB3ZWVrcwpAY29kZTogTm8gbGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIHBhc3QgNCB3ZWVrcy05MgpAZGVjaXNpb246IElNTVouRDIuRFQuWWVsbG93IGZldmVyCiovCmRlZmluZSAiTm8gbGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIHBhc3QgNCB3ZWVrcyI6CiAgRW5jb3VudGVyLiJObyBsaXZlIHZhY2NpbmUgd2FzIGFkbWluaXN0ZXJlZCBpbiB0aGUgbGFzdCA0IHdlZWtzIgoKLyoKQGlucHV0OiBPbmUgeWVsbG93IGZldmVyIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZApAcHNldWRvY29kZTogQ291bnQgb2YgdmFjY2luZXMgYWRtaW5pc3RlcmVkICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJZZWxsb3cgZmV2ZXIgdmFjY2luZXMiIGFuZCAiVHlwZSBvZiBkb3NlIiA9ICJQcmltYXJ5IHNlcmllcyIpID0gMQpAY29kZTogT25lIHllbGxvdyBmZXZlciBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQtMTIxCkBkZWNpc2lvbjogSU1NWi5EMi5EVC5ZZWxsb3cgZmV2ZXIKKi8KZGVmaW5lICJPbmUgeWVsbG93IGZldmVyIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCI6CiAgIk51bWJlciBvZiBZZWxsb3cgZmV2ZXIgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIiA9IDEK"
  }]
}

```
