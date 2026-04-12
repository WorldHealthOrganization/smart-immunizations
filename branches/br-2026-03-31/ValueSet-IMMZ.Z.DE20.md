# IMMZ.Z.DE20 ValueSet for TBE vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE20 ValueSet for TBE vaccines**

## ValueSet: IMMZ.Z.DE20 ValueSet for TBE vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE20 | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_Z_DE20 |

 
ValueSet for TBE vaccines for IMMZ.Z.DE20 

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

##### IMMZ.Z.DE20 ValueSet for TBE vaccines Schema API

JSON Schema for IMMZ.Z.DE20 ValueSet for TBE vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.Z.DE20.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE20

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE20.

## Schema Definition

### ValueSet-IMMZ.Z.DE20

**Description:** JSON Schema for IMMZ.Z.DE20 ValueSet for TBE vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.Z.DE20",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE20",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE20",
  "title" : "IMMZ.Z.DE20 ValueSet for TBE vaccines",
  "status" : "active",
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet for TBE vaccines for IMMZ.Z.DE20",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "concept" : [{
        "code" : "DE20",
        "display" : "TBE vaccines"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "836403007",
        "display" : "Tick-borne encephalitis virus antigen-containing vaccine product"
      }]
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "concept" : [{
        "code" : "XM0RC1",
        "display" : "Encephalitis vaccines"
      },
      {
        "code" : "XM8MP6",
        "display" : "Encephalitis, tick borne, inactivated, whole virus"
      }]
    },
    {
      "system" : "http://www.whocc.no/atc",
      "concept" : [{
        "code" : "J07BA01",
        "display" : "Encephalitis, tick borne, inactivated, whole virus"
      }]
    }]
  }
}

```
