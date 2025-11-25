# IMMZD2DTDTPPregnancy ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTDTPPregnancy ValueSet for Decision Table**

## ValueSet: IMMZD2DTDTPPregnancy ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTDTPPregnancyVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTDTPPregnancyVS |

 
ValueSet IMMZD2DTDTPPregnancy for IMMZ.D2.DT.DTP.Pregnancy. Business rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Determine whether DTP-containing vaccines are needed for pregnant women 

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
  "id" : "IMMZD2DTDTPPregnancyVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTDTPPregnancyVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTDTPPregnancyVS",
  "title" : "IMMZD2DTDTPPregnancy ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTDTPPregnancy for IMMZ.D2.DT.DTP.Pregnancy.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Determine whether DTP-containing vaccines are needed for pregnant women",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "No DTP primary series doses were administered-124",
            "display" : "No DTP primary series doses were administered"
          },
          {
            "code" : "Client is currently pregnant-27",
            "display" : "Client is currently pregnant"
          },
          {
            "code" : "Client should follow 'delayed or interrupted series' decision logic-0",
            "display" : "Client should follow 'delayed or interrupted series' decision logic"
          },
          {
            "code" : "Three DTP primary series doses were administered-124",
            "display" : "Three DTP primary series doses were administered"
          },
          {
            "code" : "No tetanus and diphtheria booster dose was administered-140",
            "display" : "No tetanus and diphtheria booster dose was administered"
          },
          {
            "code" : "Client should follow 'pregnancy starting with 3 doses' decision logic-0",
            "display" : "Client should follow 'pregnancy starting with 3 doses' decision logic"
          },
          {
            "code" : "One tetanus and diphtheria booster dose was administered-140",
            "display" : "One tetanus and diphtheria booster dose was administered"
          },
          {
            "code" : "Client should follow 'pregnancy starting with 4 doses' decision logic-0",
            "display" : "Client should follow 'pregnancy starting with 4 doses' decision logic"
          },
          {
            "code" : "Two tetanus and diphtheria booster doses were administered-140",
            "display" : "Two tetanus and diphtheria booster doses were administered"
          },
          {
            "code" : "Tetanus and diphtheria immunization schedule is complete-119",
            "display" : "Tetanus and diphtheria immunization schedule is complete"
          },
          {
            "code" : "Three tetanus and diphtheria booster doses were administered-140",
            "display" : "Three tetanus and diphtheria booster doses were administered"
          }
        ]
      }
    ]
  }
}

```
