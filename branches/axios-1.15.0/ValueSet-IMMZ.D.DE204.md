# IMMZ.D.DE204 ValueSet for HIV status - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D.DE204 ValueSet for HIV status**

## ValueSet: IMMZ.D.DE204 ValueSet for HIV status 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE204 | *Version*:0.2.0 |
| Active as of 2026-04-12 | *Computable Name*:IMMZ_D_DE204 |

 
ValueSet for HIV status for IMMZ.D.DE204 

 **References** 

* [IMMZ.D1.Capture or update client history](StructureDefinition-IMMZD1.md)
* [IMMZ.D13.Update client record](StructureDefinition-IMMZD13.md)

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

##### IMMZ.D.DE204 ValueSet for HIV status Schema API

JSON Schema for IMMZ.D.DE204 ValueSet for HIV status ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D.DE204.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D.DE204

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D.DE204.

## Schema Definition

### ValueSet-IMMZ.D.DE204

**Description:** JSON Schema for IMMZ.D.DE204 ValueSet for HIV status ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D.DE204",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE204",
  "version" : "0.2.0",
  "name" : "IMMZ_D_DE204",
  "title" : "IMMZ.D.DE204 ValueSet for HIV status",
  "status" : "active",
  "date" : "2026-04-12T07:49:12+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet for HIV status for IMMZ.D.DE204",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "concept" : [{
        "code" : "DE205",
        "display" : "HIV-positive"
      },
      {
        "code" : "DE206",
        "display" : "HIV-negative"
      },
      {
        "code" : "DE207",
        "display" : "Unknown"
      }]
    }]
  }
}

```
