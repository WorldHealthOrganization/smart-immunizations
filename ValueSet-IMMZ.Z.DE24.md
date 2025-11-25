# IMMZ.Z.DE24 ValueSet for DTP-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE24 ValueSet for DTP-containing vaccines**

## ValueSet: IMMZ.Z.DE24 ValueSet for DTP-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE24 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE24 |

 
ValueSet for DTP-containing vaccines for IMMZ.Z.DE24 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 23 concepts.

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
  "id" : "IMMZ.Z.DE24",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE24",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE24",
  "title" : "IMMZ.Z.DE24 ValueSet for DTP-containing vaccines",
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
  "description" : "ValueSet for DTP-containing vaccines for IMMZ.Z.DE24",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE24",
            "display" : "DTP-containing vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM31Q8",
            "display" : "Tetanus, diphtheria, acellular pertussis vaccines"
          },
          {
            "code" : "XM1LX9",
            "display" : "Diphtheria, hemophilus influenzae B, pertussis, poliomyelitis, tetanus vaccines"
          },
          {
            "code" : "XM84S1",
            "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
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
            "code" : "XM09Q7",
            "display" : "Diphtheria, pertussis, poliomyelitis, tetanus vaccines"
          },
          {
            "code" : "XM0LT9",
            "display" : "Diphtheria, pertussis, poliomyelitis, tetanus, hepatitis B vaccines"
          },
          {
            "code" : "XM1G86",
            "display" : "Tetanus toxoid, combinations with diphtheria toxoid vaccines"
          },
          {
            "code" : "XM21E6",
            "display" : "Diphtheria tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
          },
          {
            "code" : "XM9JP8",
            "display" : "Diphtheria, tetanus, acellular pertussis, inactivated polio virus vaccines"
          },
          {
            "code" : "XM32Q5",
            "display" : "Tetanus and diphtheria vaccines"
          },
          {
            "code" : "XM4039",
            "display" : "Vaccines diphtheria with tetanus"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "774618008",
            "display" : "Whole cell Bordetella pertussis and Clostridium tetani toxoid adsorbed and Corynebacterium diphtheriae toxoid antigens only vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07CA06",
            "display" : "diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus"
          },
          {
            "code" : "J07CA09",
            "display" : "diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
          },
          {
            "code" : "J07CA11",
            "display" : "diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B"
          },
          {
            "code" : "J07CA13",
            "display" : "diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C"
          },
          {
            "code" : "J07CA05",
            "display" : "diphtheria-hepatitis B-pertussis-tetanus"
          },
          {
            "code" : "J07CA02",
            "display" : "diphtheria-pertussis-poliomyelitis-tetanus"
          },
          {
            "code" : "J07CA12",
            "display" : "diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B"
          },
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
