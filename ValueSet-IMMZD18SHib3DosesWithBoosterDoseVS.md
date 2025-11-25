# IMMZD18SHib3DosesWithBoosterDose ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SHib3DosesWithBoosterDose ValueSet for Decision Table**

## ValueSet: IMMZD18SHib3DosesWithBoosterDose ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SHib3DosesWithBoosterDoseVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD18SHib3DosesWithBoosterDoseVS |

 
ValueSet IMMZD18SHib3DosesWithBoosterDose for IMMZ.D18.S.Hib.3 doses with booster dose schedule. Business rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: 3 primary doses with a booster dose (3p+1) schedule 

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
  "id" : "IMMZD18SHib3DosesWithBoosterDoseVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SHib3DosesWithBoosterDoseVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SHib3DosesWithBoosterDoseVS",
  "title" : "IMMZD18SHib3DosesWithBoosterDose ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD18SHib3DosesWithBoosterDose for IMMZ.D18.S.Hib.3 doses with booster dose schedule.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses with a booster dose (3p+1) schedule",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Child's birth-0",
            "display" : "Child's birth"
          },
          {
            "code" : "First Hib dose from the primary series was administered-279",
            "display" : "First Hib dose from the primary series was administered"
          },
          {
            "code" : "First Hib dose from the primary series was administered to the client within 1 year of age. Client's age is less than 5 years-302",
            "display" : "First Hib dose from the primary series was administered to the client within 1 year of age. Client's age is less than 5 years"
          },
          {
            "code" : "Second Hib dose from the primary series was administered-122",
            "display" : "Second Hib dose from the primary series was administered"
          },
          {
            "code" : "Second Hib dose from the primary series was administered. Client's age is less than 5 years-167",
            "display" : "Second Hib dose from the primary series was administered. Client's age is less than 5 years"
          },
          {
            "code" : "Third Hib dose from the primary series was administered. The primary series has been completed-100",
            "display" : "Third Hib dose from the primary series was administered. The primary series has been completed"
          },
          {
            "code" : "Third Hib dose from the primary series was administered. Child's age is less than 5 years-167",
            "display" : "Third Hib dose from the primary series was administered. Child's age is less than 5 years"
          },
          {
            "code" : "One Hib booster dose was administered. Hib immunization schedule has been completed-120",
            "display" : "One Hib booster dose was administered. Hib immunization schedule has been completed"
          }
        ]
      }
    ]
  }
}

```
