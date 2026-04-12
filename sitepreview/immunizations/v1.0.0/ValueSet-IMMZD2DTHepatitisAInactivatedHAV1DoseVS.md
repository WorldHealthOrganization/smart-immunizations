# IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table**

## ValueSet: IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTHepatitisAInactivatedHAV1DoseVS | *Version*:1.0.0 |
| Active as of 2026-04-09 | *Computable Name*:IMMZD2DTHepatitisAInactivatedHAV1DoseVS |

 
ValueSet IMMZD2DTHepatitisAInactivatedHAV1Dose for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose. Business rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Inactivated hepatitis A virus (HAV), 1-dose schedule 

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

##### IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table Schema API

JSON Schema for IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZD2DTHepatitisAInactivatedHAV1DoseVS.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZD2DTHepatitisAInactivatedHAV1DoseVS

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZD2DTHepatitisAInactivatedHAV1DoseVS.

## Schema Definition

### ValueSet-IMMZD2DTHepatitisAInactivatedHAV1DoseVS

**Description:** JSON Schema for IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZD2DTHepatitisAInactivatedHAV1DoseVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTHepatitisAInactivatedHAV1DoseVS",
  "version" : "1.0.0",
  "name" : "IMMZD2DTHepatitisAInactivatedHAV1DoseVS",
  "title" : "IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTHepatitisAInactivatedHAV1Dose for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated hepatitis A virus (HAV), 1-dose schedule",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
      "concept" : [{
        "code" : "Client's age is less than 12 months-42",
        "display" : "Client's age is less than 12 months"
      },
      {
        "code" : "Client is not due for Hepatitis A vaccination-48",
        "display" : "Client is not due for Hepatitis A vaccination"
      },
      {
        "code" : "No hepatitis A primary series dose was administered-131",
        "display" : "No hepatitis A primary series dose was administered"
      },
      {
        "code" : "Client's age is more than or equal to 12 months-42",
        "display" : "Client's age is more than or equal to 12 months"
      },
      {
        "code" : "Client is due for Hepatitis A vaccination-44",
        "display" : "Client is due for Hepatitis A vaccination"
      },
      {
        "code" : "One hepatitis A primary series dose was administered-131",
        "display" : "One hepatitis A primary series dose was administered"
      },
      {
        "code" : "Hepatitis A immunization schedule is complete-158",
        "display" : "Hepatitis A immunization schedule is complete"
      }]
    }]
  }
}

```
