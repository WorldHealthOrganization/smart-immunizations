# IMMZD5DTMeningococcalContraindications ValueSet for Decision Table - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMeningococcalContraindications ValueSet for Decision Table**

## ValueSet: IMMZD5DTMeningococcalContraindications ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD5DTMeningococcalContraindicationsVS | *Version*:1.0.0 |
| Active as of 2026-04-09 | *Computable Name*:IMMZD5DTMeningococcalContraindicationsVS |

 
ValueSet IMMZD5DTMeningococcalContraindications for IMMZ.D5.DT.Meningococcal contraindications. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications Table: IMMZ.D5.DT.Meningococcal contraindications 

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

##### IMMZD5DTMeningococcalContraindications ValueSet for Decision Table Schema API

JSON Schema for IMMZD5DTMeningococcalContraindications ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZD5DTMeningococcalContraindicationsVS.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZD5DTMeningococcalContraindicationsVS

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZD5DTMeningococcalContraindicationsVS.

## Schema Definition

### ValueSet-IMMZD5DTMeningococcalContraindicationsVS

**Description:** JSON Schema for IMMZD5DTMeningococcalContraindications ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZD5DTMeningococcalContraindicationsVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD5DTMeningococcalContraindicationsVS",
  "version" : "1.0.0",
  "name" : "IMMZD5DTMeningococcalContraindicationsVS",
  "title" : "IMMZD5DTMeningococcalContraindications ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD5DTMeningococcalContraindications for IMMZ.D5.DT.Meningococcal contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Meningococcal contraindications",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
      "concept" : [{
        "code" : "The client has history of severe allergic reactions-59",
        "display" : "The client has history of severe allergic reactions"
      },
      {
        "code" : "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note-130",
        "display" : "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note"
      }]
    }]
  }
}

```
