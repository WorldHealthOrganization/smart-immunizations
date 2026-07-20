# IMMZ.D2.DT.Malaria.4Dose ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Malaria.4Dose ValueSet for Decision Table**

## ValueSet: IMMZ.D2.DT.Malaria.4Dose ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Malaria.4Dose | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Malaria |

 
ValueSet IMMZ.D2.DT.Malaria.4Dose for IMMZ.D2.DT.Malaria. Business rule: Determine if the client is due for a malaria vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any
 Table: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO) 

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

##### IMMZ.D2.DT.Malaria.4Dose ValueSet for Decision Table Schema API

JSON Schema for IMMZ.D2.DT.Malaria.4Dose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-IMMZ.D2.DT.Malaria.4Dose.schema.json

#### JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Malaria.4Dose

This endpoint serves the JSON Schema definition for the enumeration ValueSet-IMMZ.D2.DT.Malaria.4Dose.

## Schema Definition

### ValueSet-IMMZ.D2.DT.Malaria.4Dose

**Description:** JSON Schema for IMMZ.D2.DT.Malaria.4Dose ValueSet for Decision Table ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.D2.DT.Malaria.4Dose",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D2.DT.Malaria.4Dose",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Malaria",
  "title" : "IMMZ.D2.DT.Malaria.4Dose ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZ.D2.DT.Malaria.4Dose for IMMZ.D2.DT.Malaria.\nBusiness rule: Determine if the client is due for a malaria vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any  \nTable: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\t\t\t\t\t\t\t\t\t",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
      "concept" : [{
        "code" : "csailt5m-34.43",
        "display" : "Client's age is less than 5 months"
      },
      {
        "code" : "nmpsdwa-49.124",
        "display" : "No malaria primary series doses were administered"
      },
      {
        "code" : "csaimtoet5m-46.43",
        "display" : "Client's age is more than or equal to 5 months"
      },
      {
        "code" : "ompsdwa-48.124",
        "display" : "One malaria primary series dose was administered"
      },
      {
        "code" : "tlmdwalt4wa-62.105",
        "display" : "The latest malaria dose was administered less than 4 weeks ago"
      },
      {
        "code" : "tlmdwamt4wa-62.112",
        "display" : "The latest malaria dose was administered more than 4 weeks ago"
      },
      {
        "code" : "tmpsdwa-50.124",
        "display" : "Two malaria primary series doses were administered"
      },
      {
        "code" : "tmpsdwa-52.124",
        "display" : "Three malaria primary series doses were administered"
      },
      {
        "code" : "fmpsdwa-51.124",
        "display" : "Four malaria primary series doses were administered"
      },
      {
        "code" : "csailt5m-34.41",
        "display" : "Client's age is less than 5 months"
      },
      {
        "code" : "nmpsdwa-49.116",
        "display" : "No malaria primary series doses were administered"
      },
      {
        "code" : "csaimtoet5m-46.41",
        "display" : "Client's age is more than or equal to 5 months"
      },
      {
        "code" : "ompsdwa-48.116",
        "display" : "One malaria primary series dose was administered"
      },
      {
        "code" : "tlmdwalt4wa-62.99",
        "display" : "The latest malaria dose was administered less than 4 weeks ago"
      },
      {
        "code" : "tlmdwamt4wa-62.106",
        "display" : "The latest malaria dose was administered more than 4 weeks ago"
      },
      {
        "code" : "tmpsdwa-50.116",
        "display" : "Two malaria primary series doses were administered"
      },
      {
        "code" : "tmpsdwa-52.116",
        "display" : "Three malaria primary series doses were administered"
      },
      {
        "code" : "fmpsdwa-51.116",
        "display" : "Four malaria primary series doses were administered"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
      "concept" : [{
        "code" : "cindfmv-41.52",
        "display" : "Client is not due for malaria vaccination"
      },
      {
        "code" : "cidfmv-37.48",
        "display" : "Client is due for malaria vaccination"
      },
      {
        "code" : "misic-41.53",
        "display" : "Malaria immunization schedule is complete"
      },
      {
        "code" : "cindfmv-41.48",
        "display" : "Client is not due for malaria vaccination"
      },
      {
        "code" : "cidfmv-37.44",
        "display" : "Client is due for malaria vaccination"
      },
      {
        "code" : "misic-41.49",
        "display" : "Malaria immunization schedule is complete"
      }]
    }]
  }
}

```
