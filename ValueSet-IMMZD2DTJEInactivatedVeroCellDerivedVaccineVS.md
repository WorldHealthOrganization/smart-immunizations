# IMMZD2DTJEInactivatedVeroCellDerivedVaccine ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTJEInactivatedVeroCellDerivedVaccine ValueSet for Decision Table**

## ValueSet: IMMZD2DTJEInactivatedVeroCellDerivedVaccine ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTJEInactivatedVeroCellDerivedVaccineVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTJEInactivatedVeroCellDerivedVaccineVS |

 
ValueSet IMMZD2DTJEInactivatedVeroCellDerivedVaccine for IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine. Business rule: Determine if the client is due for a Japanese encephalitis (JE) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Inactivated Vero cell-derived vaccination schedule (2-dose scheme) JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 10 concepts.

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
  "id" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTJEInactivatedVeroCellDerivedVaccineVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineVS",
  "title" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccine ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTJEInactivatedVeroCellDerivedVaccine for IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine.\nBusiness rule: Determine if the client is due for a Japanese encephalitis (JE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
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
            "code" : "Client is not due for JE vaccination-48",
            "display" : "Client is not due for JE vaccination"
          },
          {
            "code" : "No JE primary series doses were administered-111",
            "display" : "No JE primary series doses were administered"
          },
          {
            "code" : "Client's age is more than or equal to 6 months-41",
            "display" : "Client's age is more than or equal to 6 months"
          },
          {
            "code" : "Client is due for JE vaccination-44",
            "display" : "Client is due for JE vaccination"
          },
          {
            "code" : "One JE primary series dose was administered-111",
            "display" : "One JE primary series dose was administered"
          },
          {
            "code" : "The latest JE dose was administered less than 4 weeks ago-94",
            "display" : "The latest JE dose was administered less than 4 weeks ago"
          },
          {
            "code" : "The latest JE dose was administered more than 4 weeks ago-94",
            "display" : "The latest JE dose was administered more than 4 weeks ago"
          },
          {
            "code" : "Two JE primary series doses were administered-111",
            "display" : "Two JE primary series doses were administered"
          },
          {
            "code" : "JE immunization schedule is complete-138",
            "display" : "JE immunization schedule is complete"
          }
        ]
      }
    ]
  }
}

```
