# IMMZ.Z.DE9 ValueSet for Measles-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE9 ValueSet for Measles-containing vaccines**

## ValueSet: IMMZ.Z.DE9 ValueSet for Measles-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE9 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE9 |

 
ValueSet for Measles-containing vaccines for IMMZ.Z.DE9 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 15 concepts.

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
  "id" : "IMMZ.Z.DE9",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE9",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE9",
  "title" : "IMMZ.Z.DE9 ValueSet for Measles-containing vaccines",
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
  "description" : "ValueSet for Measles-containing vaccines for IMMZ.Z.DE9",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE9",
            "display" : "Measles-containing vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM28X5",
            "display" : "Measles vaccines"
          },
          {
            "code" : "XM8L15",
            "display" : "Measles, live attenuated"
          },
          {
            "code" : "XM8TF3",
            "display" : "Measles, combinations with mumps and rubella, live attenuated"
          },
          {
            "code" : "XM21H2",
            "display" : "Measles, combinations with rubella, live attenuated"
          },
          {
            "code" : "XM4AJ8",
            "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
          },
          {
            "code" : "XM9439",
            "display" : "Measles, combinations with mumps, live attenuated"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "836382004",
            "display" : "Measles morbillivirus antigen-containing vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BD",
            "display" : "Measles vaccines"
          },
          {
            "code" : "J07BD01",
            "display" : "Measles, live attenuated"
          },
          {
            "code" : "J07BD52",
            "display" : "Measles, combinations with mumps and rubella, live attenuated"
          },
          {
            "code" : "J07BD53",
            "display" : "Measles, combinations with rubella, live attenuated"
          },
          {
            "code" : "J07BD54",
            "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
          },
          {
            "code" : "J07BD51",
            "display" : "Measles, combinations with mumps, live attenuated"
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
