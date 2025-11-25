# IMMZD18SMalaria ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMalaria ValueSet for Decision Table**

## ValueSet: IMMZD18SMalaria ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SMalariaVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD18SMalariaVS |

 
ValueSet IMMZD18SMalaria for IMMZ.D18.S.Malaria schedule. Business rule: Determine if the client is due for a malaria vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: 4-dose schedule 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 5 concepts.

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
  "id" : "IMMZD18SMalariaVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SMalariaVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SMalariaVS",
  "title" : "IMMZD18SMalaria ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD18SMalaria for IMMZ.D18.S.Malaria schedule.\nBusiness rule: Determine if the client is due for a malaria vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 4-dose schedule",
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
            "code" : "First malaria dose from the primary series was administered-116",
            "display" : "First malaria dose from the primary series was administered"
          },
          {
            "code" : "Second malaria dose from the primary series was administered-116",
            "display" : "Second malaria dose from the primary series was administered"
          },
          {
            "code" : "Third malaria dose from the primary series was administered-116",
            "display" : "Third malaria dose from the primary series was administered"
          },
          {
            "code" : "Fourth malaria dose from the primary series was administered. The primary series has been completed-94",
            "display" : "Fourth malaria dose from the primary series was administered. The primary series has been completed"
          }
        ]
      }
    ]
  }
}

```
