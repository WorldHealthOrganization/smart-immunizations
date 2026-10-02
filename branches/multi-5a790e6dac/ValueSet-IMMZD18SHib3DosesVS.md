# IMMZD18SHib3Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SHib3Doses ValueSet for Decision Table**

## ValueSet: IMMZD18SHib3Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SHib3DosesVS | *Version*:0.2.0 |
| Active as of 2026-04-03 | *Computable Name*:IMMZD18SHib3DosesVS |

 
ValueSet IMMZD18SHib3Doses for IMMZ.D18.S.Hib.3 doses schedule. Business rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: 3 primary doses without a booster dose (3p) schedule 

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

##### IMMZD18SHib3Doses ValueSet for Decision Table Schema API

JSON Schema for IMMZD18SHib3Doses ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZD18SHib3DosesVS.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZD18SHib3DosesVS

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZD18SHib3DosesVS.

## Schema Definition

### ValueSet-IMMZD18SHib3DosesVS

**Description:** JSON Schema for IMMZD18SHib3Doses ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZD18SHib3DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SHib3DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SHib3DosesVS",
  "title" : "IMMZD18SHib3Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD18SHib3Doses for IMMZ.D18.S.Hib.3 doses schedule.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses without a booster dose (3p) schedule",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
      "concept" : [{
        "code" : "Child's birth-0",
        "display" : "Child's birth"
      },
      {
        "code" : "First Hib dose from the primary series was administered-279",
        "display" : "First Hib dose from the primary series was administered"
      },
      {
        "code" : "First Hib dose from the primary series was administered to the client within 1 year of age. Client's age is less than 5 years-302",
        "display" : "First Hib dose from the primary series was administered to the client within 1 year of age. Client's age is less than 5 years"
      },
      {
        "code" : "Second Hib dose from the primary series was administered-122",
        "display" : "Second Hib dose from the primary series was administered"
      },
      {
        "code" : "Second Hib dose from the primary series was administered. Client's age is less than 5 years-167",
        "display" : "Second Hib dose from the primary series was administered. Client's age is less than 5 years"
      },
      {
        "code" : "Third Hib dose from the primary series was administered. The primary series has been completed-100",
        "display" : "Third Hib dose from the primary series was administered. The primary series has been completed"
      }]
    }]
  }
}

```
