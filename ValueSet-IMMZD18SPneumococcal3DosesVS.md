# IMMZD18SPneumococcal3Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SPneumococcal3Doses ValueSet for Decision Table**

## ValueSet: IMMZD18SPneumococcal3Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SPneumococcal3DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD18SPneumococcal3DosesVS |

 
ValueSet IMMZD18SPneumococcal3Doses for IMMZ.D18.S.Pneumococcal.3 doses schedule. Business rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: 3 primary doses (3p+0) schedule 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 9 concepts.

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
  "id" : "IMMZD18SPneumococcal3DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SPneumococcal3DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SPneumococcal3DosesVS",
  "title" : "IMMZD18SPneumococcal3Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD18SPneumococcal3Doses for IMMZ.D18.S.Pneumococcal.3 doses schedule.\nBusiness rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses (3p+0) schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Child's birth-0",
            "display" : "Child's birth"
          },
          {
            "code" : "First pneumococcal dose from the primary series was administered-121",
            "display" : "First pneumococcal dose from the primary series was administered"
          },
          {
            "code" : "First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age, within 24 months post birth-280",
            "display" : "First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age, within 24 months post birth"
          },
          {
            "code" : "Second pneumococcal dose from the primary series was administered-121",
            "display" : "Second pneumococcal dose from the primary series was administered"
          },
          {
            "code" : "First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. Pneumococcal dose was not administered within 24 months post birth. Client is at high risk for pneumococcal infection.-333",
            "display" : "First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. Pneumococcal dose was not administered within 24 months post birth. Client is at high risk for pneumococcal infection."
          },
          {
            "code" : "Second pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. First pneumococcal dose was administered within 12 months post birth.-302",
            "display" : "Second pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. First pneumococcal dose was administered within 12 months post birth."
          },
          {
            "code" : "Third pneumococcal dose from the primary series was administered. The primary series has been completed.-98",
            "display" : "Third pneumococcal dose from the primary series was administered. The primary series has been completed."
          },
          {
            "code" : "Third pneumococcal dose from the primary series was administered to client, who is more than 12 months of age. The latest pneumococcal dose was administered within 12 months post birth. Client is either HIV positive or had preterm birth.-351",
            "display" : "Third pneumococcal dose from the primary series was administered to client, who is more than 12 months of age. The latest pneumococcal dose was administered within 12 months post birth. Client is either HIV positive or had preterm birth."
          },
          {
            "code" : "One pneumococcal booster dose was administered.-119",
            "display" : "One pneumococcal booster dose was administered."
          }
        ]
      }
    ]
  }
}

```
