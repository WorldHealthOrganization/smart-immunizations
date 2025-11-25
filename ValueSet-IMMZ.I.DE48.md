# IMMZ.I.DE48 ValueSet for Closed stock discarded type - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.I.DE48 ValueSet for Closed stock discarded type**

## ValueSet: IMMZ.I.DE48 ValueSet for Closed stock discarded type 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.I.DE48 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_I_DE48 |

 
ValueSet for Closed stock discarded type for IMMZ.I.DE48 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 5 concepts.

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
  "id" : "IMMZ.I.DE48",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.I.DE48",
  "version" : "0.2.0",
  "name" : "IMMZ_I_DE48",
  "title" : "IMMZ.I.DE48 ValueSet for Closed stock discarded type",
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
  "description" : "ValueSet for Closed stock discarded type for IMMZ.I.DE48",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
        "concept" : [
          {
            "code" : "DE49",
            "display" : "Broken/damaged"
          },
          {
            "code" : "DE50",
            "display" : "Expired product"
          },
          {
            "code" : "DE51",
            "display" : "Cold storage malfunction"
          },
          {
            "code" : "DE52",
            "display" : "Vaccine vial monitor status change"
          },
          {
            "code" : "DE53",
            "display" : "Frozen"
          }
        ]
      }
    ]
  }
}

```
