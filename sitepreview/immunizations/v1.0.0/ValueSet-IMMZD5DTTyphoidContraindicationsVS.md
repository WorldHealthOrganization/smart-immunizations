# IMMZD5DTTyphoidContraindications ValueSet for Decision Table - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTTyphoidContraindications ValueSet for Decision Table**

## ValueSet: IMMZD5DTTyphoidContraindications ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD5DTTyphoidContraindicationsVS | *Version*:1.0.0 |
| Active as of 2026-04-09 | *Computable Name*:IMMZD5DTTyphoidContraindicationsVS |

 
ValueSet IMMZD5DTTyphoidContraindications for IMMZ.D5.DT.Typhoid contraindications. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications Table: IMMZ.D5.DT.Typhoid contraindications 

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

##### IMMZD5DTTyphoidContraindications ValueSet for Decision Table Schema API

JSON Schema for IMMZD5DTTyphoidContraindications ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZD5DTTyphoidContraindicationsVS.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZD5DTTyphoidContraindicationsVS

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZD5DTTyphoidContraindicationsVS.

## Schema Definition

### ValueSet-IMMZD5DTTyphoidContraindicationsVS

**Description:** JSON Schema for IMMZD5DTTyphoidContraindications ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZD5DTTyphoidContraindicationsVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD5DTTyphoidContraindicationsVS",
  "version" : "1.0.0",
  "name" : "IMMZD5DTTyphoidContraindicationsVS",
  "title" : "IMMZD5DTTyphoidContraindications ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD5DTTyphoidContraindications for IMMZ.D5.DT.Typhoid contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Typhoid contraindications",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
      "concept" : [{
        "code" : "The client has hypersensitivity to any component of the vaccine-72",
        "display" : "The client has hypersensitivity to any component of the vaccine"
      },
      {
        "code" : "Typhoid vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.-66",
        "display" : "Typhoid vaccination could be contraindicated. Clinical judgement is required. Create a clinical note."
      },
      {
        "code" : "The client is currently pregnant-52",
        "display" : "The client is currently pregnant"
      },
      {
        "code" : "Typhoid vaccination is contraindicated for Ty21a vaccine. Clinical judgement is required for Typbar-TCV or ViPS vaccine. Create a clinical note-224",
        "display" : "Typhoid vaccination is contraindicated for Ty21a vaccine. Clinical judgement is required for Typbar-TCV or ViPS vaccine. Create a clinical note"
      },
      {
        "code" : "The client is currently taking antibiotics-52",
        "display" : "The client is currently taking antibiotics"
      },
      {
        "code" : "Typhoid vaccination is contraindicated for Ty21a vaccine.-97",
        "display" : "Typhoid vaccination is contraindicated for Ty21a vaccine."
      },
      {
        "code" : "The client's HIV status is positive-29",
        "display" : "The client's HIV status is positive"
      },
      {
        "code" : "The client is not immunologically stable-31",
        "display" : "The client is not immunologically stable"
      }]
    }]
  }
}

```
