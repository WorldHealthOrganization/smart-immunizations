# IMMZ.Z.DE32 ValueSet for Measles and rubella-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE32 ValueSet for Measles and rubella-containing vaccines**

## ValueSet: IMMZ.Z.DE32 ValueSet for Measles and rubella-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE32 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE32 |

 
ValueSet for Measles and rubella-containing vaccines for IMMZ.Z.DE32 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 8 concepts.

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
  "id" : "IMMZ.Z.DE32",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE32",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE32",
  "title" : "IMMZ.Z.DE32 ValueSet for Measles and rubella-containing vaccines",
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
  "description" : "ValueSet for Measles and rubella-containing vaccines for IMMZ.Z.DE32",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE32",
            "display" : "Measles and rubella-containing vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM21H2",
            "display" : "Measles, combinations with rubella, live attenuated"
          },
          {
            "code" : "XM8TF3",
            "display" : "Measles, combinations with mumps and rubella, live attenuated"
          },
          {
            "code" : "XM4AJ8",
            "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BD53",
            "display" : "Measles, combinations with rubella, live attenuated"
          },
          {
            "code" : "J07BD52",
            "display" : "Measles, combinations with mumps and rubella, live attenuated"
          },
          {
            "code" : "J07BD54",
            "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "30940-1",
            "display" : "Long common name: Measles virus + Mumps virus + Rubella virus dose count in combination vaccine"
          }
        ]
      }
    ]
  }
}

```
