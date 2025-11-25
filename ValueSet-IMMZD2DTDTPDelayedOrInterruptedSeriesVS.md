# IMMZD2DTDTPDelayedOrInterruptedSeries ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTDTPDelayedOrInterruptedSeries ValueSet for Decision Table**

## ValueSet: IMMZD2DTDTPDelayedOrInterruptedSeries ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTDTPDelayedOrInterruptedSeriesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTDTPDelayedOrInterruptedSeriesVS |

 
ValueSet IMMZD2DTDTPDelayedOrInterruptedSeries for IMMZ.D2.DT.DTP.Delayed or interrupted series. Business rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 30 concepts.

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
  "id" : "IMMZD2DTDTPDelayedOrInterruptedSeriesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTDTPDelayedOrInterruptedSeriesVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTDTPDelayedOrInterruptedSeriesVS",
  "title" : "IMMZD2DTDTPDelayedOrInterruptedSeries ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTDTPDelayedOrInterruptedSeries for IMMZ.D2.DT.DTP.Delayed or interrupted series.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age",
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
            "code" : "Client's age is more than 1 year-39",
            "display" : "Client's age is more than 1 year"
          },
          {
            "code" : "Client is due for DTP vaccination-95",
            "display" : "Client is due for DTP vaccination"
          },
          {
            "code" : "One DTP primary series dose was administered-124",
            "display" : "One DTP primary series dose was administered"
          },
          {
            "code" : "The latest DTP dose was administered less than 4 weeks ago-113",
            "display" : "The latest DTP dose was administered less than 4 weeks ago"
          },
          {
            "code" : "Client is not due for DTP vaccination-99",
            "display" : "Client is not due for DTP vaccination"
          },
          {
            "code" : "The latest DTP dose was administered more than 4 weeks ago-113",
            "display" : "The latest DTP dose was administered more than 4 weeks ago"
          },
          {
            "code" : "Two DTP primary series doses were administered-124",
            "display" : "Two DTP primary series doses were administered"
          },
          {
            "code" : "The latest DTP dose was administered less than 6 months ago-114",
            "display" : "The latest DTP dose was administered less than 6 months ago"
          },
          {
            "code" : "The latest DTP dose was administered more than 6 months ago-114",
            "display" : "The latest DTP dose was administered more than 6 months ago"
          },
          {
            "code" : "Three DTP primary series doses were administered-123",
            "display" : "Three DTP primary series doses were administered"
          },
          {
            "code" : "No tetanus and diphtheria booster doses were administered-141",
            "display" : "No tetanus and diphtheria booster doses were administered"
          },
          {
            "code" : "The latest DTP dose was administered less than 1 year ago-112",
            "display" : "The latest DTP dose was administered less than 1 year ago"
          },
          {
            "code" : "Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose-219",
            "display" : "Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose"
          },
          {
            "code" : "The latest DTP dose was administered more than 1 year ago-112",
            "display" : "The latest DTP dose was administered more than 1 year ago"
          },
          {
            "code" : "Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose-215",
            "display" : "Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose"
          },
          {
            "code" : "One tetanus and diphtheria booster dose was administered-140",
            "display" : "One tetanus and diphtheria booster dose was administered"
          },
          {
            "code" : "The latest tetanus and diphtheria dose was administered less than 1 year ago-131",
            "display" : "The latest tetanus and diphtheria dose was administered less than 1 year ago"
          },
          {
            "code" : "Client is not due for tetanus and diphtheria booster dose-118",
            "display" : "Client is not due for tetanus and diphtheria booster dose"
          },
          {
            "code" : "The latest tetanus and diphtheria dose was administered more than 1 year ago-131",
            "display" : "The latest tetanus and diphtheria dose was administered more than 1 year ago"
          },
          {
            "code" : "Client is due for tetanus and diphtheria booster dose-114",
            "display" : "Client is due for tetanus and diphtheria booster dose"
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
            "code" : "No pertussis booster doses were administered-126",
            "display" : "No pertussis booster doses were administered"
          },
          {
            "code" : "Client's age is between 1 year and 6 years-49",
            "display" : "Client's age is between 1 year and 6 years"
          },
          {
            "code" : "Primary DTP series is complete. Client is not due for pertussis booster dose-206",
            "display" : "Primary DTP series is complete. Client is not due for pertussis booster dose"
          },
          {
            "code" : "Primary DTP series is complete. Client is due for pertussis booster dose-202",
            "display" : "Primary DTP series is complete. Client is due for pertussis booster dose"
          },
          {
            "code" : "Client's age is more than 6 years-40",
            "display" : "Client's age is more than 6 years"
          },
          {
            "code" : "Pertussis immunization schedule is complete-106",
            "display" : "Pertussis immunization schedule is complete"
          },
          {
            "code" : "One pertussis booster dose was administered-126",
            "display" : "One pertussis booster dose was administered"
          }
        ]
      }
    ]
  }
}

```
