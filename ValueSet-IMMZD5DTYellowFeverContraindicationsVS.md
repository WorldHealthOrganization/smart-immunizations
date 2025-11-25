# IMMZD5DTYellowFeverContraindications ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTYellowFeverContraindications ValueSet for Decision Table**

## ValueSet: IMMZD5DTYellowFeverContraindications ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD5DTYellowFeverContraindicationsVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD5DTYellowFeverContraindicationsVS |

 
ValueSet IMMZD5DTYellowFeverContraindications for IMMZ.D5.DT.Yellow fever contraindications. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications Table: IMMZ.D5.DT.Yellow fever contraindications 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 10 concepts.

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
  "id" : "IMMZD5DTYellowFeverContraindicationsVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD5DTYellowFeverContraindicationsVS",
  "version" : "0.2.0",
  "name" : "IMMZD5DTYellowFeverContraindicationsVS",
  "title" : "IMMZD5DTYellowFeverContraindications ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD5DTYellowFeverContraindications for IMMZ.D5.DT.Yellow fever contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Yellow fever contraindications",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 6 months-41",
            "display" : "Client's age is less than 6 months"
          },
          {
            "code" : "Yellow fever vaccination is contraindicated-56",
            "display" : "Yellow fever vaccination is contraindicated"
          },
          {
            "code" : "Client's age is 6–9 months-52",
            "display" : "Client's age is 6–9 months"
          },
          {
            "code" : "Clinical judgement is required. Create a clinical note-66",
            "display" : "Clinical judgement is required. Create a clinical note"
          },
          {
            "code" : "Client's age is more than or equal to 60 years-41",
            "display" : "Client's age is more than or equal to 60 years"
          },
          {
            "code" : "The client has a history of severe allergic reactions-59",
            "display" : "The client has a history of severe allergic reactions"
          },
          {
            "code" : "Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note-66",
            "display" : "Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note"
          },
          {
            "code" : "The client is severely immunocompromised-60",
            "display" : "The client is severely immunocompromised"
          },
          {
            "code" : "The client is currently pregnant-52",
            "display" : "The client is currently pregnant"
          },
          {
            "code" : "The client is lactating-47",
            "display" : "The client is lactating"
          }
        ]
      }
    ]
  }
}

```
