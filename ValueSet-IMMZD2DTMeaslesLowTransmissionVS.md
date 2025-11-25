# IMMZD2DTMeaslesLowTransmission ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTMeaslesLowTransmission ValueSet for Decision Table**

## ValueSet: IMMZD2DTMeaslesLowTransmission ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeaslesLowTransmissionVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTMeaslesLowTransmissionVS |

 
ValueSet IMMZD2DTMeaslesLowTransmission for IMMZ.D2.DT.Measles.Low transmission. Business rule: Determine if the client is due for a measles vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 14 concepts.

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
  "id" : "IMMZD2DTMeaslesLowTransmissionVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeaslesLowTransmissionVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeaslesLowTransmissionVS",
  "title" : "IMMZD2DTMeaslesLowTransmission ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTMeaslesLowTransmission for IMMZ.D2.DT.Measles.Low transmission.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)",
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
            "code" : "Client is not due for MCV1-48",
            "display" : "Client is not due for MCV1"
          },
          {
            "code" : "No measles primary series doses were administered-127",
            "display" : "No measles primary series doses were administered"
          },
          {
            "code" : "Client's age is more than or equal to 12 months-42",
            "display" : "Client's age is more than or equal to 12 months"
          },
          {
            "code" : "No live vaccine was administered in the last 4 weeks-92",
            "display" : "No live vaccine was administered in the last 4 weeks"
          },
          {
            "code" : "Client is due for MCV1-44",
            "display" : "Client is due for MCV1"
          },
          {
            "code" : "Live vaccine was administered in the last 4 weeks-92",
            "display" : "Live vaccine was administered in the last 4 weeks"
          },
          {
            "code" : "MCV1 was administered-127",
            "display" : "MCV1 was administered"
          },
          {
            "code" : "Client's age is less than 15 months-42",
            "display" : "Client's age is less than 15 months"
          },
          {
            "code" : "Client is not due for MCV2-48",
            "display" : "Client is not due for MCV2"
          },
          {
            "code" : "Client's age is more than or equal to 15 months-42",
            "display" : "Client's age is more than or equal to 15 months"
          },
          {
            "code" : "Client is due for MCV2-44",
            "display" : "Client is due for MCV2"
          },
          {
            "code" : "MCV2 was administered-127",
            "display" : "MCV2 was administered"
          },
          {
            "code" : "Measles primary series is complete-104",
            "display" : "Measles primary series is complete"
          }
        ]
      }
    ]
  }
}

```
