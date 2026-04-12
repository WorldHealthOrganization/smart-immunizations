# IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines**

## ValueSet: IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6 | *Version*:1.0.0 |
| Active as of 2026-04-09 | *Computable Name*:IMMZ_Z_DE6 |

 
ValueSet for Hepatitis B-containing vaccines for IMMZ.Z.DE6 

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

##### IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines Schema API

JSON Schema for IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.Z.DE6.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE6

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.Z.DE6.

## Schema Definition

### ValueSet-IMMZ.Z.DE6

**Description:** JSON Schema for IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.Z.DE6",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6",
  "version" : "1.0.0",
  "name" : "IMMZ_Z_DE6",
  "title" : "IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines",
  "status" : "active",
  "date" : "2026-04-09T14:34:42+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet for Hepatitis B-containing vaccines for IMMZ.Z.DE6",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "concept" : [{
        "code" : "DE6",
        "display" : "Hepatitis B-containing vaccines"
      }]
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "concept" : [{
        "code" : "XM9V38",
        "display" : "Hepatitis B, purified antigen"
      },
      {
        "code" : "XM3G68",
        "display" : "Diphtheria, hepatitis B, tetanus vaccines"
      },
      {
        "code" : "XM32L7",
        "display" : "Hemophilus influenzae B and hepatitis B vaccines"
      },
      {
        "code" : "XM7JP3",
        "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus, hepatitis B vaccines"
      },
      {
        "code" : "XM0LT9",
        "display" : "Diphtheria, pertussis, poliomyelitis, tetanus, hepatitis B vaccines"
      },
      {
        "code" : "XM5XP9",
        "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus-hepatitis B, meningococcus A + C vaccines"
      },
      {
        "code" : "XM84S1",
        "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "836374004",
        "display" : "Hepatitis B virus antigen-containing vaccine product"
      },
      {
        "code" : "871806004",
        "display" : "Haemophilus influenzae type b and Hepatitis B virus antigens only vaccine product"
      }]
    },
    {
      "system" : "http://www.whocc.no/atc",
      "concept" : [{
        "code" : "J07BC01",
        "display" : "Hepatitis B, purified antigen"
      },
      {
        "code" : "J07CA07",
        "display" : "Diphtheria-hepatitis B-tetanus"
      },
      {
        "code" : "J07CA08",
        "display" : "Haemophilus influenzae B and hepatitis B"
      },
      {
        "code" : "J07CA11",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B"
      },
      {
        "code" : "J07CA12",
        "display" : "Diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B"
      },
      {
        "code" : "J07CA13",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C"
      },
      {
        "code" : "J07CA09",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
      },
      {
        "code" : "J07CA05",
        "display" : "Diphtheria-hepatitis B-pertussis-tetanus"
      }]
    },
    {
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "30937-7",
        "display" : "Long common name: Hepatitis B virus dose count in combination vaccine"
      }]
    }]
  }
}

```
