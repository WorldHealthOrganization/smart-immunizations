# IMMZ.Z.DE2 ValueSet for Cholera vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE2 ValueSet for Cholera vaccines**

## ValueSet: IMMZ.Z.DE2 ValueSet for Cholera vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2 | *Version*:0.2.0 |
| Active as of 2026-04-03 | *Computable Name*:IMMZ_Z_DE2 |

 
ValueSet for Cholera vaccines for IMMZ.Z.DE2 

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

##### IMMZ.Z.DE2 ValueSet for Cholera vaccines Schema API

JSON Schema for IMMZ.Z.DE2 ValueSet for Cholera vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.Z.DE2.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE2

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE2.

## Schema Definition

### ValueSet-IMMZ.Z.DE2

**Description:** JSON Schema for IMMZ.Z.DE2 ValueSet for Cholera vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.Z.DE2",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE2",
  "title" : "IMMZ.Z.DE2 ValueSet for Cholera vaccines",
  "status" : "active",
  "date" : "2026-04-03T22:35:55+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet for Cholera vaccines for IMMZ.Z.DE2",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "concept" : [{
        "code" : "DE2",
        "display" : "Cholera vaccines"
      }]
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "concept" : [{
        "code" : "XM29K4",
        "display" : "Cholera vaccines"
      },
      {
        "code" : "XM3Z26",
        "display" : "Cholera, inactivated, whole cell vaccines"
      },
      {
        "code" : "XM72A0",
        "display" : "Cholera, live attenuated vaccines"
      },
      {
        "code" : "XM1FT6",
        "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell vaccines"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "836383009",
        "display" : "Vibrio cholerae antigen-containing vaccine product"
      },
      {
        "code" : "1001000221103",
        "display" : "Inactivated whole Vibrio cholerae antigen only vaccine product in oral dose form"
      },
      {
        "code" : "1011000221100",
        "display" : "Live attenuated Vibrio cholerae antigen only vaccine product in oral dose form"
      }]
    },
    {
      "system" : "http://www.whocc.no/atc",
      "concept" : [{
        "code" : "J07AE",
        "display" : "Cholera vaccines"
      },
      {
        "code" : "J07AE01",
        "display" : "Cholera, inactivated, whole cell"
      },
      {
        "code" : "J07AE02",
        "display" : "Cholera, live attenuated"
      },
      {
        "code" : "J07AE51",
        "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell"
      }]
    }]
  }
}

```
