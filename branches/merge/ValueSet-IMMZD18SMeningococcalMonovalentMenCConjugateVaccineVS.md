# IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table**

## ValueSet: IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS | *Version*:1.0.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS |

 
ValueSet IMMZD18SMeningococcalMonovalentMenCConjugateVaccine for IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule. Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Monovalent MenC conjugate schedule 

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

##### IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table Schema API

JSON Schema for IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS.

## Schema Definition

### ValueSet-IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS

**Description:** JSON Schema for IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS",
  "version" : "1.0.0",
  "name" : "IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS",
  "title" : "IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table",
  "status" : "active",
  "date" : "2026-03-31T13:54:17+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet IMMZD18SMeningococcalMonovalentMenCConjugateVaccine for IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Monovalent MenC conjugate schedule",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
      "concept" : [{
        "code" : "Child's birth-0",
        "display" : "Child's birth"
      },
      {
        "code" : "First meningococcal dose from the primary series was administered-338",
        "display" : "First meningococcal dose from the primary series was administered"
      },
      {
        "code" : "First meningococcal dose from the primary series was administered and client started the series when client's age was less than or equal to 11 months-237",
        "display" : "First meningococcal dose from the primary series was administered and client started the series when client's age was less than or equal to 11 months"
      },
      {
        "code" : "Second meningococcal dose from the primary series was administered. The primary series has been completed for clients that started the series when client's age was less than or equal to 11 months-99",
        "display" : "Second meningococcal dose from the primary series was administered. The primary series has been completed for clients that started the series when client's age was less than or equal to 11 months"
      },
      {
        "code" : "The primary series has been completed and client started the series when client's age was less than or equal to 11 months-236",
        "display" : "The primary series has been completed and client started the series when client's age was less than or equal to 11 months"
      },
      {
        "code" : "Meningococcal booster dose was administered for the client that started the series when client's age was less than or equal to 11 months. Immunization schedule has been completed-120",
        "display" : "Meningococcal booster dose was administered for the client that started the series when client's age was less than or equal to 11 months. Immunization schedule has been completed"
      }]
    }]
  }
}

```
