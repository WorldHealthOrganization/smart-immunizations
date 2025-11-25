# IMMZD2DTTyphoidTy21a ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTTyphoidTy21a ValueSet for Decision Table**

## ValueSet: IMMZD2DTTyphoidTy21a ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTTyphoidTy21aVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTTyphoidTy21aVS |

 
ValueSet IMMZD2DTTyphoidTy21a for IMMZ.D2.DT.Typhoid.Ty21a. Business rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Live attenuated Ty21a vaccine schedule 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 12 concepts.

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
  "id" : "IMMZD2DTTyphoidTy21aVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTTyphoidTy21aVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTTyphoidTy21aVS",
  "title" : "IMMZD2DTTyphoidTy21a ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTTyphoidTy21a for IMMZ.D2.DT.Typhoid.Ty21a.\nBusiness rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live attenuated Ty21a vaccine schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 6 years-40",
            "display" : "Client's age is less than 6 years"
          },
          {
            "code" : "Client is not due for Typhoid vaccination-48",
            "display" : "Client is not due for Typhoid vaccination"
          },
          {
            "code" : "Client's age is more than or equal to 6 years-40",
            "display" : "Client's age is more than or equal to 6 years"
          },
          {
            "code" : "Primary series is not complete-93",
            "display" : "Primary series is not complete"
          },
          {
            "code" : "No live vaccine, other than typhoid, was administered in the past 4 weeks-132",
            "display" : "No live vaccine, other than typhoid, was administered in the past 4 weeks"
          },
          {
            "code" : "Client is due for Typhoid vaccination-44",
            "display" : "Client is due for Typhoid vaccination"
          },
          {
            "code" : "Live vaccine, other than typhoid, was administered in the past 4 weeks-132",
            "display" : "Live vaccine, other than typhoid, was administered in the past 4 weeks"
          },
          {
            "code" : "Primary series is complete-93",
            "display" : "Primary series is complete"
          },
          {
            "code" : "The latest typhoid dose was administered less than 3 years ago-106",
            "display" : "The latest typhoid dose was administered less than 3 years ago"
          },
          {
            "code" : "Client is not due for typhoid booster dose-48",
            "display" : "Client is not due for typhoid booster dose"
          },
          {
            "code" : "The latest typhoid dose was administered more than 3 years ago-106",
            "display" : "The latest typhoid dose was administered more than 3 years ago"
          },
          {
            "code" : "Client is due for typhoid booster dose-44",
            "display" : "Client is due for typhoid booster dose"
          }
        ]
      }
    ]
  }
}

```
