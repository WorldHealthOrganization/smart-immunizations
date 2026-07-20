# IMMZ.D2.DT.HepatitisA.IHAV2 ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.HepatitisA.IHAV2 ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.HepatitisA.IHAV2 ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.HepatitisA.IHAV2 | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Hepatitis_A_Inactivated_HAV_2_doses |

 
ValueSet IMMZ.D2.DT.HepatitisA.IHAV2 for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses. Business rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any
 Table: Inactivated hepatitis A virus (HAV), 2-dose schedule 

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

##### IMMZ.D2.DT.HepatitisA.IHAV2 ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.HepatitisA.IHAV2 ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.HepatitisA.IHAV2.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.HepatitisA.IHAV2

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.HepatitisA.IHAV2.

## Schema Definition

### ValueSet-IMMZ.D2.DT.HepatitisA.IHAV2

**Description:** JSON Schema for IMMZ.D2.DT.HepatitisA.IHAV2 ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.HepatitisA.IHAV2",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.HepatitisA.IHAV2",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Hepatitis_A_Inactivated_HAV_2_doses",
  "title" : "IMMZ.D2.DT.HepatitisA.IHAV2 ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D2.DT.HepatitisA.IHAV2 for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any  \nTable: Inactivated hepatitis A virus (HAV), 2-dose schedule",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "csailt12m-35.44",
        "display" : "Client's age is less than 12 months"
      },
      {
        "code" : "nhapsdwa-53.139",
        "display" : "No hepatitis A primary series doses were administered"
      },
      {
        "code" : "csaimtoet12m-47.44",
        "display" : "Client's age is more than or equal to 12 months"
      },
      {
        "code" : "ohapsdwa-52.139",
        "display" : "One hepatitis A primary series dose was administered"
      },
      {
        "code" : "tlhadwalt6ma-67.121",
        "display" : "The latest Hepatitis A dose was administered less than 6 months ago"
      },
      {
        "code" : "tlhadwamt6ma-67.121",
        "display" : "The latest Hepatitis A dose was administered more than 6 months ago"
      },
      {
        "code" : "thapsdwa-54.139",
        "display" : "Two hepatitis A primary series doses were administered"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cindfhav-45.52",
        "display" : "Client is not due for Hepatitis A vaccination"
      },
      {
        "code" : "cidfhav-41.48",
        "display" : "Client is due for Hepatitis A vaccination"
      },
      {
        "code" : "haisic-45.53",
        "display" : "Hepatitis A immunization schedule is complete"
      }]
    }]
  }
}

```
