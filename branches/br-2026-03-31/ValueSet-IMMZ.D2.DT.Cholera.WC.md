# IMMZ.D2.DT.Cholera.WC ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Cholera.WC ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.Cholera.WC ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Cholera.WC | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Cholera_WC_vaccines |

 
ValueSet IMMZ.D2.DT.Cholera.WC for IMMZ.D2.DT.Cholera.WC vaccines. Business rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any
 Table: Whole-cell (WC) vaccines schedule 

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

##### IMMZ.D2.DT.Cholera.WC ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.Cholera.WC ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.Cholera.WC.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Cholera.WC

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Cholera.WC.

## Schema Definition

### ValueSet-IMMZ.D2.DT.Cholera.WC

**Description:** JSON Schema for IMMZ.D2.DT.Cholera.WC ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.Cholera.WC",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Cholera.WC",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Cholera_WC_vaccines",
  "title" : "IMMZ.D2.DT.Cholera.WC ValueSet for Decision Table",
  "status" : "active",
  "date" : "2026-03-31T13:43:43+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet IMMZ.D2.DT.Cholera.WC for IMMZ.D2.DT.Cholera.WC vaccines.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any  \nTable: Whole-cell (WC) vaccines schedule",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "csailt1y-32.39",
        "display" : "Client's age is less than 1 year"
      },
      {
        "code" : "csaimtoet1y-44.39",
        "display" : "Client's age is more than or equal to 1 year"
      },
      {
        "code" : "ncpsdwa-47.116",
        "display" : "No cholera primary series dose was administered"
      },
      {
        "code" : "ocpsdwa-48.116",
        "display" : "One cholera primary series dose was administered"
      },
      {
        "code" : "tlcdwalt14da-62.106",
        "display" : "The latest cholera dose was administered less than 14 days ago"
      },
      {
        "code" : "tlcdwamt14da-62.106",
        "display" : "The latest cholera dose was administered more than 14 days ago"
      },
      {
        "code" : "tcpsdwa-50.116",
        "display" : "Two cholera primary series doses were administered"
      },
      {
        "code" : "ncbsdwa-47.114",
        "display" : "No cholera booster series dose was administered"
      },
      {
        "code" : "tlcdwalt3ya-62.106",
        "display" : "The latest cholera dose was administered less than 3 years ago"
      },
      {
        "code" : "tlcdwamt3ya-62.106",
        "display" : "The latest cholera dose was administered more than 3 years ago"
      },
      {
        "code" : "alobsdwa-49.115",
        "display" : "At least one booster series dose was administered"
      },
      {
        "code" : "dnotldio-37.68",
        "display" : "Dose number of the latest dose is one"
      },
      {
        "code" : "tlcdwamt14daalt3ya-88.118",
        "display" : "The latest cholera dose was administered more than 14 days ago and less than 3 years ago"
      },
      {
        "code" : "dnotldit-37.68",
        "display" : "Dose number of the latest dose is two"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cindfcv-41.48",
        "display" : "Client is not due for cholera vaccination"
      },
      {
        "code" : "cidfcv-37.44",
        "display" : "Client is due for cholera vaccination"
      },
      {
        "code" : "psiccindfcbd-70.48",
        "display" : "Primary series is complete. Client is not due for cholera booster dose"
      },
      {
        "code" : "psiccidfcbd-66.44",
        "display" : "Primary series is complete. Client is due for cholera booster dose"
      },
      {
        "code" : "cindfcbd-42.48",
        "display" : "Client is not due for cholera booster dose"
      },
      {
        "code" : "cidfcbd-38.44",
        "display" : "Client is due for cholera booster dose"
      },
      {
        "code" : "bsic-26.81",
        "display" : "Booster series is complete"
      }]
    }]
  }
}

```
