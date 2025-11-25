# IMMZD5DTHibContraindications ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHibContraindications ValueSet for Decision Table**

## ValueSet: IMMZD5DTHibContraindications ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD5DTHibContraindicationsVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD5DTHibContraindicationsVS |

 
ValueSet IMMZD5DTHibContraindications for IMMZ.D5.DT.Hib contraindications. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) Table: IMMZ.D5.DT.Hib contraindications 

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
  "id" : "IMMZD5DTHibContraindicationsVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD5DTHibContraindicationsVS",
  "version" : "0.2.0",
  "name" : "IMMZD5DTHibContraindicationsVS",
  "title" : "IMMZD5DTHibContraindications ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD5DTHibContraindications for IMMZ.D5.DT.Hib contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9)\nTable: IMMZ.D5.DT.Hib contraindications",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "The client has a history of severe allergic reactions-59",
            "display" : "The client has a history of severe allergic reactions"
          },
          {
            "code" : "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.-66",
            "display" : "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note."
          }
        ]
      }
    ]
  }
}

```
