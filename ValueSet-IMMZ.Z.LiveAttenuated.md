# IMMZ.Z.LiveAttenuated ValueSet for live attenuated vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.LiveAttenuated ValueSet for live attenuated vaccines**

## ValueSet: IMMZ.Z.LiveAttenuated ValueSet for live attenuated vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.LiveAttenuated | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_LiveAttenuated |

 
ValueSet for live attenuated vaccine types for IMMZ.Z.LiveAttenuated 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 42 concepts.

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
  "id" : "IMMZ.Z.LiveAttenuated",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.LiveAttenuated",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_LiveAttenuated",
  "title" : "IMMZ.Z.LiveAttenuated ValueSet for live attenuated vaccines",
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
  "description" : "ValueSet for live attenuated vaccine types for IMMZ.Z.LiveAttenuated",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07AE02",
            "display" : "Cholera, live attenuated"
          },
          {
            "code" : "J07AP01",
            "display" : "Typhoid, oral, live attenuated"
          },
          {
            "code" : "J07BA03",
            "display" : "Encephalitis, Japanese, live attenuated"
          },
          {
            "code" : "J07BB03",
            "display" : "Influenza, live attenuated"
          },
          {
            "code" : "J07BD01",
            "display" : "Measles, live attenuated"
          },
          {
            "code" : "J07BD51",
            "display" : "Measles, combinations with mumps, live attenuated"
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
            "code" : "J07BE01",
            "display" : "Mumps, live attenuated"
          },
          {
            "code" : "J07BF01",
            "display" : "Poliomyelitis oral, monovalent, live attenuated"
          },
          {
            "code" : "J07BF02",
            "display" : "Poliomyelitis oral, trivalent, live attenuated"
          },
          {
            "code" : "J07BF04",
            "display" : "Poliomyelitis oral, bivalent, live attenuated"
          },
          {
            "code" : "J07BH01",
            "display" : "Rotavirus, live attenuated"
          },
          {
            "code" : "J07BJ01",
            "display" : "Rubella, live attenuated"
          },
          {
            "code" : "J07BJ51",
            "display" : "Rubella, combinations with mumps, live attenuated"
          },
          {
            "code" : "J07BK01",
            "display" : "Varicella, live attenuated"
          },
          {
            "code" : "J07BL01",
            "display" : "Yellow fever, live attenuated"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM0KZ1",
            "display" : "Poliomyelitis oral, trivalent, live attenuated"
          },
          {
            "code" : "XM0NS8",
            "display" : "Varicella, live attenuated"
          },
          {
            "code" : "XM0VX8",
            "display" : "Poliomyelitis oral, monovalent live attenuated"
          },
          {
            "code" : "XM21H2",
            "display" : "Measles, combinations with rubella, live attenuated"
          },
          {
            "code" : "XM2340",
            "display" : "Mumps, live attenuated"
          },
          {
            "code" : "XM33K4",
            "display" : "Typhoid, oral, live attenuated vaccines"
          },
          {
            "code" : "XM3418",
            "display" : "Yellow fever, live attenuated"
          },
          {
            "code" : "XM3B09",
            "display" : "Rubella, combinations with mumps, live attenuated"
          },
          {
            "code" : "XM47S0",
            "display" : "Encephalitis, Japanese, live attenuated"
          },
          {
            "code" : "XM4AJ8",
            "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
          },
          {
            "code" : "XM4GV0",
            "display" : "Rota virus, live attenuated"
          },
          {
            "code" : "XM5DF6",
            "display" : "COVID-19 vaccine, live attenuated virus"
          },
          {
            "code" : "XM5V64",
            "display" : "Influenza vaccines, live attenuated"
          },
          {
            "code" : "XM72A0",
            "display" : "Cholera, live attenuated vaccines"
          },
          {
            "code" : "XM79H3",
            "display" : "Poliomyelitis oral, bivalent, live attenuated"
          },
          {
            "code" : "XM8142",
            "display" : "Tuberculosis, live attenuated vaccines"
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
            "code" : "XM9439",
            "display" : "Measles, combinations with mumps, live attenuated"
          },
          {
            "code" : "XM9PS9",
            "display" : "Rubella, live attenuated"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "1011000221100",
            "display" : "Live attenuated Vibrio cholerae antigen only vaccine product in oral dose form"
          },
          {
            "code" : "1081000221109",
            "display" : "Live attenuated Rotavirus antigen only vaccine product"
          },
          {
            "code" : "1121000221106",
            "display" : "Live attenuated Yellow fever virus antigen only vaccine product"
          },
          {
            "code" : "2221000221107",
            "display" : "Live attenuated Human alphaherpesvirus 3 only vaccine product"
          }
        ]
      }
    ]
  }
}

```
