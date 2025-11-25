# IMMZ.Z.DE8 ValueSet for JE vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE8 ValueSet for JE vaccines**

## ValueSet: IMMZ.Z.DE8 ValueSet for JE vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE8 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE8 |

 
ValueSet for JE vaccines for IMMZ.Z.DE8 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

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
  "id" : "IMMZ.Z.DE8",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE8",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE8",
  "title" : "IMMZ.Z.DE8 ValueSet for JE vaccines",
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
  "description" : "ValueSet for JE vaccines for IMMZ.Z.DE8",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE8",
            "display" : "JE vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM0LB5",
            "display" : "Encephalitis, Japanese, inactivated, whole virus"
          },
          {
            "code" : "XM47S0",
            "display" : "Encephalitis, Japanese, live attenuated"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "836378001",
            "display" : "Japanese encephalitis virus antigen-containing vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BA02",
            "display" : "Encephalitis, Japanese, inactivated, whole virus"
          },
          {
            "code" : "J07BA03",
            "display" : "Encephalitis, Japanese, live attenuated"
          }
        ]
      }
    ]
  }
}

```
