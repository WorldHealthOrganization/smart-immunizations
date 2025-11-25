# IMMZ.D.Observation ValueSet for Sex - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D.Observation ValueSet for Sex**

## ValueSet: IMMZ.D.Observation ValueSet for Sex 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D.Observation | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_D_Observation |

 
ValueSet for Observation codes for IMMZ.D 

 **References** 

* [SMART Guidelines Immunizations Observation](StructureDefinition-IMMZ.Observation.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 21 concepts.

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
  "id" : "IMMZ.D.Observation",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.Observation",
  "version" : "0.2.0",
  "name" : "IMMZ_D_Observation",
  "title" : "IMMZ.D.Observation ValueSet for Sex",
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
  "description" : "ValueSet for Observation codes for IMMZ.D",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [
          {
            "code" : "DE263",
            "display" : "Birth dose"
          },
          {
            "code" : "DE203",
            "display" : "Completed the primary vaccination series"
          },
          {
            "code" : "DE257",
            "display" : "Completed the booster series"
          },
          {
            "code" : "DE242",
            "display" : "Date when primary vaccination series was completed"
          },
          {
            "code" : "DE204",
            "display" : "HIV status"
          },
          {
            "code" : "DE208",
            "display" : "Preterm birth"
          },
          {
            "code" : "DE209",
            "display" : "Immunocompromised"
          },
          {
            "code" : "DE210",
            "display" : "Currently on ART"
          },
          {
            "code" : "DE243",
            "display" : "Type of TB infection test performed"
          },
          {
            "code" : "DE246",
            "display" : "TB infection test result"
          },
          {
            "code" : "DE249",
            "display" : "Immunologically stable"
          },
          {
            "code" : "DE250",
            "display" : "Clinically well"
          },
          {
            "code" : "DE211",
            "display" : "Birth weight in grams"
          },
          {
            "code" : "DE215",
            "display" : "ART start date"
          },
          {
            "code" : "DE251",
            "display" : "High risk of pneumococcal infection"
          },
          {
            "code" : "DE236",
            "display" : "Age in months when client received first meningococcal dose"
          },
          {
            "code" : "DE240",
            "display" : "VNA level"
          },
          {
            "code" : "DE253",
            "display" : "Risk of occupational exposure to rabies virus"
          },
          {
            "code" : "DE241",
            "display" : "Dengue serostatus"
          },
          {
            "code" : "DE201",
            "display" : "Contact date"
          },
          {
            "code" : "DE202",
            "display" : "ANC contact number"
          }
        ]
      }
    ]
  }
}

```
