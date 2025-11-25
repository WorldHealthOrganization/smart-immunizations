# IMMZD18SDTPPregnancyStartingWith4Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SDTPPregnancyStartingWith4Doses ValueSet for Decision Table**

## ValueSet: IMMZD18SDTPPregnancyStartingWith4Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SDTPPregnancyStartingWith4DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD18SDTPPregnancyStartingWith4DosesVS |

 
ValueSet IMMZD18SDTPPregnancyStartingWith4Doses for IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule. Business rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood diphtheria–tetanus–pertussis (DTP) doses 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 3 concepts.

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
  "id" : "IMMZD18SDTPPregnancyStartingWith4DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SDTPPregnancyStartingWith4DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SDTPPregnancyStartingWith4DosesVS",
  "title" : "IMMZD18SDTPPregnancyStartingWith4Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD18SDTPPregnancyStartingWith4Doses for IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood diphtheria–tetanus–pertussis (DTP) doses",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "The primary DTP series has been completed, first tetanus and diphtheria booster dose was administered and client is currently pregnant-276",
            "display" : "The primary DTP series has been completed, first tetanus and diphtheria booster dose was administered and client is currently pregnant"
          },
          {
            "code" : "Second tetanus and diphtheria booster dose was administered-140",
            "display" : "Second tetanus and diphtheria booster dose was administered"
          },
          {
            "code" : "Third tetanus and diphtheria-containing booster dose was administered. Tetanus and diphtheria immunization schedule has been completed.-260",
            "display" : "Third tetanus and diphtheria-containing booster dose was administered. Tetanus and diphtheria immunization schedule has been completed."
          }
        ]
      }
    ]
  }
}

```
