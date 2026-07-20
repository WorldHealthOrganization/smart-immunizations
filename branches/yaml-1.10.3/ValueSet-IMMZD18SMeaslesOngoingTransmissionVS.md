# IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table**

## ValueSet: IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SMeaslesOngoingTransmissionVS | *Version*:0.2.0 |
| Active as of 2026-03-25 | *Computable Name*:IMMZD18SMeaslesOngoingTransmissionVS |

 
ValueSet IMMZD18SMeaslesOngoingTransmission for IMMZ.D18.S.Measles.Ongoing transmission schedule. Business rule: Determine if the client is due for a measles vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months) 

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

##### IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table Schema API

JSON Schema for IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZD18SMeaslesOngoingTransmissionVS.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZD18SMeaslesOngoingTransmissionVS

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZD18SMeaslesOngoingTransmissionVS.

## Schema Definition

### ValueSet-IMMZD18SMeaslesOngoingTransmissionVS

**Description:** JSON Schema for IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZD18SMeaslesOngoingTransmissionVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SMeaslesOngoingTransmissionVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeaslesOngoingTransmissionVS",
  "title" : "IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table",
  "status" : "active",
  "date" : "2026-03-25T23:30:34+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet IMMZD18SMeaslesOngoingTransmission for IMMZ.D18.S.Measles.Ongoing transmission schedule.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
      "concept" : [{
        "code" : "Child's birth-0",
        "display" : "Child's birth"
      },
      {
        "code" : "MCV1 was administered-127",
        "display" : "MCV1 was administered"
      },
      {
        "code" : "MCV2 was administered. The primary series has been completed.-104",
        "display" : "MCV2 was administered. The primary series has been completed."
      }]
    }]
  }
}

```
