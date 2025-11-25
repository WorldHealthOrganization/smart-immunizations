# IMMZD2DTRotavirus ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTRotavirus ValueSet for Decision Table**

## ValueSet: IMMZD2DTRotavirus ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTRotavirusVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTRotavirusVS |

 
ValueSet IMMZD2DTRotavirus for IMMZ.D2.DT.Rotavirus. Business rule: Determine if the client is due for a rotavirus vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: IMMZ.D2.DT.Rotavirus 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 22 concepts.

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
  "id" : "IMMZD2DTRotavirusVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTRotavirusVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTRotavirusVS",
  "title" : "IMMZD2DTRotavirus ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTRotavirus for IMMZ.D2.DT.Rotavirus.\nBusiness rule: Determine if the client is due for a rotavirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: IMMZ.D2.DT.Rotavirus",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 6 weeks-41",
            "display" : "Client's age is less than 6 weeks"
          },
          {
            "code" : "Client is not due for rotavirus vaccination-48",
            "display" : "Client is not due for rotavirus vaccination"
          },
          {
            "code" : "No rotavirus primary series doses were administered-118",
            "display" : "No rotavirus primary series doses were administered"
          },
          {
            "code" : "Client's age is between 6 weeks and 24 months-52",
            "display" : "Client's age is between 6 weeks and 24 months"
          },
          {
            "code" : "No live vaccine was administered in the last 4 weeks-92",
            "display" : "No live vaccine was administered in the last 4 weeks"
          },
          {
            "code" : "Client is due for rotavirus vaccination-44",
            "display" : "Client is due for rotavirus vaccination"
          },
          {
            "code" : "Live vaccine was administered in the last 4 weeks-92",
            "display" : "Live vaccine was administered in the last 4 weeks"
          },
          {
            "code" : "One rotavirus primary series dose was administered-118",
            "display" : "One rotavirus primary series dose was administered"
          },
          {
            "code" : "Two rotavirus primary series doses were administered-118",
            "display" : "Two rotavirus primary series doses were administered"
          },
          {
            "code" : "Client's age is between 6 months and 24 months-52",
            "display" : "Client's age is between 6 months and 24 months"
          },
          {
            "code" : "The series administered to the client is a mixed series or a series with unknown vaccine products-169",
            "display" : "The series administered to the client is a mixed series or a series with unknown vaccine products"
          },
          {
            "code" : "Live vaccines was administered in the last 4 weeks-92",
            "display" : "Live vaccines was administered in the last 4 weeks"
          },
          {
            "code" : "No live vaccine was administered in last 4 weeks-92",
            "display" : "No live vaccine was administered in last 4 weeks"
          },
          {
            "code" : "The series administered to the client contains the same product-169",
            "display" : "The series administered to the client contains the same product"
          },
          {
            "code" : "The series contain more than two doses-27",
            "display" : "The series contain more than two doses"
          },
          {
            "code" : "Live vaccine was administered in last 4 weeks-92",
            "display" : "Live vaccine was administered in last 4 weeks"
          },
          {
            "code" : "The series contain less than or equal to two doses-27",
            "display" : "The series contain less than or equal to two doses"
          },
          {
            "code" : "Rotavirus immunization schedule is complete-49",
            "display" : "Rotavirus immunization schedule is complete"
          },
          {
            "code" : "Three rotavirus primary series doses were administered-118",
            "display" : "Three rotavirus primary series doses were administered"
          },
          {
            "code" : "Rotavirus immunization schedule is complete-50",
            "display" : "Rotavirus immunization schedule is complete"
          },
          {
            "code" : "Client's age is more than 24 months-27",
            "display" : "Client's age is more than 24 months"
          },
          {
            "code" : "Client is not due for rotavirus vaccination if immunization schedule is not complete.-109",
            "display" : "Client is not due for rotavirus vaccination if immunization schedule is not complete."
          }
        ]
      }
    ]
  }
}

```
