# IMMZ.Z.DE33 ValueSet for Tetanus and diphtheria-containing vaccines (DT) - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.DE33 ValueSet for Tetanus and diphtheria-containing vaccines (DT)**

## ValueSet: IMMZ.Z.DE33 ValueSet for Tetanus and diphtheria-containing vaccines (DT) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE33 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z_DE33 |

 
ValueSet for Tetanus and diphtheria-containing vaccines (DT) for IMMZ.Z.DE33 

 **References** 

* Included into [IMMZ_Z_VS](ValueSet-IMMZ.Z.VS.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 2 concepts.

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
  "id" : "IMMZ.Z.DE33",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE33",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_DE33",
  "title" : "IMMZ.Z.DE33 ValueSet for Tetanus and diphtheria-containing vaccines (DT)",
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
  "description" : "ValueSet for Tetanus and diphtheria-containing vaccines (DT) for IMMZ.Z.DE33",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [
          {
            "code" : "DE33",
            "display" : "Tetanus and diphtheria-containing vaccines (DT)"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XM4039",
            "display" : "Vaccines diphtheria with tetanus"
          }
        ]
      }
    ]
  }
}

```
