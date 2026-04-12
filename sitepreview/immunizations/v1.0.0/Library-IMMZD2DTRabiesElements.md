# IMMZD2DTRabiesElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTRabiesElements**

## Library: IMMZD2DTRabiesElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD2DTRabiesElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD2DTRabiesElements |

 
This library defines context-independent elements for Rabies used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesElements */ library IMMZD2DTRabiesElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Now() < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Id: **
  * ?: IMMZD2DTRabiesElements
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesElements */ library IMMZD2DTRabiesElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Now() < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesElements */ library IMMZD2DTRabiesElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Now() < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Url: **
  * ?: [IMMZD2DTRabiesElements](Library-IMMZD2DTRabiesElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesElements */ library IMMZD2DTRabiesElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Now() < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesElements */ library IMMZD2DTRabiesElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Now() < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesElements */ library IMMZD2DTRabiesElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Now() < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD2DTRabiesElements */ library IMMZD2DTRabiesElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Rabies containing Doses Administered to Patient */ define "Rabies Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Rabies vaccines" /* @internal: Rabies containing Doses Administered to Patient that are in the Primary series */ define "Rabies Primary Series Doses Administered to Patient": "Rabies Doses Administered to Patient".seriesPrimary() /* @internal: Number of Rabies Primary Series doses */ define "Number of Rabies Primary Series Doses Administered": Count("Rabies Primary Series Doses Administered to Patient") /* @input: No rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 0 @code: No rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "No rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 0 /* @input: One rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @code: One rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "One rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 1 /* @input: The latest rabies dose was administered less than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") < 7 days @code: The latest rabies dose was administered less than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered less than 7 days ago": "Date of Latest Rabies Dose" is not null and duration in days between "Date of Latest Rabies Dose" and Now() < 7 /* @input: The latest rabies dose was administered more than 7 days ago @pseudocode: ''Today's date - Latest "Date of vaccination" (where "Vaccine type" = "Rabies vaccines") ≥ 7 days @code: The latest rabies dose was administered more than 7 days ago-97 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "The latest rabies dose was administered more than 7 days ago": not "The latest rabies dose was administered less than 7 days ago" /* @input: Two rabies primary series doses were administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 2 @code: Two rabies primary series doses were administered-115 @decision: IMMZ.D2.DT.Rabies: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure */ define "Two rabies primary series doses were administered": "Number of Rabies Primary Series Doses Administered" = 2 /* @internal: Date of Latest Rabies Dose */ define "Date of Latest Rabies Dose": date from start of "Rabies Doses Administered to Patient".mostRecent().occurrence.toInterval() ````: **Description: **
  * ?: This library defines context-independent elements for Rabies used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD2DTRabiesElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD2DTRabiesElements",
  "version" : "1.0.0",
  "name" : "IMMZD2DTRabiesElements",
  "title" : "IMMZD2DTRabiesElements",
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
  "description" : "This library defines context-independent elements for Rabies used throughout the Immunization CPG",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDJEVFJhYmllc0VsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDJEVFJhYmllc0VsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogUmFiaWVzIGNvbnRhaW5pbmcgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQKKi8KZGVmaW5lICJSYWJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiOgogIEVsZW1lbnRzLiJEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIgSQogIHdoZXJlCiAgICBJLnZhY2NpbmVDb2RlIGluIENvbmNlcHRzLiJSYWJpZXMgdmFjY2luZXMiCgovKgpAaW50ZXJuYWw6IFJhYmllcyBjb250YWluaW5nIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IHRoYXQgYXJlIGluIHRoZSBQcmltYXJ5IHNlcmllcwoqLwpkZWZpbmUgIlJhYmllcyBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCI6CiAgIlJhYmllcyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIuc2VyaWVzUHJpbWFyeSgpCgovKgpAaW50ZXJuYWw6IE51bWJlciBvZiBSYWJpZXMgUHJpbWFyeSBTZXJpZXMgZG9zZXMKKi8KZGVmaW5lICJOdW1iZXIgb2YgUmFiaWVzIFByaW1hcnkgU2VyaWVzIERvc2VzIEFkbWluaXN0ZXJlZCI6CiAgQ291bnQoIlJhYmllcyBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIpCgovKgpAaW5wdXQ6IE5vIHJhYmllcyBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZApAcHNldWRvY29kZTogQ291bnQgb2YgdmFjY2luZXMgYWRtaW5pc3RlcmVkICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJSYWJpZXMgdmFjY2luZXMiIGFuZCAiVHlwZSBvZiBkb3NlIiA9ICJQcmltYXJ5IHNlcmllcyIpID0gMApAY29kZTogTm8gcmFiaWVzIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkLTExNQpAZGVjaXNpb246IElNTVouRDIuRFQuUmFiaWVzOiBQcmUtZXhwb3N1cmUgcHJvcGh5bGF4aXMgKFByRVApLCAyLWRvc2Ugc2NoZW1lOyBoaWdoIHJpc2sgb2YgcmFiaWVzIHZpcnVzIGV4cG9zdXJlCiovCmRlZmluZSAiTm8gcmFiaWVzIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkIjoKICAiTnVtYmVyIG9mIFJhYmllcyBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQiID0gMAoKLyoKQGlucHV0OiBPbmUgcmFiaWVzIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkCkBwc2V1ZG9jb2RlOiBDb3VudCBvZiB2YWNjaW5lcyBhZG1pbmlzdGVyZWQgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIlJhYmllcyB2YWNjaW5lcyIgYW5kICJUeXBlIG9mIGRvc2UiID0gIlByaW1hcnkgc2VyaWVzIikgPSAxCkBjb2RlOiBPbmUgcmFiaWVzIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkLTExNQpAZGVjaXNpb246IElNTVouRDIuRFQuUmFiaWVzOiBQcmUtZXhwb3N1cmUgcHJvcGh5bGF4aXMgKFByRVApLCAyLWRvc2Ugc2NoZW1lOyBoaWdoIHJpc2sgb2YgcmFiaWVzIHZpcnVzIGV4cG9zdXJlCiovCmRlZmluZSAiT25lIHJhYmllcyBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZCI6CiAgIk51bWJlciBvZiBSYWJpZXMgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIiA9IDEKCi8qCkBpbnB1dDogVGhlIGxhdGVzdCByYWJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIGxlc3MgdGhhbiA3IGRheXMgYWdvCkBwc2V1ZG9jb2RlOiAnJ1RvZGF5J3MgZGF0ZSAtIExhdGVzdCAiRGF0ZSBvZiB2YWNjaW5hdGlvbiIgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIlJhYmllcyB2YWNjaW5lcyIpIDwgNyBkYXlzCkBjb2RlOiBUaGUgbGF0ZXN0IHJhYmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQgbGVzcyB0aGFuIDcgZGF5cyBhZ28tOTcKQGRlY2lzaW9uOiBJTU1aLkQyLkRULlJhYmllczogUHJlLWV4cG9zdXJlIHByb3BoeWxheGlzIChQckVQKSwgMi1kb3NlIHNjaGVtZTsgaGlnaCByaXNrIG9mIHJhYmllcyB2aXJ1cyBleHBvc3VyZQoqLwpkZWZpbmUgIlRoZSBsYXRlc3QgcmFiaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCBsZXNzIHRoYW4gNyBkYXlzIGFnbyI6CiAgIkRhdGUgb2YgTGF0ZXN0IFJhYmllcyBEb3NlIiBpcyBub3QgbnVsbAogIGFuZCBkdXJhdGlvbiBpbiBkYXlzIGJldHdlZW4gIkRhdGUgb2YgTGF0ZXN0IFJhYmllcyBEb3NlIiBhbmQgTm93KCkgPCA3CgovKgpAaW5wdXQ6IFRoZSBsYXRlc3QgcmFiaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCBtb3JlIHRoYW4gNyBkYXlzIGFnbwpAcHNldWRvY29kZTogJydUb2RheSdzIGRhdGUgLSBMYXRlc3QgIkRhdGUgb2YgdmFjY2luYXRpb24iICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJSYWJpZXMgdmFjY2luZXMiKSDiiaUgNyBkYXlzCkBjb2RlOiBUaGUgbGF0ZXN0IHJhYmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQgbW9yZSB0aGFuIDcgZGF5cyBhZ28tOTcKQGRlY2lzaW9uOiBJTU1aLkQyLkRULlJhYmllczogUHJlLWV4cG9zdXJlIHByb3BoeWxheGlzIChQckVQKSwgMi1kb3NlIHNjaGVtZTsgaGlnaCByaXNrIG9mIHJhYmllcyB2aXJ1cyBleHBvc3VyZQoqLwpkZWZpbmUgIlRoZSBsYXRlc3QgcmFiaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCBtb3JlIHRoYW4gNyBkYXlzIGFnbyI6CiAgbm90ICJUaGUgbGF0ZXN0IHJhYmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQgbGVzcyB0aGFuIDcgZGF5cyBhZ28iCgovKgpAaW5wdXQ6IFR3byByYWJpZXMgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQKQHBzZXVkb2NvZGU6IENvdW50IG9mIHZhY2NpbmVzIGFkbWluaXN0ZXJlZCAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiUmFiaWVzIHZhY2NpbmVzIiBhbmQgIlR5cGUgb2YgZG9zZSIgPSAiUHJpbWFyeSBzZXJpZXMiKSA9IDIKQGNvZGU6IFR3byByYWJpZXMgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQtMTE1CkBkZWNpc2lvbjogSU1NWi5EMi5EVC5SYWJpZXM6IFByZS1leHBvc3VyZSBwcm9waHlsYXhpcyAoUHJFUCksIDItZG9zZSBzY2hlbWU7IGhpZ2ggcmlzayBvZiByYWJpZXMgdmlydXMgZXhwb3N1cmUKKi8KZGVmaW5lICJUd28gcmFiaWVzIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkIjoKICAiTnVtYmVyIG9mIFJhYmllcyBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQiID0gMgoKLyoKQGludGVybmFsOiBEYXRlIG9mIExhdGVzdCBSYWJpZXMgRG9zZQoqLwpkZWZpbmUgIkRhdGUgb2YgTGF0ZXN0IFJhYmllcyBEb3NlIjoKICBkYXRlIGZyb20gc3RhcnQgb2YgIlJhYmllcyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIubW9zdFJlY2VudCgpLm9jY3VycmVuY2UudG9JbnRlcnZhbCgpCg=="
  }]
}

```
