# IMMZ.D2.DT.Varicella.1Dose ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Varicella.1Dose ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.Varicella.1Dose ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Varicella.1Dose | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Varicella_1_dose |

 
ValueSet IMMZ.D2.DT.Varicella.1Dose for IMMZ.D2.DT.Varicella.1 dose. Business rule: Determine if the client is due for a varicella vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any
 Table: 1-dose schedule 

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

##### IMMZ.D2.DT.Varicella.1Dose ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.Varicella.1Dose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.Varicella.1Dose.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Varicella.1Dose

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Varicella.1Dose.

## Schema Definition

### ValueSet-IMMZ.D2.DT.Varicella.1Dose

**Description:** JSON Schema for IMMZ.D2.DT.Varicella.1Dose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.Varicella.1Dose",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Varicella.1Dose",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Varicella_1_dose",
  "title" : "IMMZ.D2.DT.Varicella.1Dose ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D2.DT.Varicella.1Dose for IMMZ.D2.DT.Varicella.1 dose.\nBusiness rule: Determine if the client is due for a varicella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any  \nTable: 1-dose schedule",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "csailt12m-35.42",
        "display" : "Client's age is less than 12 months"
      },
      {
        "code" : "lvwaitp4w-49.92",
        "display" : "Live vaccine was administered in the past 4 weeks"
      },
      {
        "code" : "nlvwaitp4w-52.92",
        "display" : "No live vaccine was administered in the past 4 weeks"
      },
      {
        "code" : "nvpsdwa-49.129",
        "display" : "No varicella primary series dose was administered"
      },
      {
        "code" : "csaimtoet12m-46.42",
        "display" : "Cient's age is more than or equal to 12 months"
      },
      {
        "code" : "ovpsdwa-50.129",
        "display" : "One varicella primary series dose was administered"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cindfvv-43.48",
        "display" : "Client is not due for varicella vaccination"
      },
      {
        "code" : "cidfvv-39.44",
        "display" : "Client is due for varicella vaccination"
      },
      {
        "code" : "visic-43.49",
        "display" : "Varicella immunization schedule is complete"
      }]
    }]
  }
}

```
