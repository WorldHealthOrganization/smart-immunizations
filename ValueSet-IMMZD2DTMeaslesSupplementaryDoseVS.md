# IMMZD2DTMeaslesSupplementaryDose ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTMeaslesSupplementaryDose ValueSet for Decision Table**

## ValueSet: IMMZD2DTMeaslesSupplementaryDose ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeaslesSupplementaryDoseVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTMeaslesSupplementaryDoseVS |

 
ValueSet IMMZD2DTMeaslesSupplementaryDose for IMMZ.D2.DT.Measles.Supplementary dose. Business rule: Check for contraindications before administering the vaccine(s) due Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications Table: IMMZ.D2.DT.Measles.Supplementary dose 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 18 concepts.

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
  "id" : "IMMZD2DTMeaslesSupplementaryDoseVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeaslesSupplementaryDoseVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeaslesSupplementaryDoseVS",
  "title" : "IMMZD2DTMeaslesSupplementaryDose ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTMeaslesSupplementaryDose for IMMZ.D2.DT.Measles.Supplementary dose.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D2.DT.Measles.Supplementary dose",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Measles supplementary dose was not administered-131",
            "display" : "Measles supplementary dose was not administered"
          },
          {
            "code" : "Measles routine immunization schedule is complete-104",
            "display" : "Measles routine immunization schedule is complete"
          },
          {
            "code" : "Live vaccine was administered in the past 4 weeks-92",
            "display" : "Live vaccine was administered in the past 4 weeks"
          },
          {
            "code" : "Client is not due for measles supplementary dose-48",
            "display" : "Client is not due for measles supplementary dose"
          },
          {
            "code" : "No live vaccine was administered in the past 4 weeks-92",
            "display" : "No live vaccine was administered in the past 4 weeks"
          },
          {
            "code" : "Consider measles supplementary dose. Create a clinical note-66",
            "display" : "Consider measles supplementary dose. Create a clinical note"
          },
          {
            "code" : "Measles supplementary dose was administered-131",
            "display" : "Measles supplementary dose was administered"
          },
          {
            "code" : "Measles immunization schedule is complete-49",
            "display" : "Measles immunization schedule is complete"
          },
          {
            "code" : "Decision ID-0",
            "display" : "Decision ID"
          },
          {
            "code" : "IMMZ.D5.DT.Measles contraindications-0",
            "display" : "IMMZ.D5.DT.Measles contraindications"
          },
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
