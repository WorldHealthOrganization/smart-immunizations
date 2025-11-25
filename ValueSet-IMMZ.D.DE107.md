# IMMZ.D.DE107 ValueSet for Type of reaction - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D.DE107 ValueSet for Type of reaction**

## ValueSet: IMMZ.D.DE107 ValueSet for Type of reaction 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE107 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_D_DE107 |

 
ValueSet for Type of reaction for IMMZ.D.DE107 

 **References** 

* [SMART Guidelines Immunizations AdverseEvent](StructureDefinition-IMMZ.AdverseEvent.md)
* [IMMZ.D17.Report AEFI](StructureDefinition-IMMZD17.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 6 concepts.

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
  "id" : "IMMZ.D.DE107",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE107",
  "version" : "0.2.0",
  "name" : "IMMZ_D_DE107",
  "title" : "IMMZ.D.DE107 ValueSet for Type of reaction",
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
  "description" : "ValueSet for Type of reaction for IMMZ.D.DE107",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [
          {
            "code" : "DE174",
            "display" : "Non serious"
          },
          {
            "code" : "DE108",
            "display" : "Death"
          },
          {
            "code" : "DE109",
            "display" : "Life threatening"
          },
          {
            "code" : "DE110",
            "display" : "Disability"
          },
          {
            "code" : "DE111",
            "display" : "Hospitalization"
          },
          {
            "code" : "DE112",
            "display" : "Congenital anomaly"
          }
        ]
      }
    ]
  }
}

```
