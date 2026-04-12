# IMMZ.D5.DT.Meningococcal.CI ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.Meningococcal.CI ValueSet for Decision Table**

## ValueSet: IMMZ.D5.DT.Meningococcal.CI ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D5.DT.Meningococcal.CI | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D5_DT_Meningococcal_contraindications |

 
ValueSet IMMZ.D5.DT.Meningococcal.CI for IMMZ.D5.DT.Meningococcal contraindications. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications Table: Potential contraindications 

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

##### IMMZ.D5.DT.Meningococcal.CI ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D5.DT.Meningococcal.CI ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D5.DT.Meningococcal.CI.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D5.DT.Meningococcal.CI

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D5.DT.Meningococcal.CI.

## Schema Definition

### ValueSet-IMMZ.D5.DT.Meningococcal.CI

**Description:** JSON Schema for IMMZ.D5.DT.Meningococcal.CI ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D5.DT.Meningococcal.CI",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D5.DT.Meningococcal.CI",
  "version" : "0.2.0",
  "name" : "IMMZ_D5_DT_Meningococcal_contraindications",
  "title" : "IMMZ.D5.DT.Meningococcal.CI ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D5.DT.Meningococcal.CI for IMMZ.D5.DT.Meningococcal contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\t\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: Potential contraindications",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D5.DT.Inputs",
      "concept" : [{
        "code" : "tchhosar-51.63",
        "display" : "The client has history of severe allergic reactions"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D5.DT.Outputs",
      "concept" : [{
        "code" : "mvcbccjircacn-106.138",
        "display" : "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note"
      }]
    }]
  }
}

```
