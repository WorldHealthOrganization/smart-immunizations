# IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines**

## ValueSet: IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE11 | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_Z_DE11 |

 
ValueSet for Mumps-containing vaccines for IMMZ.Z.DE11 

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

##### IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines Schema API

JSON Schema for IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.Z.DE11.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE11

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE11.

## Schema Definition

### ValueSet-IMMZ.Z.DE11

**Description:** JSON Schema for IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.Z.DE11",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE11",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE11",
  "title" : "IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines",
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
  "description" : "ValueSet for Mumps-containing vaccines for IMMZ.Z.DE11",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "concept" : [{
        "code" : "DE11",
        "display" : "Mumps-containing vaccines"
      }]
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "concept" : [{
        "code" : "XM1131",
        "display" : "Mumps vaccine"
      },
      {
        "code" : "XM2340",
        "display" : "Mumps, live attenuated"
      },
      {
        "code" : "XM8TF3",
        "display" : "Measles, combinations with mumps and rubella, live attenuated"
      },
      {
        "code" : "XM4AJ8",
        "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
      },
      {
        "code" : "XM9439",
        "display" : "Measles, combinations with mumps, live attenuated"
      },
      {
        "code" : "XM3B09",
        "display" : "Rubella, combinations with mumps, live attenuated"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "836498007",
        "display" : "Mumps orthorubulavirus antigen-containing vaccine product"
      }]
    },
    {
      "system" : "http://www.whocc.no/atc",
      "concept" : [{
        "code" : "J07BE",
        "display" : "Mumps vaccines"
      },
      {
        "code" : "J07BE01",
        "display" : "Mumps, live attenuated"
      },
      {
        "code" : "J07BD52",
        "display" : "Measles, combinations with mumps and rubella, live attenuated"
      },
      {
        "code" : "J07BD54",
        "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
      },
      {
        "code" : "J07BD51",
        "display" : "Measles, combinations with mumps, live attenuated"
      },
      {
        "code" : "J07BJ51",
        "display" : "Rubella, combinations with mumps, live attenuated"
      }]
    },
    {
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "30940-1",
        "display" : "Long common name: Measles virus + Mumps virus + Rubella virus dose count in combination vaccine"
      }]
    }]
  }
}

```
