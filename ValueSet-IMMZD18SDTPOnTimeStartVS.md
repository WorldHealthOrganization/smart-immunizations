# IMMZD18SDTPOnTimeStart ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SDTPOnTimeStart ValueSet for Decision Table**

## ValueSet: IMMZD18SDTPOnTimeStart ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SDTPOnTimeStartVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD18SDTPOnTimeStartVS |

 
ValueSet IMMZD18SDTPOnTimeStart for IMMZ.D18.S.DTP.On-time start schedule. Business rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Diphtheria–tetanus–pertussis (DTP) vaccination schedule, on-time start (at ≤ 12 months of age) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 11 concepts.

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
  "id" : "IMMZD18SDTPOnTimeStartVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SDTPOnTimeStartVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SDTPOnTimeStartVS",
  "title" : "IMMZD18SDTPOnTimeStart ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD18SDTPOnTimeStart for IMMZ.D18.S.DTP.On-time start schedule.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Diphtheria–tetanus–pertussis (DTP) vaccination schedule, on-time start (at ≤ 12 months of age)",
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
            "code" : "First DTP dose from the primary series was administered-123",
            "display" : "First DTP dose from the primary series was administered"
          },
          {
            "code" : "Second DTP dose from the primary series was administered-123",
            "display" : "Second DTP dose from the primary series was administered"
          },
          {
            "code" : "Second DTP dose from the primary series was administered-124",
            "display" : "Second DTP dose from the primary series was administered"
          },
          {
            "code" : "Third DTP dose from the primary series was administered. The primary DTP series has been completed-224",
            "display" : "Third DTP dose from the primary series was administered. The primary DTP series has been completed"
          },
          {
            "code" : "The primary DTP series has been completed-100",
            "display" : "The primary DTP series has been completed"
          },
          {
            "code" : "First tetanus and diphtheria booster dose was administered-140",
            "display" : "First tetanus and diphtheria booster dose was administered"
          },
          {
            "code" : "Second tetanus and diphtheria booster dose was administered-140",
            "display" : "Second tetanus and diphtheria booster dose was administered"
          },
          {
            "code" : "Third tetanus and diphtheria booster dose was administered. Tetanus and diphtheria immunization schedule has been completed-260",
            "display" : "Third tetanus and diphtheria booster dose was administered. Tetanus and diphtheria immunization schedule has been completed"
          },
          {
            "code" : "The primary DTP series has been completed and client's age is between 1 and 6 years-154",
            "display" : "The primary DTP series has been completed and client's age is between 1 and 6 years"
          },
          {
            "code" : "Pertussis-containing booster dose was administered. Pertussis immunization schedule has been completed-234",
            "display" : "Pertussis-containing booster dose was administered. Pertussis immunization schedule has been completed"
          }
        ]
      }
    ]
  }
}

```
