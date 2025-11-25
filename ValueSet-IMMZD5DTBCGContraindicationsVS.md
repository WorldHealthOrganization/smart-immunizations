# IMMZD5DTBCGContraindications ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTBCGContraindications ValueSet for Decision Table**

## ValueSet: IMMZD5DTBCGContraindications ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD5DTBCGContraindicationsVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD5DTBCGContraindicationsVS |

 
ValueSet IMMZD5DTBCGContraindications for IMMZ.D5.DT.BCG contraindications. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications Table: IMMZ.D5.DT.BCG contraindications 

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
  "id" : "IMMZD5DTBCGContraindicationsVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD5DTBCGContraindicationsVS",
  "version" : "0.2.0",
  "name" : "IMMZD5DTBCGContraindicationsVS",
  "title" : "IMMZD5DTBCGContraindications ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD5DTBCGContraindications for IMMZ.D5.DT.BCG contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.BCG contraindications",
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
            "code" : "Bacille Calmette–Guérin (BCG) vaccination is contraindicated-57",
            "display" : "Bacille Calmette–Guérin (BCG) vaccination is contraindicated"
          },
          {
            "code" : "The client has history of severe allergic reactions-60",
            "display" : "The client has history of severe allergic reactions"
          },
          {
            "code" : "BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.-67",
            "display" : "BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note."
          },
          {
            "code" : "The client has immunodeficiency syndromes-60",
            "display" : "The client has immunodeficiency syndromes"
          },
          {
            "code" : "BCG vaccination is contraindicated-57",
            "display" : "BCG vaccination is contraindicated"
          },
          {
            "code" : "The client is exposed to immunosuppressive treatment-72",
            "display" : "The client is exposed to immunosuppressive treatment"
          },
          {
            "code" : "Client's age is less than 1 year-14",
            "display" : "Client's age is less than 1 year"
          },
          {
            "code" : "Client's age is more than or equal to 1 year-14",
            "display" : "Client's age is more than or equal to 1 year"
          }
        ]
      }
    ]
  }
}

```
