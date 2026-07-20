# IMMZ.D2.DT.Meningococcal.Poly ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Meningococcal.Poly ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.Meningococcal.Poly ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Meningococcal.Poly | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Meningococcal_Polysaccharide_vaccines |

 
ValueSet IMMZ.D2.DT.Meningococcal.Poly for IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines. Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any
 Table: Polysaccharide vaccines schedule (Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines) 

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

##### IMMZ.D2.DT.Meningococcal.Poly ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.Meningococcal.Poly ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.Meningococcal.Poly.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Meningococcal.Poly

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Meningococcal.Poly.

## Schema Definition

### ValueSet-IMMZ.D2.DT.Meningococcal.Poly

**Description:** JSON Schema for IMMZ.D2.DT.Meningococcal.Poly ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.Meningococcal.Poly",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Meningococcal.Poly",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Meningococcal_Polysaccharide_vaccines",
  "title" : "IMMZ.D2.DT.Meningococcal.Poly ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D2.DT.Meningococcal.Poly for IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any  \nTable: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "nmpsdwa-53.130",
        "display" : "No meningococcal primary series dose was administered"
      },
      {
        "code" : "ompsdwa-54.130",
        "display" : "One meningococcal primary series dose was administered"
      },
      {
        "code" : "nmbdwa-46.128",
        "display" : "No meningococcal booster dose was administered"
      },
      {
        "code" : "mbdwa-43.128",
        "display" : "Meningococcal booster dose was administered"
      },
      {
        "code" : "csailt2y-33.42",
        "display" : "Client's age is less than 2 years"
      },
      {
        "code" : "csaimt2y-33.42",
        "display" : "Client's age is more than 2 years"
      },
      {
        "code" : "tlmdwalt3ya-68.111",
        "display" : "The latest meningococcal dose was administered less than 3 years ago"
      },
      {
        "code" : "tlmdwamt3ya-68.111",
        "display" : "The latest meningococcal dose was administered more than 3 years ago"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cindfmv-47.52",
        "display" : "Client is not due for meningococcal vaccination"
      },
      {
        "code" : "cidfmv-43.48",
        "display" : "Client is due for meningococcal vaccination"
      },
      {
        "code" : "misic-47.53",
        "display" : "Meningococcal immunization schedule is complete"
      },
      {
        "code" : "tpsiccindfmbd-81.52",
        "display" : "The primary series is complete. Client is not due for meningococcal booster dose."
      },
      {
        "code" : "tpsiccjirfmbdcacn-117.70",
        "display" : "The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note"
      }]
    }]
  }
}

```
