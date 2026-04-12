# IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table**

## ValueSet: IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTPneumococcal2DosesWithBoosterDoseVS | *Version*:1.0.0 |
| Active as of 2026-04-09 | *Computable Name*:IMMZD2DTPneumococcal2DosesWithBoosterDoseVS |

 
ValueSet IMMZD2DTPneumococcal2DosesWithBoosterDose for IMMZ.D2.DT.Pneumococcal.2 doses with booster dose. Business rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: 2 primary doses with a booster dose (2p+1) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |

## API Information

##### IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table Schema API

JSON Schema for IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZD2DTPneumococcal2DosesWithBoosterDoseVS.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZD2DTPneumococcal2DosesWithBoosterDoseVS

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZD2DTPneumococcal2DosesWithBoosterDoseVS.

## Schema Definition

### ValueSet-IMMZD2DTPneumococcal2DosesWithBoosterDoseVS

**Description:** JSON Schema for IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZD2DTPneumococcal2DosesWithBoosterDoseVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTPneumococcal2DosesWithBoosterDoseVS",
  "version" : "1.0.0",
  "name" : "IMMZD2DTPneumococcal2DosesWithBoosterDoseVS",
  "title" : "IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table",
  "status" : "active",
  "date" : "2026-04-09T13:50:16+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet IMMZD2DTPneumococcal2DosesWithBoosterDose for IMMZ.D2.DT.Pneumococcal.2 doses with booster dose.\nBusiness rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2 primary doses with a booster dose (2p+1)",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
      "concept" : [{
        "code" : "The client's age is less than 6 weeks-40",
        "display" : "The client's age is less than 6 weeks"
      },
      {
        "code" : "Client is not due for pneumococcal vaccination-48",
        "display" : "Client is not due for pneumococcal vaccination"
      },
      {
        "code" : "No pneumococcal primary series doses were administered-121",
        "display" : "No pneumococcal primary series doses were administered"
      },
      {
        "code" : "The client's age is between 6 weeks and 5 years-50",
        "display" : "The client's age is between 6 weeks and 5 years"
      },
      {
        "code" : "Client is due for pneumococcal vaccination-44",
        "display" : "Client is due for pneumococcal vaccination"
      },
      {
        "code" : "One pneumococcal primary series dose was administered-121",
        "display" : "One pneumococcal primary series dose was administered"
      },
      {
        "code" : "The client's age is less than or equal to 5 years-41",
        "display" : "The client's age is less than or equal to 5 years"
      },
      {
        "code" : "The first pneumococcal dose was administered within 24 months post birth-109",
        "display" : "The first pneumococcal dose was administered within 24 months post birth"
      },
      {
        "code" : "The latest pneumococcal dose was administered less than 8 weeks ago-104",
        "display" : "The latest pneumococcal dose was administered less than 8 weeks ago"
      },
      {
        "code" : "The latest pneumococcal dose was administered more than 8 weeks ago-104",
        "display" : "The latest pneumococcal dose was administered more than 8 weeks ago"
      },
      {
        "code" : "The first pneumococcal dose was administered after 24 months post birth-109",
        "display" : "The first pneumococcal dose was administered after 24 months post birth"
      },
      {
        "code" : "Client is at high risk for pneumococcal infection-48",
        "display" : "Client is at high risk for pneumococcal infection"
      },
      {
        "code" : "Client is not at high risk for pneumococcal infection-49",
        "display" : "Client is not at high risk for pneumococcal infection"
      },
      {
        "code" : "Pneumococcal immunization schedule is complete-148",
        "display" : "Pneumococcal immunization schedule is complete"
      },
      {
        "code" : "Two pneumococcal primary series doses were administered-121",
        "display" : "Two pneumococcal primary series doses were administered"
      },
      {
        "code" : "No pneumococcal booster dose was administered-119",
        "display" : "No pneumococcal booster dose was administered"
      },
      {
        "code" : "The client's age is less than or equal to 5 years-40",
        "display" : "The client's age is less than or equal to 5 years"
      },
      {
        "code" : "The first pneumococcal dose was administered within 12 months post birth-131",
        "display" : "The first pneumococcal dose was administered within 12 months post birth"
      },
      {
        "code" : "Client is due for pneumococcal booster dose-44",
        "display" : "Client is due for pneumococcal booster dose"
      },
      {
        "code" : "The first pneumococcal dose was administered after 12 months post birth-131",
        "display" : "The first pneumococcal dose was administered after 12 months post birth"
      },
      {
        "code" : "One pneumococcal booster dose was administered-119",
        "display" : "One pneumococcal booster dose was administered"
      },
      {
        "code" : "The client's age is less than 12 months-42",
        "display" : "The client's age is less than 12 months"
      },
      {
        "code" : "Client's HIV status is positive-29",
        "display" : "Client's HIV status is positive"
      },
      {
        "code" : "Client is not due for pneumococcal booster dose-48",
        "display" : "Client is not due for pneumococcal booster dose"
      },
      {
        "code" : "Client had preterm birth-22",
        "display" : "Client had preterm birth"
      },
      {
        "code" : "The client's age is more than or equal to 12 months and less than 24 months-54",
        "display" : "The client's age is more than or equal to 12 months and less than 24 months"
      },
      {
        "code" : "The latest pneumococcal dose was administered within 12 months post birth-116",
        "display" : "The latest pneumococcal dose was administered within 12 months post birth"
      },
      {
        "code" : "The latest pneumococcal dose was administered after 12 months post birth-116",
        "display" : "The latest pneumococcal dose was administered after 12 months post birth"
      },
      {
        "code" : "Pneumococcal immunization schedule is complete-49",
        "display" : "Pneumococcal immunization schedule is complete"
      },
      {
        "code" : "Client's HIV status is negative or unknown-29",
        "display" : "Client's HIV status is negative or unknown"
      },
      {
        "code" : "Client did not have preterm birth-22",
        "display" : "Client did not have preterm birth"
      },
      {
        "code" : "The client's age is more than or equal to 24 months-42",
        "display" : "The client's age is more than or equal to 24 months"
      },
      {
        "code" : "Two pneumococcal booster doses were administered-119",
        "display" : "Two pneumococcal booster doses were administered"
      },
      {
        "code" : "The client's age is more than 5 years-40",
        "display" : "The client's age is more than 5 years"
      },
      {
        "code" : "Clinical judgement is required. Create a clinical note-66",
        "display" : "Clinical judgement is required. Create a clinical note"
      }]
    }]
  }
}

```
