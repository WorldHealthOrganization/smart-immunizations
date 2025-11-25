# IMMZD5DTMeaslesContraindications ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMeaslesContraindications ValueSet for Decision Table**

## ValueSet: IMMZD5DTMeaslesContraindications ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD5DTMeaslesContraindicationsVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD5DTMeaslesContraindicationsVS |

 
ValueSet IMMZD5DTMeaslesContraindications for IMMZ.D5.DT.Measles contraindications. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications Table: IMMZ.D5.DT.Measles contraindications 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 8 concepts.

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
  "id" : "IMMZD5DTMeaslesContraindicationsVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD5DTMeaslesContraindicationsVS",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMeaslesContraindicationsVS",
  "title" : "IMMZD5DTMeaslesContraindications ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD5DTMeaslesContraindications for IMMZ.D5.DT.Measles contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Measles contraindications",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "The client is pregnant-52",
            "display" : "The client is pregnant"
          },
          {
            "code" : "Measles vaccination contraindicated-56",
            "display" : "Measles vaccination contraindicated"
          },
          {
            "code" : "The client has history of anaphylactic reactions-67",
            "display" : "The client has history of anaphylactic reactions"
          },
          {
            "code" : "Measles vaccination could be contraindicated. Clinical judgement required. Create a clinical note-66",
            "display" : "Measles vaccination could be contraindicated. Clinical judgement required. Create a clinical note"
          },
          {
            "code" : "The client has history of severe allergic reactions-59",
            "display" : "The client has history of severe allergic reactions"
          },
          {
            "code" : "Clinical judgement required. Create a clinical note-66",
            "display" : "Clinical judgement required. Create a clinical note"
          },
          {
            "code" : "The client is severely immunosuppressed-59",
            "display" : "The client is severely immunosuppressed"
          },
          {
            "code" : "The client has a symptomatic HIV infection-59",
            "display" : "The client has a symptomatic HIV infection"
          }
        ]
      }
    ]
  }
}

```
