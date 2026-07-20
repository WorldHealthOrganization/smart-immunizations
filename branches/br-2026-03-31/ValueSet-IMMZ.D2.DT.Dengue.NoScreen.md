# IMMZ.D2.DT.Dengue.NoScreen ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Dengue.NoScreen ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.Dengue.NoScreen ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Dengue.NoScreen | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Dengue_3_doses_without_pre_vaccination_screening |

 
ValueSet IMMZ.D2.DT.Dengue.NoScreen for IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening. Business rule: Determine if the client is due for a dengue vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any
 Table: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years] 

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

##### IMMZ.D2.DT.Dengue.NoScreen ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.Dengue.NoScreen ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.Dengue.NoScreen.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Dengue.NoScreen

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Dengue.NoScreen.

## Schema Definition

### ValueSet-IMMZ.D2.DT.Dengue.NoScreen

**Description:** JSON Schema for IMMZ.D2.DT.Dengue.NoScreen ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.Dengue.NoScreen",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Dengue.NoScreen",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Dengue_3_doses_without_pre_vaccination_screening",
  "title" : "IMMZ.D2.DT.Dengue.NoScreen ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D2.DT.Dengue.NoScreen for IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening.\nBusiness rule: Determine if the client is due for a dengue vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any  \nTable: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "csailt9y-33.43",
        "display" : "Client's age is less than 9 years"
      },
      {
        "code" : "csaimt45y-34.43",
        "display" : "Client's age is more than 45 years"
      },
      {
        "code" : "ndpsdwa-48.123",
        "display" : "No dengue primary series doses were administered"
      },
      {
        "code" : "csaib9ya45y-44.54",
        "display" : "Client's age is between 9 years and 45 years"
      },
      {
        "code" : "odpsdwa-47.123",
        "display" : "One dengue primary series dose was administered"
      },
      {
        "code" : "tlddwalt6ma-62.112",
        "display" : "The latest dengue dose was administered less than 6 months ago"
      },
      {
        "code" : "tlddwamt6ma-62.112",
        "display" : "The latest dengue dose was administered more than 6 months ago"
      },
      {
        "code" : "tdpsdwa-49.123",
        "display" : "Two dengue primary series doses were administered"
      },
      {
        "code" : "tdpsdwa-51.123",
        "display" : "Three dengue primary series doses were administered"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cindfdv-40.52",
        "display" : "Client is not due for dengue vaccination"
      },
      {
        "code" : "cidfdv-36.48",
        "display" : "Client is due for dengue vaccination"
      },
      {
        "code" : "disic-40.53",
        "display" : "Dengue immunization schedule is complete"
      }]
    }]
  }
}

```
