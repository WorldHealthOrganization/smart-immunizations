# IMMZ.Z.DE26 ValueSet for COVID-19 vaccines - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE26 ValueSet for COVID-19 vaccines**

## ValueSet: IMMZ.Z.DE26 ValueSet for COVID-19 vaccines 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE26 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE26 |

 
ValueSet for COVID-19 vaccines for IMMZ.Z.DE26 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 17 concepts.

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
  "id" : "IMMZ.Z.DE26",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE26",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE26",
  "title" : "IMMZ.Z.DE26 ValueSet for COVID-19 vaccines",
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
  "description" : "ValueSet for COVID-19 vaccines for IMMZ.Z.DE26",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE26",
            "display" : "COVID-19 vaccines"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM68M6",
            "display" : "COVID-19 vaccines"
          },
          {
            "code" : "XM0GQ8",
            "display" : "COVID-19 vaccine, RNA based"
          },
          {
            "code" : "XM1NL1",
            "display" : "COVID-19 vaccine, inactivated virus"
          },
          {
            "code" : "XM1J92",
            "display" : "COVID-19 vaccine, virus like particle"
          },
          {
            "code" : "XM9QW8",
            "display" : "COVID-19 vaccine, non-replicating viral vector"
          },
          {
            "code" : "XM6AT1",
            "display" : "COVID-19 vaccine, DNA based"
          },
          {
            "code" : "XM5JC5",
            "display" : "COVID-19 vaccine, virus protein subunit"
          },
          {
            "code" : "XM3CT4",
            "display" : "Recombinant SARS-CoV-2 vaccine"
          },
          {
            "code" : "XM0CX4",
            "display" : "COVID-19 vaccine, replicating viral vector"
          },
          {
            "code" : "XM5DF6",
            "display" : "COVID-19 vaccine, live attenuated virus"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "1119305005",
            "display" : "SARS-CoV-2 antigen vaccine"
          },
          {
            "code" : "1119349007",
            "display" : "SARS-CoV-2 mRNA vaccine"
          },
          {
            "code" : "1157024006",
            "display" : "Inactivated whole SARS-CoV-2 antigen vaccine"
          },
          {
            "code" : "29061000087103",
            "display" : "COVID-19 non-replicating viral vector vaccine"
          },
          {
            "code" : "1162643001",
            "display" : "SARS-CoV-2 recombinant spike protein antigen vaccine"
          }
        ]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [
          {
            "code" : "J07BX03",
            "display" : "covid-19 vaccines"
          }
        ]
      }
    ]
  }
}

```
