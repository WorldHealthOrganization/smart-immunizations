# IMMZD2DTPolioBirthDose ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTPolioBirthDose ValueSet for Decision Table**

## ValueSet: IMMZD2DTPolioBirthDose ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTPolioBirthDoseVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTPolioBirthDoseVS |

 
ValueSet IMMZD2DTPolioBirthDose for IMMZ.D2.DT.Polio.Birth dose. Business rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: Birth dose administration as part of "bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 6 concepts.

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
  "id" : "IMMZD2DTPolioBirthDoseVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTPolioBirthDoseVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPolioBirthDoseVS",
  "title" : "IMMZD2DTPolioBirthDose ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTPolioBirthDose for IMMZ.D2.DT.Polio.Birth dose.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Birth dose administration as part of \"bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "bOPV birth dose (a zero dose) was not administered-146",
            "display" : "bOPV birth dose (a zero dose) was not administered"
          },
          {
            "code" : "Client's age is less than 1 week-39",
            "display" : "Client's age is less than 1 week"
          },
          {
            "code" : "Client is due for the bOPV birth dose-87",
            "display" : "Client is due for the bOPV birth dose"
          },
          {
            "code" : "Client's age is more than or equal to 1 week-39",
            "display" : "Client's age is more than or equal to 1 week"
          },
          {
            "code" : "Client is not due for the bOPV birth dose-48",
            "display" : "Client is not due for the bOPV birth dose"
          },
          {
            "code" : "bOPV birth dose (a zero dose) was administered-146",
            "display" : "bOPV birth dose (a zero dose) was administered"
          }
        ]
      }
    ]
  }
}

```
