# IMMZ.D.DE5 ValueSet for Reason vaccine was not administered - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D.DE5 ValueSet for Reason vaccine was not administered**

## ValueSet: IMMZ.D.DE5 ValueSet for Reason vaccine was not administered 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE5 | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_D_DE5 |

 
ValueSet for Reason vaccine was not administered for IMMZ.D.DE5 

 **References** 

* [SMART Guidelines Immunizations Immunization](StructureDefinition-IMMZ.Immunization.md)
* [IMMZ.D13.Update client record](StructureDefinition-IMMZD13.md)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 12 concepts.

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
  "id" : "IMMZ.D.DE5",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE5",
  "version" : "0.2.0",
  "name" : "IMMZ_D_DE5",
  "title" : "IMMZ.D.DE5 ValueSet for Reason vaccine was not administered",
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
  "description" : "ValueSet for Reason vaccine was not administered for IMMZ.D.DE5",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [
          {
            "code" : "DE6",
            "display" : "Immunity"
          },
          {
            "code" : "DE7",
            "display" : "Medical precaution"
          },
          {
            "code" : "DE8",
            "display" : "Product out of stock"
          },
          {
            "code" : "DE9",
            "display" : "Client objection"
          },
          {
            "code" : "DE10",
            "display" : "Caregiver refusal"
          },
          {
            "code" : "DE11",
            "display" : "Unspecified reason"
          },
          {
            "code" : "DE12",
            "display" : "Client allergy to vaccine or component"
          },
          {
            "code" : "DE13",
            "display" : "Immunocompromised"
          },
          {
            "code" : "DE14",
            "display" : "Chronic illness or condition"
          },
          {
            "code" : "DE15",
            "display" : "Acute illness"
          },
          {
            "code" : "DE16",
            "display" : "Had the disease"
          },
          {
            "code" : "DE17",
            "display" : "Immunization not carried out for other reasons"
          }
        ]
      }
    ]
  }
}

```
