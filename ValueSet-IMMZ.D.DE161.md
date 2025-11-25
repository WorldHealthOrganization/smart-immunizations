# IMMZ.D.DE161 ValueSet for Potential contraindications - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D.DE161 ValueSet for Potential contraindications**

## ValueSet: IMMZ.D.DE161 ValueSet for Potential contraindications 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE161 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_D_DE161 |

 
ValueSet for Potential contraindications for IMMZ.D.DE161 

 **References** 

* [IMMZ.D5.Determine vaccine(s) to be administered based on contraindications](StructureDefinition-IMMZD5.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 22 concepts.

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
  "id" : "IMMZ.D.DE161",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE161",
  "version" : "0.2.0",
  "name" : "IMMZ_D_DE161",
  "title" : "IMMZ.D.DE161 ValueSet for Potential contraindications",
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
  "description" : "ValueSet for Potential contraindications for IMMZ.D.DE161",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [
          {
            "code" : "DE162",
            "display" : "Currently pregnant"
          },
          {
            "code" : "DE163",
            "display" : "Immunocompromised"
          },
          {
            "code" : "DE200",
            "display" : "Severely immunocompromised"
          },
          {
            "code" : "DE164",
            "display" : "Exposed to immunosuppressive treatment"
          },
          {
            "code" : "DE165",
            "display" : "Severely immunosuppressed"
          },
          {
            "code" : "DE187",
            "display" : "Immunodeficiency syndromes"
          },
          {
            "code" : "DE166",
            "display" : "History of anaphylactic reactions"
          },
          {
            "code" : "DE167",
            "display" : "Severe allergic reactions"
          },
          {
            "code" : "DE168",
            "display" : "Symptomatic HIV infection"
          },
          {
            "code" : "DE169",
            "display" : "Planning to get pregnant in the next month"
          },
          {
            "code" : "DE170",
            "display" : "Receiving blood products"
          },
          {
            "code" : "DE188",
            "display" : "Severe acute illness"
          },
          {
            "code" : "DE190",
            "display" : "TB disease"
          },
          {
            "code" : "DE191",
            "display" : "Breastfeeding"
          },
          {
            "code" : "DE192",
            "display" : "Spina bifida"
          },
          {
            "code" : "DE193",
            "display" : "Bladder exstrophy"
          },
          {
            "code" : "DE194",
            "display" : "Acute gastroenteritis"
          },
          {
            "code" : "DE195",
            "display" : "Moderate to severe fever"
          },
          {
            "code" : "DE196",
            "display" : "Prior history of intussusception"
          },
          {
            "code" : "DE197",
            "display" : "Altered immunocompetence"
          },
          {
            "code" : "DE198",
            "display" : "Hypersensitivity to vaccine components"
          },
          {
            "code" : "DE199",
            "display" : "Taking antibiotics"
          }
        ]
      }
    ]
  }
}

```
