# IMMZ.Z.DE30 ValueSet for Oral polio vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE30 ValueSet for Oral polio vaccines**

## ValueSet: IMMZ.Z.DE30 ValueSet for Oral polio vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE30 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE30 |

 
ValueSet for Oral polio vaccines for IMMZ.Z.DE30 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 7 concepts.

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
  "id" : "IMMZ.Z.DE30",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE30",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE30",
  "title" : "IMMZ.Z.DE30 ValueSet for Oral polio vaccines",
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
  "description" : "ValueSet for Oral polio vaccines for IMMZ.Z.DE30",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE30",
            "display" : "Oral polio vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM0VX8",
            "display" : "Poliomyelitis oral, monovalent live attenuated"
          },
          {
            "code" : "XM79H3",
            "display" : "Poliomyelitis oral, bivalent, live attenuated"
          },
          {
            "code" : "XM0KZ1",
            "display" : "Poliomyelitis oral, trivalent, live attenuated"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BF01",
            "display" : "Poliomyelitis oral, monovalent, live attenuated"
          },
          {
            "code" : "J07BF04",
            "display" : "Poliomyelitis oral, bivalent, live attenuated"
          },
          {
            "code" : "J07BF02",
            "display" : "Poliomyelitis oral, trivalent, live attenuated"
          }
        ]
      }
    ]
  }
}

```
