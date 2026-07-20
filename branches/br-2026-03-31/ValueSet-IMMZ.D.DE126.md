# IMMZ.D.DE126 ValueSet for Disease targeted - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D.DE126 ValueSet for Disease targeted**

## ValueSet: IMMZ.D.DE126 ValueSet for Disease targeted 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE126 | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D_DE126 |

 
ValueSet for Disease targeted for IMMZ.D.DE126 

 **References** 

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

##### IMMZ.D.DE126 ValueSet for Disease targeted Schema API

JSON Schema for IMMZ.D.DE126 ValueSet for Disease targeted ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D.DE126.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D.DE126

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D.DE126.

## Schema Definition

### ValueSet-IMMZ.D.DE126

**Description:** JSON Schema for IMMZ.D.DE126 ValueSet for Disease targeted ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D.DE126",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE126",
  "version" : "0.2.0",
  "name" : "IMMZ_D_DE126",
  "title" : "IMMZ.D.DE126 ValueSet for Disease targeted",
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
  "description" : "ValueSet for Disease targeted for IMMZ.D.DE126",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "concept" : [{
        "code" : "DE127",
        "display" : "Typhoid"
      },
      {
        "code" : "DE128",
        "display" : "Influenza"
      },
      {
        "code" : "DE129",
        "display" : "Measles"
      },
      {
        "code" : "DE133",
        "display" : "Pertussis"
      },
      {
        "code" : "DE135",
        "display" : "Mumps"
      },
      {
        "code" : "DE136",
        "display" : "Varicella"
      },
      {
        "code" : "DE137",
        "display" : "Viral hepatitis A"
      },
      {
        "code" : "DE139",
        "display" : "Tuberculosis"
      },
      {
        "code" : "DE140",
        "display" : "Viral hepatitis B"
      },
      {
        "code" : "DE141",
        "display" : "Haemophilus influenzae type b"
      },
      {
        "code" : "DE142",
        "display" : "Tetanus"
      },
      {
        "code" : "DE143",
        "display" : "Rotavirus"
      },
      {
        "code" : "DE144",
        "display" : "Human papillomavirus"
      },
      {
        "code" : "DE175",
        "display" : "Japanese encephalitis"
      },
      {
        "code" : "DE146",
        "display" : "Poliomyelitis"
      },
      {
        "code" : "DE176",
        "display" : "Diphtheria"
      },
      {
        "code" : "DE177",
        "display" : "Pneumococcal disease"
      },
      {
        "code" : "DE178",
        "display" : "Rubella"
      },
      {
        "code" : "DE179",
        "display" : "Dengue"
      },
      {
        "code" : "DE180",
        "display" : "Rabies"
      },
      {
        "code" : "DE181",
        "display" : "Meningococcal"
      },
      {
        "code" : "DE182",
        "display" : "Cholera"
      },
      {
        "code" : "DE183",
        "display" : "Tick-borne encephalitis"
      },
      {
        "code" : "DE184",
        "display" : "Yellow fever"
      },
      {
        "code" : "DE148",
        "display" : "COVID-19"
      }]
    }]
  }
}

```
