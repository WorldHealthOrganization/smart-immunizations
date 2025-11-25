# IMMZD2DTMeaslesMCVDose0 ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTMeaslesMCVDose0 ValueSet for Decision Table**

## ValueSet: IMMZD2DTMeaslesMCVDose0 ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeaslesMCVDose0VS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTMeaslesMCVDose0VS |

 
ValueSet IMMZD2DTMeaslesMCVDose0 for IMMZ.D2.DT.Measles.MCV dose 0. Business rule: Determine if the client is due for a measles vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Measles-containing vaccine dose 0 (MCV0) administration 

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
  "id" : "IMMZD2DTMeaslesMCVDose0VS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeaslesMCVDose0VS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeaslesMCVDose0VS",
  "title" : "IMMZD2DTMeaslesMCVDose0 ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTMeaslesMCVDose0 for IMMZ.D2.DT.Measles.MCV dose 0.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Measles-containing vaccine dose 0 (MCV0) administration",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 6 months-41",
            "display" : "Client's age is less than 6 months"
          },
          {
            "code" : "Client is not due for MCV0-48",
            "display" : "Client is not due for MCV0"
          },
          {
            "code" : "MCV0 was not administered-119",
            "display" : "MCV0 was not administered"
          },
          {
            "code" : "Client's age is between 6 months and 9 months-52",
            "display" : "Client's age is between 6 months and 9 months"
          },
          {
            "code" : "Live vaccine was administered in the last 4 weeks-92",
            "display" : "Live vaccine was administered in the last 4 weeks"
          },
          {
            "code" : "No live vaccine was administered in the last 4 weeks-92",
            "display" : "No live vaccine was administered in the last 4 weeks"
          },
          {
            "code" : "Consider MCV0.-90",
            "display" : "Consider MCV0."
          },
          {
            "code" : "Client's age is more than or equal to 9 months-41",
            "display" : "Client's age is more than or equal to 9 months"
          },
          {
            "code" : "MCV0 was administered-119",
            "display" : "MCV0 was administered"
          }
        ]
      }
    ]
  }
}

```
