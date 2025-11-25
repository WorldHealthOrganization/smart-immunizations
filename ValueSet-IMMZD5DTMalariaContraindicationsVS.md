# IMMZD5DTMalariaContraindications ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMalariaContraindications ValueSet for Decision Table**

## ValueSet: IMMZD5DTMalariaContraindications ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD5DTMalariaContraindicationsVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD5DTMalariaContraindicationsVS |

 
ValueSet IMMZD5DTMalariaContraindications for IMMZ.D5.DT.Malaria contraindications. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications Table: IMMZ.D5.DT.Malaria contraindications 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "IMMZD5DTMalariaContraindicationsVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD5DTMalariaContraindicationsVS",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMalariaContraindicationsVS",
  "title" : "IMMZD5DTMalariaContraindications ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD5DTMalariaContraindications for IMMZ.D5.DT.Malaria contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Malaria contraindications",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "The client has hypersensitivity to any of the vaccine components-72",
            "display" : "The client has hypersensitivity to any of the vaccine components"
          },
          {
            "code" : "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note-66",
            "display" : "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note"
          }
        ]
      }
    ]
  }
}

```
