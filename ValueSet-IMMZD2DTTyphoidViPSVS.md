# IMMZD2DTTyphoidViPS ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTTyphoidViPS ValueSet for Decision Table**

## ValueSet: IMMZD2DTTyphoidViPS ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTTyphoidViPSVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTTyphoidViPSVS |

 
ValueSet IMMZD2DTTyphoidViPS for IMMZ.D2.DT.Typhoid.ViPS. Business rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Unconjugated Vi polysaccharide (ViPS) schedule 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 10 concepts.

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



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZD2DTTyphoidViPSVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTTyphoidViPSVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTTyphoidViPSVS",
  "title" : "IMMZD2DTTyphoidViPS ValueSet for Decision Table",
  "status" : "active",
  "date" : "2025-11-25T19:41:02+00:00",
  "publisher" : "WHO",
  "contact" : [
    {
      "name" : "WHO",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://who.int"
        }
      ]
    }
  ],
  "description" : "ValueSet IMMZD2DTTyphoidViPS for IMMZ.D2.DT.Typhoid.ViPS.\nBusiness rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Unconjugated Vi polysaccharide (ViPS) schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 2 years-40",
            "display" : "Client's age is less than 2 years"
          },
          {
            "code" : "Client is not due for Typhoid vaccination-48",
            "display" : "Client is not due for Typhoid vaccination"
          },
          {
            "code" : "No typhoid primary series doses were administered-116",
            "display" : "No typhoid primary series doses were administered"
          },
          {
            "code" : "Client's age is more than or equal to 2 years-40",
            "display" : "Client's age is more than or equal to 2 years"
          },
          {
            "code" : "Client is due for Typhoid vaccination-44",
            "display" : "Client is due for Typhoid vaccination"
          },
          {
            "code" : "One typhoid primary series dose was administered-116",
            "display" : "One typhoid primary series dose was administered"
          },
          {
            "code" : "The latest typhoid dose was administered less than 3 years ago-106",
            "display" : "The latest typhoid dose was administered less than 3 years ago"
          },
          {
            "code" : "Primary series is complete. Client is not due for typhoid booster dose-142",
            "display" : "Primary series is complete. Client is not due for typhoid booster dose"
          },
          {
            "code" : "The latest typhoid dose was administered more than 3 years ago-106",
            "display" : "The latest typhoid dose was administered more than 3 years ago"
          },
          {
            "code" : "Primary series is complete. Client is due for typhoid booster dose-138",
            "display" : "Primary series is complete. Client is due for typhoid booster dose"
          }
        ]
      }
    ]
  }
}

```
