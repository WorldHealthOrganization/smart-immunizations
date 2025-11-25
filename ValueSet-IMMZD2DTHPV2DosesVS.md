# IMMZD2DTHPV2Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTHPV2Doses ValueSet for Decision Table**

## ValueSet: IMMZD2DTHPV2Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTHPV2DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTHPV2DosesVS |

 
ValueSet IMMZD2DTHPV2Doses for IMMZ.D2.DT.HPV.2 doses. Business rule: Determine if the client is due for a human papillomavirus (HPV) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: 2-dose schedule 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 20 concepts.

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
  "id" : "IMMZD2DTHPV2DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTHPV2DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHPV2DosesVS",
  "title" : "IMMZD2DTHPV2Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTHPV2Doses for IMMZ.D2.DT.HPV.2 doses.\nBusiness rule: Determine if the client is due for a human papillomavirus (HPV) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2-dose schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 9 years-40",
            "display" : "Client's age is less than 9 years"
          },
          {
            "code" : "Client is not due for HPV vaccination-48",
            "display" : "Client is not due for HPV vaccination"
          },
          {
            "code" : "No HPV primary series doses were administered-112",
            "display" : "No HPV primary series doses were administered"
          },
          {
            "code" : "Client's age is between 9 and 14 years-51",
            "display" : "Client's age is between 9 and 14 years"
          },
          {
            "code" : "Client's biological sex is female-16",
            "display" : "Client's biological sex is female"
          },
          {
            "code" : "Client is due for HPV vaccination-44",
            "display" : "Client is due for HPV vaccination"
          },
          {
            "code" : "Client's age more than or equal to 15 years-41",
            "display" : "Client's age more than or equal to 15 years"
          },
          {
            "code" : "Clinical judgement is required. Create a clinical note.-66",
            "display" : "Clinical judgement is required. Create a clinical note."
          },
          {
            "code" : "Client's biological sex is not female-16",
            "display" : "Client's biological sex is not female"
          },
          {
            "code" : "One HPV primary series dose was administered-112",
            "display" : "One HPV primary series dose was administered"
          },
          {
            "code" : "The latest HPV dose was administered less than 6 months ago-103",
            "display" : "The latest HPV dose was administered less than 6 months ago"
          },
          {
            "code" : "The latest HPV dose was administered more than 6 months ago-103",
            "display" : "The latest HPV dose was administered more than 6 months ago"
          },
          {
            "code" : "Two HPV primary series doses were administered-112",
            "display" : "Two HPV primary series doses were administered"
          },
          {
            "code" : "Client's HIV status is positive-29",
            "display" : "Client's HIV status is positive"
          },
          {
            "code" : "Client is immunocompromised-26",
            "display" : "Client is immunocompromised"
          },
          {
            "code" : "The latest HPV dose was administered more than 6 months ago-102",
            "display" : "The latest HPV dose was administered more than 6 months ago"
          },
          {
            "code" : "Client is not immunocompromised-26",
            "display" : "Client is not immunocompromised"
          },
          {
            "code" : "Client's HIV status is negative or unknown-29",
            "display" : "Client's HIV status is negative or unknown"
          },
          {
            "code" : "HPV immunization schedule is complete-49",
            "display" : "HPV immunization schedule is complete"
          },
          {
            "code" : "Three HPV primary series doses were administered-112",
            "display" : "Three HPV primary series doses were administered"
          }
        ]
      }
    ]
  }
}

```
