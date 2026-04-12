# IMMZ.D2.DT.Cholera.rBS2to5 ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Cholera.rBS2to5 ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.Cholera.rBS2to5 ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Cholera.rBS2to5 | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Cholera_WC_rBS_vaccine_3_doses |

 
ValueSet IMMZ.D2.DT.Cholera.rBS2to5 for IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses. Business rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any
 Table: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years 

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

##### IMMZ.D2.DT.Cholera.rBS2to5 ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.Cholera.rBS2to5 ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.Cholera.rBS2to5.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Cholera.rBS2to5

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Cholera.rBS2to5.

## Schema Definition

### ValueSet-IMMZ.D2.DT.Cholera.rBS2to5

**Description:** JSON Schema for IMMZ.D2.DT.Cholera.rBS2to5 ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.Cholera.rBS2to5",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Cholera.rBS2to5",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Cholera_WC_rBS_vaccine_3_doses",
  "title" : "IMMZ.D2.DT.Cholera.rBS2to5 ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D2.DT.Cholera.rBS2to5 for IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any  \nTable: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "ncpsdwa-47.116",
        "display" : "No cholera primary series dose was administered"
      },
      {
        "code" : "csailt2y-33.40",
        "display" : "Client's age is less than 2 years"
      },
      {
        "code" : "csai25y-25.50",
        "display" : "Client's age is 2–5 years"
      },
      {
        "code" : "alocpsdwa-57.117",
        "display" : "At least one cholera primary series dose was administered"
      },
      {
        "code" : "dnotlpsdio-52.106",
        "display" : "Dose number of the latest primary series dose is one"
      },
      {
        "code" : "tlcdwalt1wa-61.105",
        "display" : "The latest cholera dose was administered less than 1 week ago"
      },
      {
        "code" : "tlcdwamt1walt6wa-83.115",
        "display" : "The latest cholera dose was administered more than 1 week and less than 6 weeks ago"
      },
      {
        "code" : "dnotlpsdit-52.106",
        "display" : "Dose number of the latest primary series dose is two"
      },
      {
        "code" : "dnotlpsdiltt-64.106",
        "display" : "Dose number of the latest primary series dose is less than three"
      },
      {
        "code" : "tlcdwamt6wa-62.106",
        "display" : "The latest cholera dose was administered more than 6 weeks ago"
      },
      {
        "code" : "dnotlpsdit-54.106",
        "display" : "Dose number of the latest primary series dose is three"
      },
      {
        "code" : "tlcdwaltmsdllda-95.132",
        "display" : "The latest cholera dose was administered less than {Member States defined lower limit} days ago"
      },
      {
        "code" : "tlcdwaalt6mamsdei-116.107",
        "display" : "The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}"
      },
      {
        "code" : "tlcdwaamt6mamsdei-116.107",
        "display" : "The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cindfcv-41.48",
        "display" : "Client is not due for cholera vaccination"
      },
      {
        "code" : "cidfcv-37.44",
        "display" : "Client is due for cholera vaccination"
      },
      {
        "code" : "psiccindfcbd-70.48",
        "display" : "Primary series is complete. Client is not due for cholera booster dose"
      },
      {
        "code" : "psiccidfcbd-66.44",
        "display" : "Primary series is complete. Client is due for cholera booster dose"
      }]
    }]
  }
}

```
