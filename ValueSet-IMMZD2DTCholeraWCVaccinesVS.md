# IMMZD2DTCholeraWCVaccines ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTCholeraWCVaccines ValueSet for Decision Table**

## ValueSet: IMMZD2DTCholeraWCVaccines ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTCholeraWCVaccinesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTCholeraWCVaccinesVS |

 
ValueSet IMMZD2DTCholeraWCVaccines for IMMZ.D2.DT.Cholera.WC vaccines. Business rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Whole-cell (WC) vaccines schedule 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 22 concepts.

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
  "id" : "IMMZD2DTCholeraWCVaccinesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTCholeraWCVaccinesVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTCholeraWCVaccinesVS",
  "title" : "IMMZD2DTCholeraWCVaccines ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTCholeraWCVaccines for IMMZ.D2.DT.Cholera.WC vaccines.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole-cell (WC) vaccines schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 1 year-39",
            "display" : "Client's age is less than 1 year"
          },
          {
            "code" : "Client is not due for cholera vaccination-48",
            "display" : "Client is not due for cholera vaccination"
          },
          {
            "code" : "Client's age is more than or equal to 1 year-39",
            "display" : "Client's age is more than or equal to 1 year"
          },
          {
            "code" : "No cholera primary series dose was administered-116",
            "display" : "No cholera primary series dose was administered"
          },
          {
            "code" : "Client is due for cholera vaccination-44",
            "display" : "Client is due for cholera vaccination"
          },
          {
            "code" : "One cholera primary series dose was administered-116",
            "display" : "One cholera primary series dose was administered"
          },
          {
            "code" : "The latest cholera dose was administered less than 14 days ago-106",
            "display" : "The latest cholera dose was administered less than 14 days ago"
          },
          {
            "code" : "The latest cholera dose was administered more than 14 days ago-106",
            "display" : "The latest cholera dose was administered more than 14 days ago"
          },
          {
            "code" : "Two cholera primary series doses were administered-116",
            "display" : "Two cholera primary series doses were administered"
          },
          {
            "code" : "No cholera booster series dose was administered-114",
            "display" : "No cholera booster series dose was administered"
          },
          {
            "code" : "The latest cholera dose was administered less than 3 years ago-106",
            "display" : "The latest cholera dose was administered less than 3 years ago"
          },
          {
            "code" : "Primary series is complete. Client is not due for cholera booster dose-142",
            "display" : "Primary series is complete. Client is not due for cholera booster dose"
          },
          {
            "code" : "The latest cholera dose was administered more than 3 years ago-106",
            "display" : "The latest cholera dose was administered more than 3 years ago"
          },
          {
            "code" : "Primary series is complete. Client is due for cholera booster dose-138",
            "display" : "Primary series is complete. Client is due for cholera booster dose"
          },
          {
            "code" : "At least one booster series dose was administered-115",
            "display" : "At least one booster series dose was administered"
          },
          {
            "code" : "Dose number of the latest dose is one-68",
            "display" : "Dose number of the latest dose is one"
          },
          {
            "code" : "Client is not due for cholera booster dose-48",
            "display" : "Client is not due for cholera booster dose"
          },
          {
            "code" : "The latest cholera dose was administered more than 14 days ago and less than 3 years ago-118",
            "display" : "The latest cholera dose was administered more than 14 days ago and less than 3 years ago"
          },
          {
            "code" : "Client is due for cholera booster dose-44",
            "display" : "Client is due for cholera booster dose"
          },
          {
            "code" : "Dose number of the latest dose is two-68",
            "display" : "Dose number of the latest dose is two"
          },
          {
            "code" : "Booster series is complete-81",
            "display" : "Booster series is complete"
          },
          {
            "code" : "Client is due for cholera vaccination-155",
            "display" : "Client is due for cholera vaccination"
          }
        ]
      }
    ]
  }
}

```
