# IMMZD2DTPolioIPVOnly ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTPolioIPVOnly ValueSet for Decision Table**

## ValueSet: IMMZD2DTPolioIPVOnly ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTPolioIPVOnlyVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTPolioIPVOnlyVS |

 
ValueSet IMMZD2DTPolioIPVOnly for IMMZ.D2.DT.Polio.IPV-only. Business rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 20 concepts.

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
  "id" : "IMMZD2DTPolioIPVOnlyVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTPolioIPVOnlyVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPolioIPVOnlyVS",
  "title" : "IMMZD2DTPolioIPVOnly ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTPolioIPVOnly for IMMZ.D2.DT.Polio.IPV-only.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "No poliovirus primary series doses were administered-130",
            "display" : "No poliovirus primary series doses were administered"
          },
          {
            "code" : "Client's age is less than 6 weeks-40",
            "display" : "Client's age is less than 6 weeks"
          },
          {
            "code" : "Client is not due for IPV vaccination-48",
            "display" : "Client is not due for IPV vaccination"
          },
          {
            "code" : "Client's age is more than or equal to 6 weeks-40",
            "display" : "Client's age is more than or equal to 6 weeks"
          },
          {
            "code" : "Client is due for IPV vaccination-44",
            "display" : "Client is due for IPV vaccination"
          },
          {
            "code" : "One poliovirus primary series dose was administered-130",
            "display" : "One poliovirus primary series dose was administered"
          },
          {
            "code" : "The latest poliovirus dose was administered less than 4 weeks ago-120",
            "display" : "The latest poliovirus dose was administered less than 4 weeks ago"
          },
          {
            "code" : "The latest poliovirus dose was administered more than 4 weeks ago-120",
            "display" : "The latest poliovirus dose was administered more than 4 weeks ago"
          },
          {
            "code" : "Two poliovirus primary series doses were administered-130",
            "display" : "Two poliovirus primary series doses were administered"
          },
          {
            "code" : "Three poliovirus primary series doses were administered-130",
            "display" : "Three poliovirus primary series doses were administered"
          },
          {
            "code" : "Client's age was more than 6 weeks when the primary series was started-138",
            "display" : "Client's age was more than 6 weeks when the primary series was started"
          },
          {
            "code" : "Polio immunization schedule is complete-157",
            "display" : "Polio immunization schedule is complete"
          },
          {
            "code" : "Client's age was 6 weeks when the primary series was started-138",
            "display" : "Client's age was 6 weeks when the primary series was started"
          },
          {
            "code" : "The latest poliovirus dose was administered less than 6 months ago-121",
            "display" : "The latest poliovirus dose was administered less than 6 months ago"
          },
          {
            "code" : "Primary series is complete. Client is not due for IPV booster dose-156",
            "display" : "Primary series is complete. Client is not due for IPV booster dose"
          },
          {
            "code" : "The latest poliovirus dose was administered more than 6 months ago-121",
            "display" : "The latest poliovirus dose was administered more than 6 months ago"
          },
          {
            "code" : "No polio booster dose was administered-128",
            "display" : "No polio booster dose was administered"
          },
          {
            "code" : "Primary series is complete. Client is due for IPV booster dose-152",
            "display" : "Primary series is complete. Client is due for IPV booster dose"
          },
          {
            "code" : "Polio booster dose was administered-128",
            "display" : "Polio booster dose was administered"
          },
          {
            "code" : "Polio immunization schedule is complete-49",
            "display" : "Polio immunization schedule is complete"
          }
        ]
      }
    ]
  }
}

```
