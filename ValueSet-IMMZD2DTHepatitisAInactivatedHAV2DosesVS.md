# IMMZD2DTHepatitisAInactivatedHAV2Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTHepatitisAInactivatedHAV2Doses ValueSet for Decision Table**

## ValueSet: IMMZD2DTHepatitisAInactivatedHAV2Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTHepatitisAInactivatedHAV2DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTHepatitisAInactivatedHAV2DosesVS |

 
ValueSet IMMZD2DTHepatitisAInactivatedHAV2Doses for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses. Business rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Inactivated hepatitis A virus (HAV), 2-dose schedule 

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
  "id" : "IMMZD2DTHepatitisAInactivatedHAV2DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTHepatitisAInactivatedHAV2DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHepatitisAInactivatedHAV2DosesVS",
  "title" : "IMMZD2DTHepatitisAInactivatedHAV2Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTHepatitisAInactivatedHAV2Doses for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated hepatitis A virus (HAV), 2-dose schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 12 months-42",
            "display" : "Client's age is less than 12 months"
          },
          {
            "code" : "Client is not due for Hepatitis A vaccination-48",
            "display" : "Client is not due for Hepatitis A vaccination"
          },
          {
            "code" : "No hepatitis A primary series doses were administered-131",
            "display" : "No hepatitis A primary series doses were administered"
          },
          {
            "code" : "Client's age is more than or equal to 12 months-42",
            "display" : "Client's age is more than or equal to 12 months"
          },
          {
            "code" : "Client is due for Hepatitis A vaccination-44",
            "display" : "Client is due for Hepatitis A vaccination"
          },
          {
            "code" : "One hepatitis A primary series dose was administered-131",
            "display" : "One hepatitis A primary series dose was administered"
          },
          {
            "code" : "The latest Hepatitis A dose was administered less than 6 months ago-115",
            "display" : "The latest Hepatitis A dose was administered less than 6 months ago"
          },
          {
            "code" : "The latest Hepatitis A dose was administered more than 6 months ago-115",
            "display" : "The latest Hepatitis A dose was administered more than 6 months ago"
          },
          {
            "code" : "Two hepatitis A primary series doses were administered-131",
            "display" : "Two hepatitis A primary series doses were administered"
          },
          {
            "code" : "Hepatitis A immunization schedule is complete-158",
            "display" : "Hepatitis A immunization schedule is complete"
          }
        ]
      }
    ]
  }
}

```
