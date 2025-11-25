# IMMZD18SMeningococcalPolysaccharideVaccines ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeningococcalPolysaccharideVaccines ValueSet for Decision Table**

## ValueSet: IMMZD18SMeningococcalPolysaccharideVaccines ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SMeningococcalPolysaccharideVaccinesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD18SMeningococcalPolysaccharideVaccinesVS |

 
ValueSet IMMZD18SMeningococcalPolysaccharideVaccines for IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule. Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Polysaccharide vaccines, 1-dose and booster dose schedule 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 4 concepts.

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
  "id" : "IMMZD18SMeningococcalPolysaccharideVaccinesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SMeningococcalPolysaccharideVaccinesVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeningococcalPolysaccharideVaccinesVS",
  "title" : "IMMZD18SMeningococcalPolysaccharideVaccines ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD18SMeningococcalPolysaccharideVaccines for IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Polysaccharide vaccines, 1-dose and booster dose schedule",
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
            "code" : "One meningococcal dose from primary series was administered. The primary series has been completed-99",
            "display" : "One meningococcal dose from primary series was administered. The primary series has been completed"
          },
          {
            "code" : "Primary series has been completed-99",
            "display" : "Primary series has been completed"
          },
          {
            "code" : "Meningococcal booster dose was administered. The immunization schedule has been completed-120",
            "display" : "Meningococcal booster dose was administered. The immunization schedule has been completed"
          }
        ]
      }
    ]
  }
}

```
