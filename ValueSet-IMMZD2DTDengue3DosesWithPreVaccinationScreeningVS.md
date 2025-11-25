# IMMZD2DTDengue3DosesWithPreVaccinationScreening ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTDengue3DosesWithPreVaccinationScreening ValueSet for Decision Table**

## ValueSet: IMMZD2DTDengue3DosesWithPreVaccinationScreening ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTDengue3DosesWithPreVaccinationScreeningVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTDengue3DosesWithPreVaccinationScreeningVS |

 
ValueSet IMMZD2DTDengue3DosesWithPreVaccinationScreening for IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening. Business rule: Determine if the client is due for a dengue vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 14 concepts.

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
  "id" : "IMMZD2DTDengue3DosesWithPreVaccinationScreeningVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTDengue3DosesWithPreVaccinationScreeningVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTDengue3DosesWithPreVaccinationScreeningVS",
  "title" : "IMMZD2DTDengue3DosesWithPreVaccinationScreening ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTDengue3DosesWithPreVaccinationScreening for IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening.\nBusiness rule: Determine if the client is due for a dengue vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 9 years-40",
            "display" : "Client's age is less than 9 years"
          },
          {
            "code" : "Client is not due for dengue vaccination-48",
            "display" : "Client is not due for dengue vaccination"
          },
          {
            "code" : "Client's age is more than 45 years-41",
            "display" : "Client's age is more than 45 years"
          },
          {
            "code" : "Client's dengue serostatus is negative-32",
            "display" : "Client's dengue serostatus is negative"
          },
          {
            "code" : "No dengue primary series doses were administered-115",
            "display" : "No dengue primary series doses were administered"
          },
          {
            "code" : "Client's age is between 9 years and 45 years-51",
            "display" : "Client's age is between 9 years and 45 years"
          },
          {
            "code" : "Client's dengue serostatus is positive-32",
            "display" : "Client's dengue serostatus is positive"
          },
          {
            "code" : "Client is due for dengue vaccination-44",
            "display" : "Client is due for dengue vaccination"
          },
          {
            "code" : "One dengue primary series dose was administered-115",
            "display" : "One dengue primary series dose was administered"
          },
          {
            "code" : "The latest dengue dose was administered less than 6 months ago-106",
            "display" : "The latest dengue dose was administered less than 6 months ago"
          },
          {
            "code" : "The latest dengue dose was administered more than 6 months ago-106",
            "display" : "The latest dengue dose was administered more than 6 months ago"
          },
          {
            "code" : "Two dengue primary series doses were administered-115",
            "display" : "Two dengue primary series doses were administered"
          },
          {
            "code" : "Three dengue primary series doses were administered-115",
            "display" : "Three dengue primary series doses were administered"
          },
          {
            "code" : "Dengue immunization schedule is complete-143",
            "display" : "Dengue immunization schedule is complete"
          }
        ]
      }
    ]
  }
}

```
