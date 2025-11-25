# IMMZ.Z.DE10 ValueSet for Meningococcal vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE10 ValueSet for Meningococcal vaccines**

## ValueSet: IMMZ.Z.DE10 ValueSet for Meningococcal vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE10 |

 
ValueSet for Meningococcal vaccines for IMMZ.Z.DE10 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 16 concepts.

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
  "id" : "IMMZ.Z.DE10",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE10",
  "title" : "IMMZ.Z.DE10 ValueSet for Meningococcal vaccines",
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
  "description" : "ValueSet for Meningococcal vaccines for IMMZ.Z.DE10",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE10",
            "display" : "Meningococcal vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM2WV4",
            "display" : "Meningococcal vaccines"
          },
          {
            "code" : "XM92B2",
            "display" : "Meningococcal monovalent purified polysaccharides antigen vaccines"
          },
          {
            "code" : "XM5LC2",
            "display" : "Meningococcal polyvalent purified polysaccharides antigen vaccines"
          },
          {
            "code" : "XM18Y8",
            "display" : "Meningococcus C, purified polysaccharides antigen conjugated vaccines"
          },
          {
            "code" : "XM2280",
            "display" : "Meningococcus A, purified polysaccharides antigen conjugated vaccines"
          },
          {
            "code" : "XM9GJ1",
            "display" : "Meningococcus B, outer membrane vesicle vaccines"
          },
          {
            "code" : "XM1X81",
            "display" : "Meningococcus B, multicomponent vaccines"
          },
          {
            "code" : "XM37L5",
            "display" : "Meningococcus A, purified polysaccharides antigen vaccines"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "836401009",
            "display" : "Neisseria meningitidis antigen-containing vaccine product"
          },
          {
            "code" : "871871008",
            "display" : "Neisseria meningitidis serogroup A and C only vaccine product"
          },
          {
            "code" : "871866001",
            "display" : "Neisseria meningitidis serogroup C only vaccine product"
          },
          {
            "code" : "871873006",
            "display" : "Neisseria meningitidis serogroup A, C, W135 and Y only vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07AH",
            "display" : "Meningococcal vaccines"
          },
          {
            "code" : "J07AH02",
            "display" : "Other meningococcal monovalent purified polysaccharides antigen"
          },
          {
            "code" : "J07AH05",
            "display" : "Other meningococcal polyvalent purified polysaccharides antigen"
          }
        ]
      }
    ]
  }
}

```
