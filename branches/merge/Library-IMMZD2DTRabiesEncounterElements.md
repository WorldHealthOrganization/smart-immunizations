# IMMZD2DTRabiesEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTRabiesEncounterElements**

## Library: IMMZD2DTRabiesEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD2DTRabiesEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD2DTRabiesEncounterElements |

 
This library defines encounter-based elements for Rabies used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesEncounterElements */ library IMMZD2DTRabiesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTRabiesElements called RabiesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Today < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Id: **
  * ?: IMMZD2DTRabiesEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesEncounterElements */ library IMMZD2DTRabiesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTRabiesElements called RabiesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Today < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesEncounterElements */ library IMMZD2DTRabiesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTRabiesElements called RabiesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Today < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Url: **
  * ?: [IMMZD2DTRabiesEncounterElements](Library-IMMZD2DTRabiesEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesEncounterElements */ library IMMZD2DTRabiesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTRabiesElements called RabiesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Today < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesEncounterElements */ library IMMZD2DTRabiesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTRabiesElements called RabiesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Today < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesEncounterElements */ library IMMZD2DTRabiesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTRabiesElements called RabiesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Today < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesEncounterElements */ library IMMZD2DTRabiesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD2DTRabiesElements called RabiesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Encounter."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Today < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Description: **
  * ?: This library defines encounter-based elements for Rabies used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD2DTRabiesEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD2DTRabiesEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD2DTRabiesEncounterElements",
  "title" : "IMMZD2DTRabiesEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:54:17+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Rabies used throughout the Immunization CPG",
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
    "display" : "Library RabiesElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTRabiesElements"
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
    "name" : "Rabies Doses Administered to Patient",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Immunization"
  },
  {
    "name" : "Rabies Primary Series Doses Administered to Patient",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Immunization"
  },
  {
    "name" : "Number of Rabies Primary Series Doses Administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "integer"
  },
  {
    "name" : "No rabies primary series doses were administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "One rabies primary series doses were administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Date of Latest Rabies Dose",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "The latest rabies dose was administered less than 7 days ago",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The latest rabies dose was administered more than 7 days ago",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Two rabies primary series doses were administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDJEVFJhYmllc0VuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDJEVFJhYmllc0VuY291bnRlckVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgppbmNsdWRlIElNTVpEMkRUUmFiaWVzRWxlbWVudHMgY2FsbGVkIFJhYmllc0VsZW1lbnRzCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKcGFyYW1ldGVyIEVuY291bnRlcklkIFN0cmluZwoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IFJhYmllcyBjb250YWluaW5nIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50CiovCmRlZmluZSAiUmFiaWVzIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IjoKICBFbmNvdW50ZXIuIkRvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IiBJCiAgd2hlcmUKICAgIEkudmFjY2luZUNvZGUgaW4gQ29uY2VwdHMuIlJhYmllcyB2YWNjaW5lcyIKCi8qCkBpbnRlcm5hbDogUmFiaWVzIGNvbnRhaW5pbmcgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQgdGhhdCBhcmUgaW4gdGhlIFByaW1hcnkgc2VyaWVzCiovCmRlZmluZSAiUmFiaWVzIFByaW1hcnkgU2VyaWVzIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IjoKICAiUmFiaWVzIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50Ii5zZXJpZXNQcmltYXJ5KCkKCi8qCkBpbnRlcm5hbDogTnVtYmVyIG9mIFJhYmllcyBQcmltYXJ5IFNlcmllcyBkb3NlcwoqLwpkZWZpbmUgIk51bWJlciBvZiBSYWJpZXMgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIjoKICBDb3VudCgiUmFiaWVzIFByaW1hcnkgU2VyaWVzIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IikKCi8qCkBpbnB1dDogTm8gcmFiaWVzIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkCkBwc2V1ZG9jb2RlOiBDb3VudCBvZiB2YWNjaW5lcyBhZG1pbmlzdGVyZWQgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIlJhYmllcyB2YWNjaW5lcyIgYW5kICJUeXBlIG9mIGRvc2UiID0gIlByaW1hcnkgc2VyaWVzIikgPSAwCkBjb2RlOiBObyByYWJpZXMgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQtMTE1CkBkZWNpc2lvbjogSU1NWi5EMi5EVC5SYWJpZXM6IFByZS1leHBvc3VyZSBwcm9waHlsYXhpcyAoUHJFUCksIDItZG9zZSBzY2hlbWU7IGhpZ2ggcmlzayBvZiByYWJpZXMgdmlydXMgZXhwb3N1cmUKKi8KZGVmaW5lICJObyByYWJpZXMgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQiOgogICJOdW1iZXIgb2YgUmFiaWVzIFByaW1hcnkgU2VyaWVzIERvc2VzIEFkbWluaXN0ZXJlZCIgPSAwCgovKgpAaW5wdXQ6IE9uZSByYWJpZXMgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQKQHBzZXVkb2NvZGU6IENvdW50IG9mIHZhY2NpbmVzIGFkbWluaXN0ZXJlZCAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiUmFiaWVzIHZhY2NpbmVzIiBhbmQgIlR5cGUgb2YgZG9zZSIgPSAiUHJpbWFyeSBzZXJpZXMiKSA9IDEKQGNvZGU6IE9uZSByYWJpZXMgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQtMTE1CkBkZWNpc2lvbjogSU1NWi5EMi5EVC5SYWJpZXM6IFByZS1leHBvc3VyZSBwcm9waHlsYXhpcyAoUHJFUCksIDItZG9zZSBzY2hlbWU7IGhpZ2ggcmlzayBvZiByYWJpZXMgdmlydXMgZXhwb3N1cmUKKi8KZGVmaW5lICJPbmUgcmFiaWVzIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkIjoKICAiTnVtYmVyIG9mIFJhYmllcyBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQiID0gMQoKLyoKQGlucHV0OiBUaGUgbGF0ZXN0IHJhYmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQgbGVzcyB0aGFuIDcgZGF5cyBhZ28KQHBzZXVkb2NvZGU6ICcnVG9kYXkncyBkYXRlIC0gTGF0ZXN0ICJEYXRlIG9mIHZhY2NpbmF0aW9uIiAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiUmFiaWVzIHZhY2NpbmVzIikgPCA3IGRheXMKQGNvZGU6IFRoZSBsYXRlc3QgcmFiaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCBsZXNzIHRoYW4gNyBkYXlzIGFnby05NwpAZGVjaXNpb246IElNTVouRDIuRFQuUmFiaWVzOiBQcmUtZXhwb3N1cmUgcHJvcGh5bGF4aXMgKFByRVApLCAyLWRvc2Ugc2NoZW1lOyBoaWdoIHJpc2sgb2YgcmFiaWVzIHZpcnVzIGV4cG9zdXJlCiovCmRlZmluZSAiVGhlIGxhdGVzdCByYWJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIGxlc3MgdGhhbiA3IGRheXMgYWdvIjoKICAiRGF0ZSBvZiBMYXRlc3QgUmFiaWVzIERvc2UiIGlzIG5vdCBudWxsCiAgYW5kIGR1cmF0aW9uIGluIGRheXMgYmV0d2VlbiAiRGF0ZSBvZiBMYXRlc3QgUmFiaWVzIERvc2UiIGFuZCBUb2RheSA8IDcKCi8qCkBpbnB1dDogVGhlIGxhdGVzdCByYWJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIG1vcmUgdGhhbiA3IGRheXMgYWdvCkBwc2V1ZG9jb2RlOiAnJ1RvZGF5J3MgZGF0ZSAtIExhdGVzdCAiRGF0ZSBvZiB2YWNjaW5hdGlvbiIgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIlJhYmllcyB2YWNjaW5lcyIpIOKJpSA3IGRheXMKQGNvZGU6IFRoZSBsYXRlc3QgcmFiaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCBtb3JlIHRoYW4gNyBkYXlzIGFnby05NwpAZGVjaXNpb246IElNTVouRDIuRFQuUmFiaWVzOiBQcmUtZXhwb3N1cmUgcHJvcGh5bGF4aXMgKFByRVApLCAyLWRvc2Ugc2NoZW1lOyBoaWdoIHJpc2sgb2YgcmFiaWVzIHZpcnVzIGV4cG9zdXJlCiovCmRlZmluZSAiVGhlIGxhdGVzdCByYWJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIG1vcmUgdGhhbiA3IGRheXMgYWdvIjoKICBub3QgIlRoZSBsYXRlc3QgcmFiaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCBsZXNzIHRoYW4gNyBkYXlzIGFnbyIKCi8qCkBpbnB1dDogVHdvIHJhYmllcyBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZApAcHNldWRvY29kZTogQ291bnQgb2YgdmFjY2luZXMgYWRtaW5pc3RlcmVkICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJSYWJpZXMgdmFjY2luZXMiIGFuZCAiVHlwZSBvZiBkb3NlIiA9ICJQcmltYXJ5IHNlcmllcyIpID0gMgpAY29kZTogVHdvIHJhYmllcyBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZC0xMTUKQGRlY2lzaW9uOiBJTU1aLkQyLkRULlJhYmllczogUHJlLWV4cG9zdXJlIHByb3BoeWxheGlzIChQckVQKSwgMi1kb3NlIHNjaGVtZTsgaGlnaCByaXNrIG9mIHJhYmllcyB2aXJ1cyBleHBvc3VyZQoqLwpkZWZpbmUgIlR3byByYWJpZXMgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQiOgogICJOdW1iZXIgb2YgUmFiaWVzIFByaW1hcnkgU2VyaWVzIERvc2VzIEFkbWluaXN0ZXJlZCIgPSAyCgovKgpAaW50ZXJuYWw6IERhdGUgb2YgTGF0ZXN0IFJhYmllcyBEb3NlCiovCmRlZmluZSAiRGF0ZSBvZiBMYXRlc3QgUmFiaWVzIERvc2UiOgogIGRhdGUgZnJvbSBzdGFydCBvZiAiUmFiaWVzIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50Ii5tb3N0UmVjZW50KCkub2NjdXJyZW5jZS50b0ludGVydmFsKCkK"
  }]
}

```
