# IMMZ.Z.DE14 ValueSet for Poliovirus-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE14 ValueSet for Poliovirus-containing vaccines**

## ValueSet: IMMZ.Z.DE14 ValueSet for Poliovirus-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE14 |

 
ValueSet for Poliovirus-containing vaccines for IMMZ.Z.DE14 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 27 concepts.

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
  "id" : "IMMZ.Z.DE14",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE14",
  "title" : "IMMZ.Z.DE14 ValueSet for Poliovirus-containing vaccines",
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
  "description" : "ValueSet for Poliovirus-containing vaccines for IMMZ.Z.DE14",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE14",
            "display" : "Poliovirus-containing vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM0N50",
            "display" : "Poliomyelitis vaccines"
          },
          {
            "code" : "XM1LX9",
            "display" : "Diphtheria, hemophilus influenzae B, pertussis, poliomyelitis, tetanus vaccines"
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
            "code" : "XM01H1",
            "display" : "Hemophilus influenzae B and poliomyelitis vaccines"
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
          },
          {
            "code" : "XM5V19",
            "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
          },
          {
            "code" : "XM79H3",
            "display" : "Poliomyelitis oral, bivalent, live attenuated"
          },
          {
            "code" : "XM0VX8",
            "display" : "Poliomyelitis oral, monovalent live attenuated"
          },
          {
            "code" : "XM0KZ1",
            "display" : "Poliomyelitis oral, trivalent, live attenuated"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "1031000221108",
            "display" : "Vaccine product containing Human poliovirus antigen (medicinal product)"
          },
          {
            "code" : "871740006",
            "display" : "Inactivated whole Human poliovirus antigen only vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BF",
            "display" : "Poliomyelitis vaccines"
          },
          {
            "code" : "J07CA06",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus"
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
            "code" : "J07CA04",
            "display" : "Haemophilus influenzae B and poliomyelitis"
          },
          {
            "code" : "J07BF03",
            "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
          },
          {
            "code" : "J07CA09",
            "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
          },
          {
            "code" : "J07BF04",
            "display" : "Poliomyelitis oral, bivalent, live attenuated"
          },
          {
            "code" : "J07BF01",
            "display" : "Poliomyelitis oral, monovalent, live attenuated"
          },
          {
            "code" : "J07BF02",
            "display" : "Poliomyelitis oral, trivalent, live attenuated"
          }
        ]
      }
    ]
  }
}

```
