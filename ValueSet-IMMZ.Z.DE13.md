# IMMZ.Z.DE13 ValueSet for Pneumococcal vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE13 ValueSet for Pneumococcal vaccines**

## ValueSet: IMMZ.Z.DE13 ValueSet for Pneumococcal vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE13 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE13 |

 
ValueSet for Pneumococcal vaccines for IMMZ.Z.DE13 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

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
  "id" : "IMMZ.Z.DE13",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE13",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE13",
  "title" : "IMMZ.Z.DE13 ValueSet for Pneumococcal vaccines",
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
  "description" : "ValueSet for Pneumococcal vaccines for IMMZ.Z.DE13",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE13",
            "display" : "Pneumococcal vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM9EM7",
            "display" : "Pneumococcal vaccines"
          },
          {
            "code" : "XM9G97",
            "display" : "Pneumococcal conjugate (13-valent) vaccines"
          },
          {
            "code" : "XM2249",
            "display" : "Pneumococcal polysaccharide 23-valent vaccines"
          },
          {
            "code" : "XM91D7",
            "display" : "Pneumococcus, purified polysaccharides antigen vaccines"
          },
          {
            "code" : "XM96S7",
            "display" : "Pneumococcus, purified polysaccharides antigen conjugated vaccines"
          },
          {
            "code" : "XM4R39",
            "display" : "Pneumococcus purified polysaccharides antigen and Haemophilus influenzae, conjugated vaccines"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "836398006",
            "display" : "Streptococcus pneumoniae antigen-containing vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07AL",
            "display" : "Pneumococcal vaccines"
          }
        ]
      }
    ]
  }
}

```
