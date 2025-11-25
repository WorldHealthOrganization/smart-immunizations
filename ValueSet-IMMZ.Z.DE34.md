# IMMZ.Z.DE34 ValueSet for Tetanus and diphtheria-containing vaccines (Td) - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE34 ValueSet for Tetanus and diphtheria-containing vaccines (Td)**

## ValueSet: IMMZ.Z.DE34 ValueSet for Tetanus and diphtheria-containing vaccines (Td) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE34 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE34 |

 
ValueSet for Tetanus and diphtheria-containing vaccines (Td) for IMMZ.Z.DE34 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 3 concepts.

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
  "id" : "IMMZ.Z.DE34",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE34",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE34",
  "title" : "IMMZ.Z.DE34 ValueSet for Tetanus and diphtheria-containing vaccines (Td)",
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
  "description" : "ValueSet for Tetanus and diphtheria-containing vaccines (Td) for IMMZ.Z.DE34",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE34",
            "display" : "Tetanus and diphtheria-containing vaccines (Td)"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM1G86",
            "display" : "Tetanus toxoid, combinations with diphtheria toxoid vaccines"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07AM51",
            "display" : "tetanus toxoid, combinations with diphtheria toxoid"
          }
        ]
      }
    ]
  }
}

```
