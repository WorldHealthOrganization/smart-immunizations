# IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses ValueSet for Decision Table**

## ValueSet: IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesVS |

 
ValueSet IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses for IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses. Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesVS",
  "title" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses for IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 9 months-41",
            "display" : "Client's age is less than 9 months"
          },
          {
            "code" : "Client is not due for meningococcal vaccination-48",
            "display" : "Client is not due for meningococcal vaccination"
          },
          {
            "code" : "No meningococcal primary series dose was administered-122",
            "display" : "No meningococcal primary series dose was administered"
          },
          {
            "code" : "Client's age is more than or equal to 9 months-41",
            "display" : "Client's age is more than or equal to 9 months"
          },
          {
            "code" : "Client is due for meningococcal vaccination-44",
            "display" : "Client is due for meningococcal vaccination"
          },
          {
            "code" : "One meningococcal primary series dose was administered-122",
            "display" : "One meningococcal primary series dose was administered"
          },
          {
            "code" : "Client's age was less than or equal to 23 months when the primary series was started-110",
            "display" : "Client's age was less than or equal to 23 months when the primary series was started"
          },
          {
            "code" : "The latest meningococcal dose was administered less than 3 months ago-106",
            "display" : "The latest meningococcal dose was administered less than 3 months ago"
          },
          {
            "code" : "The latest meningococcal dose was administered more than 3 months ago-106",
            "display" : "The latest meningococcal dose was administered more than 3 months ago"
          },
          {
            "code" : "Client's age was more than 23 months when the primary series was started-110",
            "display" : "Client's age was more than 23 months when the primary series was started"
          },
          {
            "code" : "Meningococcal immunization schedule is complete-149",
            "display" : "Meningococcal immunization schedule is complete"
          },
          {
            "code" : "Two meningococcal primary series doses were administered-122",
            "display" : "Two meningococcal primary series doses were administered"
          }
        ]
      }
    ]
  }
}

```
