# IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table**

## ValueSet: IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineVS |

 
ValueSet IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine for IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine. Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Monovalent MenC conjugate vaccine schedule 

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
  "id" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineVS",
  "title" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine for IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Monovalent MenC conjugate vaccine schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 2 months-41",
            "display" : "Client's age is less than 2 months"
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
            "code" : "Client's age is more than or equal to 2 months-41",
            "display" : "Client's age is more than or equal to 2 months"
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
            "code" : "Client's age was less than or equal to 11 months when the primary series was started-110",
            "display" : "Client's age was less than or equal to 11 months when the primary series was started"
          },
          {
            "code" : "The latest meningococcal dose was administered less than 2 months ago-106",
            "display" : "The latest meningococcal dose was administered less than 2 months ago"
          },
          {
            "code" : "The latest meningococcal dose was administered more than 2 months ago-106",
            "display" : "The latest meningococcal dose was administered more than 2 months ago"
          },
          {
            "code" : "Client's age was more than 11 months when the primary series was started-110",
            "display" : "Client's age was more than 11 months when the primary series was started"
          },
          {
            "code" : "Meningococcal immunization schedule is complete-149",
            "display" : "Meningococcal immunization schedule is complete"
          },
          {
            "code" : "Two meningococcal primary series doses were administered-122",
            "display" : "Two meningococcal primary series doses were administered"
          },
          {
            "code" : "The latest meningococcal dose was administered less than 1 year ago-111",
            "display" : "The latest meningococcal dose was administered less than 1 year ago"
          },
          {
            "code" : "No meningococcal booster dose was administered-120",
            "display" : "No meningococcal booster dose was administered"
          },
          {
            "code" : "The latest meningococcal dose was administered more than 1 year ago-111",
            "display" : "The latest meningococcal dose was administered more than 1 year ago"
          },
          {
            "code" : "The primary series is complete. Client is due for meningococcal booster dose-144",
            "display" : "The primary series is complete. Client is due for meningococcal booster dose"
          },
          {
            "code" : "Meningococcal booster dose was administered-120",
            "display" : "Meningococcal booster dose was administered"
          },
          {
            "code" : "Meningococcal immunization schedule is complete-49",
            "display" : "Meningococcal immunization schedule is complete"
          }
        ]
      }
    ]
  }
}

```
