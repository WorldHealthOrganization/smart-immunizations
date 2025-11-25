# IMMZ.Z.DE7 ValueSet for HPV vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE7 ValueSet for HPV vaccines**

## ValueSet: IMMZ.Z.DE7 ValueSet for HPV vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE7 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE7 |

 
ValueSet for HPV vaccines for IMMZ.Z.DE7 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

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
  "id" : "IMMZ.Z.DE7",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE7",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE7",
  "title" : "IMMZ.Z.DE7 ValueSet for HPV vaccines",
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
  "description" : "ValueSet for HPV vaccines for IMMZ.Z.DE7",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE7",
            "display" : "HPV vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM9QP0",
            "display" : "Papillomavirus vaccine"
          },
          {
            "code" : "XM1821",
            "display" : "Papillomavirus (human types 6,11,16,18)"
          },
          {
            "code" : "XM9BT4",
            "display" : "Papillomavirus (human types 16,18)"
          },
          {
            "code" : "XM5CE9",
            "display" : "Papillomavirus (human types 6,11,16,18,31,33,45,52,58)"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "836379009",
            "display" : "Human papillomavirus antigen-containing vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BM",
            "display" : "Papillomavirus vaccines"
          },
          {
            "code" : "J07BM01",
            "display" : "Papillomavirus (human types 6, 11, 16, 18)"
          },
          {
            "code" : "J07BM02",
            "display" : "Papillomavirus (human types 16, 18)"
          },
          {
            "code" : "J07BM03",
            "display" : "Papillomavirus (human types 6, 11, 16, 18, 31, 33, 45, 52, 58)"
          }
        ]
      }
    ]
  }
}

```
