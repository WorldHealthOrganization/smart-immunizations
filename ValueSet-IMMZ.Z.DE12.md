# IMMZ.Z.DE12 ValueSet for Pertussis-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE12 ValueSet for Pertussis-containing vaccines**

## ValueSet: IMMZ.Z.DE12 ValueSet for Pertussis-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE12 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE12 |

 
ValueSet for Pertussis-containing vaccines for IMMZ.Z.DE12 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 33 concepts.

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
  "id" : "IMMZ.Z.DE12",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE12",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE12",
  "title" : "IMMZ.Z.DE12 ValueSet for Pertussis-containing vaccines",
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
  "description" : "ValueSet for Pertussis-containing vaccines for IMMZ.Z.DE12",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE12",
            "display" : "Pertussis-containing vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM43M9",
            "display" : "Pertussis vaccines"
          },
          {
            "code" : "XM45L8",
            "display" : "Pertussis, inactivated, whole cell vaccines"
          },
          {
            "code" : "XM62J1",
            "display" : "Pertussis, purified antigen vaccines"
          },
          {
            "code" : "XM2TK2",
            "display" : "Pertussis, inactivated, whole cell, combinations with toxoids vaccines"
          },
          {
            "code" : "XM4082",
            "display" : "Pertussis, purified antigen, combinations with toxoids vaccines"
          },
          {
            "code" : "XM2CV8",
            "display" : "Vaccines pertussis with diphtheria"
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
            "code" : "XM5XP9",
            "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus-hepatitis B, meningococcus A + C vaccines"
          },
          {
            "code" : "XM31Q8",
            "display" : "Tetanus, diphtheria, acellular pertussis vaccines"
          },
          {
            "code" : "XM46V1",
            "display" : "Diphtheria vaccines combination including pertussis"
          },
          {
            "code" : "XM21E6",
            "display" : "Diphtheria tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
          },
          {
            "code" : "XM84S1",
            "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
          },
          {
            "code" : "XM9JP8",
            "display" : "Diphtheria, tetanus, acellular pertussis, inactivated polio virus vaccines"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07AJ",
            "display" : "Pertussis vaccines"
          },
          {
            "code" : "J07AJ01",
            "display" : "Pertussis, inactivated, whole cell"
          },
          {
            "code" : "J07AJ02",
            "display" : "Pertussis, purified antigen"
          },
          {
            "code" : "J07AJ51",
            "display" : "Pertussis, inactivated, whole cell, combinations with toxoids"
          },
          {
            "code" : "J07AJ52",
            "display" : "Pertussis, purified antigen, combinations with toxoids"
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
            "code" : "J07CA05",
            "display" : "Diphtheria-hepatitis B-pertussis-tetanus"
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
            "code" : "J07CA13",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C"
          },
          {
            "code" : "J07CA09",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
          },
          {
            "code" : "J07AG52",
            "display" : "Haemophilus influenzae B, combinations with pertussis and toxoids"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "871875004",
            "display" : "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
          },
          {
            "code" : "871889009",
            "display" : "Acellular Bordetella pertussis and Corynebacterium diphtheriae and Hepatitis B virus and inactivated whole Human poliovirus antigens only vaccine product"
          }
        ]
      }
    ]
  }
}

```
