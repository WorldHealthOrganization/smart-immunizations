# IMMZ.Z.DE27 ValueSet for Malaria vaccines - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE27 ValueSet for Malaria vaccines**

## ValueSet: IMMZ.Z.DE27 ValueSet for Malaria vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE27 | *Version*:1.0.0 |
| Active as of 2026-04-09 | *Computable Name*:IMMZ_Z_DE27 |

 
ValueSet for Malaria vaccines for IMMZ.Z.DE27 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

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

##### IMMZ.Z.DE27 ValueSet for Malaria vaccines Schema API

JSON Schema for IMMZ.Z.DE27 ValueSet for Malaria vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.Z.DE27.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE27

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE27.

## Schema Definition

### ValueSet-IMMZ.Z.DE27

**Description:** JSON Schema for IMMZ.Z.DE27 ValueSet for Malaria vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.Z.DE27",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE27",
  "version" : "1.0.0",
  "name" : "IMMZ_Z_DE27",
  "title" : "IMMZ.Z.DE27 ValueSet for Malaria vaccines",
  "status" : "active",
  "date" : "2026-04-09T14:18:30+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet for Malaria vaccines for IMMZ.Z.DE27",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "concept" : [{
        "code" : "DE27",
        "display" : "Malaria vaccines"
      }]
    },
    {
      "system" : "http://www.whocc.no/atc",
      "concept" : [{
        "code" : "J07XA01",
        "display" : "Malaria vaccines"
      }]
    }]
  }
}

```
