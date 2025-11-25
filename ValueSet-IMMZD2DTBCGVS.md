# IMMZD2DTBCG ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTBCG ValueSet for Decision Table**

## ValueSet: IMMZD2DTBCG ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTBCGVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTBCGVS |

 
ValueSet IMMZD2DTBCG for IMMZ.D2.DT.BCG. Business rule: Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: IMMZ.D2.DT.BCG 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 24 concepts.

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
  "id" : "IMMZD2DTBCGVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTBCGVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTBCGVS",
  "title" : "IMMZD2DTBCG ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTBCG for IMMZ.D2.DT.BCG.\nBusiness rule: Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: IMMZ.D2.DT.BCG",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "No BCG primary series dose was administered-112",
            "display" : "No BCG primary series dose was administered"
          },
          {
            "code" : "Client's age is less than or equal to 28 days-40",
            "display" : "Client's age is less than or equal to 28 days"
          },
          {
            "code" : "Client's HIV status is negative or unknown-29",
            "display" : "Client's HIV status is negative or unknown"
          },
          {
            "code" : "No live vaccine was administered-90",
            "display" : "No live vaccine was administered"
          },
          {
            "code" : "Client is due for BCG vaccination-44",
            "display" : "Client is due for BCG vaccination"
          },
          {
            "code" : "Live vaccine was administered in the last four weeks-92",
            "display" : "Live vaccine was administered in the last four weeks"
          },
          {
            "code" : "Client is not due for BCG vaccination-48",
            "display" : "Client is not due for BCG vaccination"
          },
          {
            "code" : "Client's HIV status is positive-29",
            "display" : "Client's HIV status is positive"
          },
          {
            "code" : "Client is currently receiving antiretroviral therapy-25",
            "display" : "Client is currently receiving antiretroviral therapy"
          },
          {
            "code" : "Client is immunologically stable-31",
            "display" : "Client is immunologically stable"
          },
          {
            "code" : "Client is not immunologically stable-32",
            "display" : "Client is not immunologically stable"
          },
          {
            "code" : "Client is currently not receiving antiretroviral therapy-26",
            "display" : "Client is currently not receiving antiretroviral therapy"
          },
          {
            "code" : "Client's age is between 28 days and 5 years-50",
            "display" : "Client's age is between 28 days and 5 years"
          },
          {
            "code" : "Client's TB infection test result is negative-39",
            "display" : "Client's TB infection test result is negative"
          },
          {
            "code" : "No live vaccine was administered in the last four weeks-92",
            "display" : "No live vaccine was administered in the last four weeks"
          },
          {
            "code" : "Client's TB infection test result is unknown (test not done or no result yet)-34",
            "display" : "Client's TB infection test result is unknown (test not done or no result yet)"
          },
          {
            "code" : "Clinical judgement is required. Create clinical note.-66",
            "display" : "Clinical judgement is required. Create clinical note."
          },
          {
            "code" : "Client's TB infection test result is positive-39",
            "display" : "Client's TB infection test result is positive"
          },
          {
            "code" : "Client is not clinically well-25",
            "display" : "Client is not clinically well"
          },
          {
            "code" : "Client is clinically well-24",
            "display" : "Client is clinically well"
          },
          {
            "code" : "Client's age is more than 5 years-40",
            "display" : "Client's age is more than 5 years"
          },
          {
            "code" : "Clinical judgement is required. Create clinical note.-67",
            "display" : "Clinical judgement is required. Create clinical note."
          },
          {
            "code" : "One BCG primary series dose was administered-112",
            "display" : "One BCG primary series dose was administered"
          },
          {
            "code" : "BCG immunization schedule is complete-140",
            "display" : "BCG immunization schedule is complete"
          }
        ]
      }
    ]
  }
}

```
