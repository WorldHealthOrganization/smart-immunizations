# IMMZD2DTCholeraWCRBSVaccine3Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTCholeraWCRBSVaccine3Doses ValueSet for Decision Table**

## ValueSet: IMMZD2DTCholeraWCRBSVaccine3Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTCholeraWCRBSVaccine3DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTCholeraWCRBSVaccine3DosesVS |

 
ValueSet IMMZD2DTCholeraWCRBSVaccine3Doses for IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses. Business rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years 

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
  "id" : "IMMZD2DTCholeraWCRBSVaccine3DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTCholeraWCRBSVaccine3DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTCholeraWCRBSVaccine3DosesVS",
  "title" : "IMMZD2DTCholeraWCRBSVaccine3Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTCholeraWCRBSVaccine3Doses for IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 2 years-40",
            "display" : "Client's age is less than 2 years"
          },
          {
            "code" : "Client is not due for cholera vaccination-48",
            "display" : "Client is not due for cholera vaccination"
          },
          {
            "code" : "Client's age is 2–5 years-50",
            "display" : "Client's age is 2–5 years"
          },
          {
            "code" : "No cholera primary series dose was administered-116",
            "display" : "No cholera primary series dose was administered"
          },
          {
            "code" : "Client is due for cholera vaccination-44",
            "display" : "Client is due for cholera vaccination"
          },
          {
            "code" : "At least one cholera primary series dose was administered-117",
            "display" : "At least one cholera primary series dose was administered"
          },
          {
            "code" : "Dose number of the latest primary series dose is one-106",
            "display" : "Dose number of the latest primary series dose is one"
          },
          {
            "code" : "The latest cholera dose was administered less than 1 week ago-105",
            "display" : "The latest cholera dose was administered less than 1 week ago"
          },
          {
            "code" : "The latest cholera dose was administered more than 1 week and less than 6 weeks ago-115",
            "display" : "The latest cholera dose was administered more than 1 week and less than 6 weeks ago"
          },
          {
            "code" : "Dose number of the latest primary series dose is two-106",
            "display" : "Dose number of the latest primary series dose is two"
          },
          {
            "code" : "Dose number of the latest primary series dose is less than three-106",
            "display" : "Dose number of the latest primary series dose is less than three"
          },
          {
            "code" : "The latest cholera dose was administered more than 6 weeks ago-106",
            "display" : "The latest cholera dose was administered more than 6 weeks ago"
          },
          {
            "code" : "Client is due for cholera vaccination-155",
            "display" : "Client is due for cholera vaccination"
          },
          {
            "code" : "Dose number of the latest primary series dose is three-106",
            "display" : "Dose number of the latest primary series dose is three"
          },
          {
            "code" : "The latest cholera dose was administered less than {Member States defined lower limit} days ago-132",
            "display" : "The latest cholera dose was administered less than {Member States defined lower limit} days ago"
          },
          {
            "code" : "Primary series is complete. Client is not due for cholera booster dose-130",
            "display" : "Primary series is complete. Client is not due for cholera booster dose"
          },
          {
            "code" : "The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}-107",
            "display" : "The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}"
          },
          {
            "code" : "Primary series is complete. Client is due for cholera booster dose-126",
            "display" : "Primary series is complete. Client is due for cholera booster dose"
          },
          {
            "code" : "The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}-107",
            "display" : "The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}"
          },
          {
            "code" : "Client is due for cholera vaccination-167",
            "display" : "Client is due for cholera vaccination"
          }
        ]
      }
    ]
  }
}

```
