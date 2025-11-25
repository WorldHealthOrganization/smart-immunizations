# IMMZ.Z.DE5 ValueSet for Hepatitis A-containing vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE5 ValueSet for Hepatitis A-containing vaccines**

## ValueSet: IMMZ.Z.DE5 ValueSet for Hepatitis A-containing vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE5 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE5 |

 
ValueSet for Hepatitis A-containing vaccines for IMMZ.Z.DE5 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 9 concepts.

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
  "id" : "IMMZ.Z.DE5",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE5",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE5",
  "title" : "IMMZ.Z.DE5 ValueSet for Hepatitis A-containing vaccines",
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
  "description" : "ValueSet for Hepatitis A-containing vaccines for IMMZ.Z.DE5",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE5",
            "display" : "Hepatitis A-containing vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM6LL6",
            "display" : "Hepatitis vaccines"
          },
          {
            "code" : "XM2A12",
            "display" : "Hepatitis A, inactivated, whole virus"
          },
          {
            "code" : "XM3JA6",
            "display" : "Typhoid, hepatitis A vaccines"
          },
          {
            "code" : "XM03Y7",
            "display" : "Combinations hepatitis vaccines"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "836375003",
            "display" : "Hepatitis A virus antigen-containing vaccine product"
          },
          {
            "code" : "871803007",
            "display" : "Hepatitis A and Hepatitis B virus antigens only vaccine product"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BC02",
            "display" : "Hepatitis A, inactivated, whole virus"
          },
          {
            "code" : "J07CA10",
            "display" : "Typhoid-hepatitis A"
          }
        ]
      }
    ]
  }
}

```
