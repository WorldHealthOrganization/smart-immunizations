# IMMZ.Z.DE21 ValueSet for Typhoid vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE21 ValueSet for Typhoid vaccines**

## ValueSet: IMMZ.Z.DE21 ValueSet for Typhoid vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE21 |

 
ValueSet for Typhoid vaccines for IMMZ.Z.DE21 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

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
  "id" : "IMMZ.Z.DE21",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE21",
  "title" : "IMMZ.Z.DE21 ValueSet for Typhoid vaccines",
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
  "description" : "ValueSet for Typhoid vaccines for IMMZ.Z.DE21",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE21",
            "display" : "Typhoid vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM8BU8",
            "display" : "Typhoid vaccines"
          },
          {
            "code" : "XM3JA6",
            "display" : "Typhoid, hepatitis A vaccines"
          },
          {
            "code" : "XM33K4",
            "display" : "Typhoid, oral, live attenuated vaccines"
          },
          {
            "code" : "XM89G3",
            "display" : "Typhoid, inactivated, whole cell vaccines"
          },
          {
            "code" : "XM3SF6",
            "display" : "Typhoid, purified polysaccharide antigen vaccines"
          },
          {
            "code" : "XM9UB1",
            "display" : "Typhoid-paratyphoid vaccines"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07AP",
            "display" : "Typhoid vaccines"
          },
          {
            "code" : "J07CA10",
            "display" : "Typhoid-hepatitis A"
          },
          {
            "code" : "J07AP01",
            "display" : "Typhoid, oral, live attenuated"
          },
          {
            "code" : "J07AP02",
            "display" : "Typhoid, inactivated, whole cell"
          },
          {
            "code" : "J07AP03",
            "display" : "Typhoid, purified polysaccharide antigen"
          },
          {
            "code" : "J07AP10",
            "display" : "Typhoid, combinations with paratyphi types"
          },
          {
            "code" : "J07AE51",
            "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell"
          }
        ]
      }
    ]
  }
}

```
