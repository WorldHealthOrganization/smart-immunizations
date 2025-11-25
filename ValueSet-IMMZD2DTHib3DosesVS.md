# IMMZD2DTHib3Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTHib3Doses ValueSet for Decision Table**

## ValueSet: IMMZD2DTHib3Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTHib3DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTHib3DosesVS |

 
ValueSet IMMZD2DTHib3Doses for IMMZ.D2.DT.Hib.3 doses. Business rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: 3 primary doses without a booster dose (3p) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 16 concepts.

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
  "id" : "IMMZD2DTHib3DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTHib3DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHib3DosesVS",
  "title" : "IMMZD2DTHib3Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTHib3Doses for IMMZ.D2.DT.Hib.3 doses.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses without a booster dose (3p)",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 6 weeks-40",
            "display" : "Client's age is less than 6 weeks"
          },
          {
            "code" : "Client is not due for Hib vaccination-48",
            "display" : "Client is not due for Hib vaccination"
          },
          {
            "code" : "No Hib primary series doses were administered-123",
            "display" : "No Hib primary series doses were administered"
          },
          {
            "code" : "Client's age is between 6 weeks and 5 years-50",
            "display" : "Client's age is between 6 weeks and 5 years"
          },
          {
            "code" : "Client is due for Hib vaccination-44",
            "display" : "Client is due for Hib vaccination"
          },
          {
            "code" : "One Hib primary series dose was administered-122",
            "display" : "One Hib primary series dose was administered"
          },
          {
            "code" : "Client's age is at least 6 weeks and not more than 5 years-50",
            "display" : "Client's age is at least 6 weeks and not more than 5 years"
          },
          {
            "code" : "Client's age was less than 1 year when first Hib dose was administered-129",
            "display" : "Client's age was less than 1 year when first Hib dose was administered"
          },
          {
            "code" : "The latest Hib dose was administered less than 4 weeks ago-113",
            "display" : "The latest Hib dose was administered less than 4 weeks ago"
          },
          {
            "code" : "The latest Hib dose was administered more than 4 weeks ago-113",
            "display" : "The latest Hib dose was administered more than 4 weeks ago"
          },
          {
            "code" : "Client's age was more than 1 year when first Hib dose was administered-129",
            "display" : "Client's age was more than 1 year when first Hib dose was administered"
          },
          {
            "code" : "Hib immunization schedule is complete-150",
            "display" : "Hib immunization schedule is complete"
          },
          {
            "code" : "Two Hib primary series doses were administered-124",
            "display" : "Two Hib primary series doses were administered"
          },
          {
            "code" : "Client's age is between 6 weeks and not more than 5 years-50",
            "display" : "Client's age is between 6 weeks and not more than 5 years"
          },
          {
            "code" : "Three Hib primary series doses were administered-122",
            "display" : "Three Hib primary series doses were administered"
          },
          {
            "code" : "Client's age is more than 5 years-40",
            "display" : "Client's age is more than 5 years"
          }
        ]
      }
    ]
  }
}

```
