# IMMZ.I.DE30 ValueSet for Disaggregation group - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.I.DE30 ValueSet for Disaggregation group**

## ValueSet: IMMZ.I.DE30 ValueSet for Disaggregation group 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.I.DE30 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_I_DE30 |

 
ValueSet for Disaggregation group for IMMZ.I.DE30 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "IMMZ.I.DE30",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.I.DE30",
  "version" : "0.2.0",
  "name" : "IMMZ_I_DE30",
  "title" : "IMMZ.I.DE30 ValueSet for Disaggregation group",
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
  "description" : "ValueSet for Disaggregation group for IMMZ.I.DE30",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
        "concept" : [
          {
            "code" : "DE31",
            "display" : "By-Sex"
          },
          {
            "code" : "DE32",
            "display" : "By-Administrative Area"
          },
          {
            "code" : "DE33",
            "display" : "By-Age group"
          },
          {
            "code" : "DE34",
            "display" : "By-Dose number"
          },
          {
            "code" : "DE35",
            "display" : "By-Vaccine type"
          },
          {
            "code" : "DE36",
            "display" : "By-Vaccine manufacturer"
          },
          {
            "code" : "DE37",
            "display" : "By-Reaction manifestation"
          },
          {
            "code" : "DE39",
            "display" : "By-Type of reaction"
          },
          {
            "code" : "DE54",
            "display" : "By-Risk and occupational group"
          }
        ]
      }
    ]
  }
}

```
