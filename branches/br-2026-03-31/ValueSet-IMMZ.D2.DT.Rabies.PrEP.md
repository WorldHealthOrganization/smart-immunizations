# IMMZ.D2.DT.Rabies.PrEP ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Rabies.PrEP ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.Rabies.PrEP ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Rabies.PrEP | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Rabies |

 
ValueSet IMMZ.D2.DT.Rabies.PrEP for IMMZ.D2.DT.Rabies. Business rule: Determine if the client is due for a rabies vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure 

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

##### IMMZ.D2.DT.Rabies.PrEP ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.Rabies.PrEP ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.Rabies.PrEP.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Rabies.PrEP

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Rabies.PrEP.

## Schema Definition

### ValueSet-IMMZ.D2.DT.Rabies.PrEP

**Description:** JSON Schema for IMMZ.D2.DT.Rabies.PrEP ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.Rabies.PrEP",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Rabies.PrEP",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Rabies",
  "title" : "IMMZ.D2.DT.Rabies.PrEP ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D2.DT.Rabies.PrEP for IMMZ.D2.DT.Rabies.\nBusiness rule: Determine if the client is due for a rabies vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "nrpsdwa-48.123",
        "display" : "No rabies primary series doses were administered"
      },
      {
        "code" : "orpsdwa-49.123",
        "display" : "One rabies primary series doses were administered"
      },
      {
        "code" : "tlrdwalt7da-60.103",
        "display" : "The latest rabies dose was administered less than 7 days ago"
      },
      {
        "code" : "tlrdwamt7da-60.103",
        "display" : "The latest rabies dose was administered more than 7 days ago"
      },
      {
        "code" : "trpsdwa-49.123",
        "display" : "Two rabies primary series doses were administered"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cidfrv-36.48",
        "display" : "Client is due for rabies vaccination"
      },
      {
        "code" : "cindfrv-40.52",
        "display" : "Client is not due for rabies vaccination"
      },
      {
        "code" : "risic-40.53",
        "display" : "Rabies immunization schedule is complete"
      }]
    }]
  }
}

```
