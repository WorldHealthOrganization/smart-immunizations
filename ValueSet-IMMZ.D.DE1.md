# IMMZ.D.DE1 ValueSet for Immunization event status - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D.DE1 ValueSet for Immunization event status**

## ValueSet: IMMZ.D.DE1 ValueSet for Immunization event status 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE1 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_D_DE1 |

 
ValueSet for Immunization event status for IMMZ.D.DE1 

 **References** 

* [IMMZ.D13.Update client record](StructureDefinition-IMMZD13.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 3 concepts.

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
  "id" : "IMMZ.D.DE1",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE1",
  "version" : "0.2.0",
  "name" : "IMMZ_D_DE1",
  "title" : "IMMZ.D.DE1 ValueSet for Immunization event status",
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
  "description" : "ValueSet for Immunization event status for IMMZ.D.DE1",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [
          {
            "code" : "DE2",
            "display" : "Completed"
          },
          {
            "code" : "DE3",
            "display" : "Entered in error"
          },
          {
            "code" : "DE4",
            "display" : "Not done"
          }
        ]
      }
    ]
  }
}

```
