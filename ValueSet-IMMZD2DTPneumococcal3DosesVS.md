# IMMZD2DTPneumococcal3Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTPneumococcal3Doses ValueSet for Decision Table**

## ValueSet: IMMZD2DTPneumococcal3Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTPneumococcal3DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTPneumococcal3DosesVS |

 
ValueSet IMMZD2DTPneumococcal3Doses for IMMZ.D2.DT.Pneumococcal.3 doses. Business rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: 3 primary doses (3p+0) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 40 concepts.

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
  "id" : "IMMZD2DTPneumococcal3DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTPneumococcal3DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPneumococcal3DosesVS",
  "title" : "IMMZD2DTPneumococcal3Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTPneumococcal3Doses for IMMZ.D2.DT.Pneumococcal.3 doses.\nBusiness rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses (3p+0)",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "The client's age is less than 6 weeks-40",
            "display" : "The client's age is less than 6 weeks"
          },
          {
            "code" : "Client is not due for pneumococcal vaccination-48",
            "display" : "Client is not due for pneumococcal vaccination"
          },
          {
            "code" : "No pneumococcal primary series doses were administered-121",
            "display" : "No pneumococcal primary series doses were administered"
          },
          {
            "code" : "The client's age is between 6 weeks and 5 years-50",
            "display" : "The client's age is between 6 weeks and 5 years"
          },
          {
            "code" : "Client is due for pneumococcal vaccination-44",
            "display" : "Client is due for pneumococcal vaccination"
          },
          {
            "code" : "One pneumococcal primary series dose was administered-121",
            "display" : "One pneumococcal primary series dose was administered"
          },
          {
            "code" : "The client's age is less than or equal to five years-40",
            "display" : "The client's age is less than or equal to five years"
          },
          {
            "code" : "The first pneumococcal dose was administered within 12 months post birth-109",
            "display" : "The first pneumococcal dose was administered within 12 months post birth"
          },
          {
            "code" : "The latest pneumococcal dose was administered less than 4 weeks ago-104",
            "display" : "The latest pneumococcal dose was administered less than 4 weeks ago"
          },
          {
            "code" : "The latest pneumococcal dose was administered more than 4 weeks ago-104",
            "display" : "The latest pneumococcal dose was administered more than 4 weeks ago"
          },
          {
            "code" : "The first pneumococcal dose was administered at 12–24 months post birth-121",
            "display" : "The first pneumococcal dose was administered at 12–24 months post birth"
          },
          {
            "code" : "Client is not at high risk for pneumococcal infection-49",
            "display" : "Client is not at high risk for pneumococcal infection"
          },
          {
            "code" : "The latest pneumococcal dose was administered less than 8 weeks ago-104",
            "display" : "The latest pneumococcal dose was administered less than 8 weeks ago"
          },
          {
            "code" : "Client is at high risk for pneumococcal infection-48",
            "display" : "Client is at high risk for pneumococcal infection"
          },
          {
            "code" : "The latest pneumococcal dose was administered more than 8 weeks ago-104",
            "display" : "The latest pneumococcal dose was administered more than 8 weeks ago"
          },
          {
            "code" : "The first pneumococcal dose was administered after 24 months post birth-109",
            "display" : "The first pneumococcal dose was administered after 24 months post birth"
          },
          {
            "code" : "Pneumococcal immunization schedule is complete-148",
            "display" : "Pneumococcal immunization schedule is complete"
          },
          {
            "code" : "Two pneumococcal primary series doses were administered-121",
            "display" : "Two pneumococcal primary series doses were administered"
          },
          {
            "code" : "The first pneumococcal dose was administered within 12 months post birth-131",
            "display" : "The first pneumococcal dose was administered within 12 months post birth"
          },
          {
            "code" : "The latest pneumococcal dose was administered less than 4 weeks ago-111",
            "display" : "The latest pneumococcal dose was administered less than 4 weeks ago"
          },
          {
            "code" : "The latest pneumococcal dose was administered more than 4 weeks ago-111",
            "display" : "The latest pneumococcal dose was administered more than 4 weeks ago"
          },
          {
            "code" : "The first pneumococcal dose was administered after 12 months post birth-131",
            "display" : "The first pneumococcal dose was administered after 12 months post birth"
          },
          {
            "code" : "Three pneumococcal primary series doses were administered-121",
            "display" : "Three pneumococcal primary series doses were administered"
          },
          {
            "code" : "No pneumococcal booster dose was administered-119",
            "display" : "No pneumococcal booster dose was administered"
          },
          {
            "code" : "The client's age is less than 24 months-42",
            "display" : "The client's age is less than 24 months"
          },
          {
            "code" : "The latest pneumococcal dose was administered within 12 months post birth-116",
            "display" : "The latest pneumococcal dose was administered within 12 months post birth"
          },
          {
            "code" : "The latest pneumococcal dose was administered less than 8 weeks ago-111",
            "display" : "The latest pneumococcal dose was administered less than 8 weeks ago"
          },
          {
            "code" : "Client's HIV status is positive-29",
            "display" : "Client's HIV status is positive"
          },
          {
            "code" : "Client is not due for pneumococcal booster dose-48",
            "display" : "Client is not due for pneumococcal booster dose"
          },
          {
            "code" : "Client had preterm birth-22",
            "display" : "Client had preterm birth"
          },
          {
            "code" : "The latest pneumococcal dose was administered more than 8 weeks ago-111",
            "display" : "The latest pneumococcal dose was administered more than 8 weeks ago"
          },
          {
            "code" : "Client is due for pneumococcal booster dose-44",
            "display" : "Client is due for pneumococcal booster dose"
          },
          {
            "code" : "The latest pneumococcal dose was administered after 12 months post birth-116",
            "display" : "The latest pneumococcal dose was administered after 12 months post birth"
          },
          {
            "code" : "Client's HIV status is negative or unknown-29",
            "display" : "Client's HIV status is negative or unknown"
          },
          {
            "code" : "Client did not have preterm birth-22",
            "display" : "Client did not have preterm birth"
          },
          {
            "code" : "The client's age is more than or equal to 24 months-42",
            "display" : "The client's age is more than or equal to 24 months"
          },
          {
            "code" : "One pneumococcal booster dose was administered-119",
            "display" : "One pneumococcal booster dose was administered"
          },
          {
            "code" : "Pneumococcal immunization schedule is complete-49",
            "display" : "Pneumococcal immunization schedule is complete"
          },
          {
            "code" : "The client's age is more than 5 years-40",
            "display" : "The client's age is more than 5 years"
          },
          {
            "code" : "Clinical judgement is required. Create a clinical note.-66",
            "display" : "Clinical judgement is required. Create a clinical note."
          }
        ]
      }
    ]
  }
}

```
