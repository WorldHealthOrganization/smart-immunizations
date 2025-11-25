# IMMZ.Z.DE19 ValueSet for Tetanus-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE19 ValueSet for Tetanus-containing vaccines**

## ValueSet: IMMZ.Z.DE19 ValueSet for Tetanus-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE19 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE19 |

 
ValueSet for Tetanus-containing vaccines for IMMZ.Z.DE19 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 34 concepts.

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
  "id" : "IMMZ.Z.DE19",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE19",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE19",
  "title" : "IMMZ.Z.DE19 ValueSet for Tetanus-containing vaccines",
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
  "description" : "ValueSet for Tetanus-containing vaccines for IMMZ.Z.DE19",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE19",
            "display" : "Tetanus-containing vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM5L44",
            "display" : "Tetanus vaccines"
          },
          {
            "code" : "XM31Q8",
            "display" : "Tetanus, diphtheria, acellular pertussis"
          },
          {
            "code" : "XM1LX9",
            "display" : "Diphtheria, hemophilus influenzae B, pertussis, poliomyelitis, tetanus vaccines"
          },
          {
            "code" : "XM7JP3",
            "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus, hepatitis B vaccines"
          },
          {
            "code" : "XM5XP9",
            "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus-hepatitis B, meningococcus A + C vaccines"
          },
          {
            "code" : "XM41N3",
            "display" : "Diphtheria, hepatitis B, pertussis, tetanus vaccines"
          },
          {
            "code" : "XM3G68",
            "display" : "Diphtheria, hepatitis B, tetanus vaccines"
          },
          {
            "code" : "XM09Q7",
            "display" : "Diphtheria, pertussis, poliomyelitis, tetanus vaccines"
          },
          {
            "code" : "XM0LT9",
            "display" : "Diphtheria, pertussis, poliomyelitis, tetanus, hepatitis B vaccines"
          },
          {
            "code" : "XM8AW1",
            "display" : "Diphtheria, poliomyelitis, tetanus vaccines"
          },
          {
            "code" : "XM84S1",
            "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
          },
          {
            "code" : "XM9744",
            "display" : "Diphtheria, rubella, tetanus vaccines"
          },
          {
            "code" : "XM29H5",
            "display" : "Tetanus toxoid vaccines"
          },
          {
            "code" : "XM1G86",
            "display" : "Tetanus toxoid, combinations with diphtheria toxoid vaccines"
          },
          {
            "code" : "XM9AK2",
            "display" : "Tetanus toxoid, combinations with tetanus immunoglobulin vaccines"
          },
          {
            "code" : "XM21E6",
            "display" : "Diphtheria tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
          },
          {
            "code" : "XM32Q5",
            "display" : "Tetanus and diphtheria vaccines"
          },
          {
            "code" : "XM9JP8",
            "display" : "Diphtheria, tetanus, acellular pertussis, inactivated polio virus vaccines"
          },
          {
            "code" : "XM4039",
            "display" : "Vaccines diphtheria with tetanus"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07AM",
            "display" : "Tetanus vaccines"
          },
          {
            "code" : "J07CA06",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus"
          },
          {
            "code" : "J07CA11",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B"
          },
          {
            "code" : "J07CA13",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C"
          },
          {
            "code" : "J07CA05",
            "display" : "Diphtheria-hepatitis B-pertussis-tetanus"
          },
          {
            "code" : "J07CA07",
            "display" : "Diphtheria-hepatitis B-tetanus"
          },
          {
            "code" : "J07CA02",
            "display" : "Diphtheria-pertussis-poliomyelitis-tetanus"
          },
          {
            "code" : "J07CA12",
            "display" : "Diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B"
          },
          {
            "code" : "J07CA01",
            "display" : "Diphtheria-poliomyelitis-tetanus"
          },
          {
            "code" : "J07CA09",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
          },
          {
            "code" : "J07CA03",
            "display" : "Diphtheria-rubella-tetanus"
          },
          {
            "code" : "J07AM01",
            "display" : "Tetanus toxoid"
          },
          {
            "code" : "J07AM51",
            "display" : "Tetanus toxoid, combinations with diphtheria toxoid"
          },
          {
            "code" : "J07AM52",
            "display" : "Tetanus toxoid, combinations with tetanus immunoglobulin"
          }
        ]
      }
    ]
  }
}

```
