# IMMZ.Z.DE4 ValueSet for Hib-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE4 ValueSet for Hib-containing vaccines**

## ValueSet: IMMZ.Z.DE4 ValueSet for Hib-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE4 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE4 |

 
ValueSet for Hib-containing vaccines for IMMZ.Z.DE4 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 24 concepts.

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
  "id" : "IMMZ.Z.DE4",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE4",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE4",
  "title" : "IMMZ.Z.DE4 ValueSet for Hib-containing vaccines",
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
  "description" : "ValueSet for Hib-containing vaccines for IMMZ.Z.DE4",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE4",
            "display" : "Hib-containing vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM11V3",
            "display" : "Haemophilus influenzae B vaccines"
          },
          {
            "code" : "XM1LX9",
            "display" : "Diphtheria, hemophilus influenzae B, pertussis, poliomyelitis, tetanus vaccines"
          },
          {
            "code" : "XM01H1",
            "display" : "Hemophilus influenzae B and poliomyelitis vaccines"
          },
          {
            "code" : "XM32L7",
            "display" : "Hemophilus influenzae B and hepatitis B vaccines"
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
            "code" : "XM21E6",
            "display" : "Diphtheria tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
          },
          {
            "code" : "XM84S1",
            "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "836380007",
            "display" : "Haemophilus influenzae type b antigen-containing vaccine product"
          },
          {
            "code" : "836500008",
            "display" : "Haemophilus influenzae type b and Neisseria meningitidis serogroup C antigens only vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07AG",
            "display" : "Haemophilus influenzae B vaccines"
          },
          {
            "code" : "J07CA06",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus"
          },
          {
            "code" : "J07CA04",
            "display" : "Haemophilus influenzae B and poliomyelitis"
          },
          {
            "code" : "J07CA08",
            "display" : "Haemophilus influenzae B and hepatitis B"
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
            "code" : "J07CA09",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
          },
          {
            "code" : "J07AG53",
            "display" : "Haemophilus influenzae B, combinations with meningococcus C, conjugated"
          },
          {
            "code" : "J07AG52",
            "display" : "Haemophilus influenzae B, combinations with pertussis and toxoids"
          },
          {
            "code" : "J07AG51",
            "display" : "Haemophilus influenzae B, combinations with toxoids"
          },
          {
            "code" : "J07AG01",
            "display" : "Haemophilus influenzae B, purified antigen conjugated"
          },
          {
            "code" : "J07AL52",
            "display" : "Pneumococcus purified polysaccharides antigen and haemophilus influenzae, conjugated"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "30938-5",
            "display" : "Long common name: Hib dose count in combination vaccine"
          }
        ]
      }
    ]
  }
}

```
