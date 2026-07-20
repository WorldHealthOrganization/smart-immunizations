# IMMZ.D2.DT.Seasonalinfluenza.2Dose ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Seasonalinfluenza.2Dose ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.Seasonalinfluenza.2Dose ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Seasonalinfluenza.2Dose | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Seasonal_influenza |

 
ValueSet IMMZ.D2.DT.Seasonalinfluenza.2Dose for IMMZ.D2.DT.Seasonal influenza. Business rule: Determine if the client is due for a seasonal influenza vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any
 Table: Inactivated trivalent and quadrivalent vaccines, 2-dose schedule 

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

##### IMMZ.D2.DT.Seasonalinfluenza.2Dose ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.Seasonalinfluenza.2Dose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.Seasonalinfluenza.2Dose.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Seasonalinfluenza.2Dose

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Seasonalinfluenza.2Dose.

## Schema Definition

### ValueSet-IMMZ.D2.DT.Seasonalinfluenza.2Dose

**Description:** JSON Schema for IMMZ.D2.DT.Seasonalinfluenza.2Dose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.Seasonalinfluenza.2Dose",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Seasonalinfluenza.2Dose",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Seasonal_influenza",
  "title" : "IMMZ.D2.DT.Seasonalinfluenza.2Dose ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D2.DT.Seasonalinfluenza.2Dose for IMMZ.D2.DT.Seasonal influenza.\nBusiness rule: Determine if the client is due for a seasonal influenza vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any  \nTable: Inactivated trivalent and quadrivalent vaccines, 2-dose schedule",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "csailt6m-34.41",
        "display" : "Client's age is less than 6 months"
      },
      {
        "code" : "nsipsdwa-60.127",
        "display" : "No seasonal influenza primary series doses were administered"
      },
      {
        "code" : "csaimtoet6m-46.41",
        "display" : "Client's age is more than or equal to 6 months"
      },
      {
        "code" : "osipsdwa-61.127",
        "display" : "One seasonal influenza primary series doses were administered"
      },
      {
        "code" : "csailt9y-33.40",
        "display" : "Client's age is less than 9 years"
      },
      {
        "code" : "tlsidwalt4wa-73.110",
        "display" : "The latest seasonal influenza dose was administered less than 4 weeks ago"
      },
      {
        "code" : "tlsidwamt4wa-73.110",
        "display" : "The latest seasonal influenza dose was administered more than 4 weeks ago"
      },
      {
        "code" : "csaimtoet9y-45.40",
        "display" : "Client's age is more than or equal to 9 years"
      },
      {
        "code" : "tlsidwalt1ya-73.109",
        "display" : "The latest seasonal influenza dose was  administered less than 1 year ago"
      },
      {
        "code" : "tlsidwamt1ya-72.109",
        "display" : "The latest seasonal influenza dose was administered more than 1 year ago"
      },
      {
        "code" : "tsipsdwa-61.127",
        "display" : "Two seasonal influenza primary series doses were administered"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cindfsiv-52.48",
        "display" : "Client is not due for seasonal influenza vaccination"
      },
      {
        "code" : "cidfsiv-48.44",
        "display" : "Client is due for seasonal influenza vaccination"
      },
      {
        "code" : "tpsiccindfsiad-84.48",
        "display" : "The primary series is complete. Client is not due for seasonal influenza annual dose"
      },
      {
        "code" : "tpsiccidfsiad-80.44",
        "display" : "The primary series is complete. Client is due for seasonal influenza annual dose"
      }]
    }]
  }
}

```
