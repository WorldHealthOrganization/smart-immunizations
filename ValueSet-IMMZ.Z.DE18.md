# IMMZ.Z.DE18 ValueSet for Seasonal influenza vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE18 ValueSet for Seasonal influenza vaccines**

## ValueSet: IMMZ.Z.DE18 ValueSet for Seasonal influenza vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE18 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE18 |

 
ValueSet for Seasonal influenza vaccines for IMMZ.Z.DE18 

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
  "id" : "IMMZ.Z.DE18",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE18",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE18",
  "title" : "IMMZ.Z.DE18 ValueSet for Seasonal influenza vaccines",
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
  "description" : "ValueSet for Seasonal influenza vaccines for IMMZ.Z.DE18",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE18",
            "display" : "Seasonal influenza vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM1LR5",
            "display" : "Influenza vaccines"
          },
          {
            "code" : "XM8857",
            "display" : "Influenza vaccine, inactivated, whole virus"
          },
          {
            "code" : "XM5V64",
            "display" : "Influenza vaccines, live attenuated"
          },
          {
            "code" : "XM8MP2",
            "display" : "Influenza vaccines, inactivated, split virus or surface antigen"
          },
          {
            "code" : "XM9E16",
            "display" : "Influenza vaccines, virus like particle"
          },
          {
            "code" : "XM33X8",
            "display" : "Influenza, purified antigen"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "836377006",
            "display" : "Influenza virus antigen-containing vaccine product"
          },
          {
            "code" : "1181000221105",
            "display" : "Influenza virus antigen only vaccine product"
          },
          {
            "code" : "871768005",
            "display" : "Influenza virus antigen only vaccine product in nasal dose form"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BB",
            "display" : "Influenza vaccines"
          },
          {
            "code" : "J07BB01",
            "display" : "Influenza, inactivated, whole virus"
          },
          {
            "code" : "J07BB03",
            "display" : "Influenza, live attenuated"
          },
          {
            "code" : "J07BB02",
            "display" : "Influenza, inactivated, split virus or surface antigen"
          },
          {
            "code" : "J07BB04",
            "display" : "Influenza, virus like particles"
          }
        ]
      }
    ]
  }
}

```
