# IMMZD18SCholeraWCRBSVaccine3Doses ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SCholeraWCRBSVaccine3Doses ValueSet for Decision Table**

## ValueSet: IMMZD18SCholeraWCRBSVaccine3Doses ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD18SCholeraWCRBSVaccine3DosesVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD18SCholeraWCRBSVaccine3DosesVS |

 
ValueSet IMMZD18SCholeraWCRBSVaccine3Doses for IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule. Business rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Whole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 3-dose schedule for clients aged 2–5 years 

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
  "id" : "IMMZD18SCholeraWCRBSVaccine3DosesVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD18SCholeraWCRBSVaccine3DosesVS",
  "version" : "0.2.0",
  "name" : "IMMZD18SCholeraWCRBSVaccine3DosesVS",
  "title" : "IMMZD18SCholeraWCRBSVaccine3Doses ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD18SCholeraWCRBSVaccine3Doses for IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 3-dose schedule for clients aged 2–5 years",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Child's birth-792",
            "display" : "Child's birth"
          },
          {
            "code" : "First cholera dose was administered-68",
            "display" : "First cholera dose was administered"
          },
          {
            "code" : "First cholera dose was administered-125",
            "display" : "First cholera dose was administered"
          },
          {
            "code" : "Second cholera dose was administered-68",
            "display" : "Second cholera dose was administered"
          },
          {
            "code" : "Second cholera dose was administered-125",
            "display" : "Second cholera dose was administered"
          },
          {
            "code" : "Three doses from primary series were administered. The primary series has been completed-93",
            "display" : "Three doses from primary series were administered. The primary series has been completed"
          },
          {
            "code" : "Primary series for cholera has been completed and latest cholera dose was administered approximately less than 6 months ago-295",
            "display" : "Primary series for cholera has been completed and latest cholera dose was administered approximately less than 6 months ago"
          },
          {
            "code" : "Booster dose was administered approximately less than 6 months ago-176",
            "display" : "Booster dose was administered approximately less than 6 months ago"
          }
        ]
      }
    ]
  }
}

```
