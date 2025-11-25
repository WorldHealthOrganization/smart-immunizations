# IMMZD2DTTBEFSMEImmun ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTTBEFSMEImmun ValueSet for Decision Table**

## ValueSet: IMMZD2DTTBEFSMEImmun ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTTBEFSMEImmunVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTTBEFSMEImmunVS |

 
ValueSet IMMZD2DTTBEFSMEImmun for IMMZ.D2.DT.TBE.FSME-Immun. Business rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: FSME-Immun schedule (In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 19 concepts.

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
  "id" : "IMMZD2DTTBEFSMEImmunVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTTBEFSMEImmunVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTTBEFSMEImmunVS",
  "title" : "IMMZD2DTTBEFSMEImmun ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTTBEFSMEImmun for IMMZ.D2.DT.TBE.FSME-Immun.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
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
            "code" : "Client is not due for TBE vaccination-48",
            "display" : "Client is not due for TBE vaccination"
          },
          {
            "code" : "No TBE primary series doses were administered-112",
            "display" : "No TBE primary series doses were administered"
          },
          {
            "code" : "Client's age is more than or equal to 1 year-39",
            "display" : "Client's age is more than or equal to 1 year"
          },
          {
            "code" : "Client is due for TBE vaccination-44",
            "display" : "Client is due for TBE vaccination"
          },
          {
            "code" : "One TBE primary series dose was administered-112",
            "display" : "One TBE primary series dose was administered"
          },
          {
            "code" : "The latest TBE dose was administered less than 1 month ago-95",
            "display" : "The latest TBE dose was administered less than 1 month ago"
          },
          {
            "code" : "The latest TBE dose was administered more than 1 month ago-95",
            "display" : "The latest TBE dose was administered more than 1 month ago"
          },
          {
            "code" : "Two TBE primary series doses were administered-112",
            "display" : "Two TBE primary series doses were administered"
          },
          {
            "code" : "The latest TBE dose was administered less than 5 months ago-103",
            "display" : "The latest TBE dose was administered less than 5 months ago"
          },
          {
            "code" : "The latest TBE dose was administered more than 5 months ago-103",
            "display" : "The latest TBE dose was administered more than 5 months ago"
          },
          {
            "code" : "Three TBE primary series doses were administered-112",
            "display" : "Three TBE primary series doses were administered"
          },
          {
            "code" : "No TBE booster dose was administered-110",
            "display" : "No TBE booster dose was administered"
          },
          {
            "code" : "The latest TBE dose was administered less than 3 years ago-103",
            "display" : "The latest TBE dose was administered less than 3 years ago"
          },
          {
            "code" : "Primary series is complete. Client is not due for TBE booster dose-138",
            "display" : "Primary series is complete. Client is not due for TBE booster dose"
          },
          {
            "code" : "The latest TBE dose was administered more than 3 years ago-102",
            "display" : "The latest TBE dose was administered more than 3 years ago"
          },
          {
            "code" : "Primary series is complete. Client is due for TBE booster dose-134",
            "display" : "Primary series is complete. Client is due for TBE booster dose"
          },
          {
            "code" : "At least one booster dose was administered-110",
            "display" : "At least one booster dose was administered"
          },
          {
            "code" : "Clinical judgement is required.-89",
            "display" : "Clinical judgement is required."
          }
        ]
      }
    ]
  }
}

```
