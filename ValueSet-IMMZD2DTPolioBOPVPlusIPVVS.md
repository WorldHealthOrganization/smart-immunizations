# IMMZD2DTPolioBOPVPlusIPV ValueSet for Decision Table - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTPolioBOPVPlusIPV ValueSet for Decision Table**

## ValueSet: IMMZD2DTPolioBOPVPlusIPV ValueSet for Decision Table 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZD2DTPolioBOPVPlusIPVVS | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZD2DTPolioBOPVPlusIPVVS |

 
ValueSet IMMZD2DTPolioBOPVPlusIPV for IMMZ.D2.DT.Polio.bOPV plus IPV. Business rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule Trigger: IMMZ.D2 Determine required vaccination(s) if any Table: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set expansion contains 32 concepts.

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
  "id" : "IMMZD2DTPolioBOPVPlusIPVVS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZD2DTPolioBOPVPlusIPVVS",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPolioBOPVPlusIPVVS",
  "title" : "IMMZD2DTPolioBOPVPlusIPV ValueSet for Decision Table",
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
  "description" : "ValueSet IMMZD2DTPolioBOPVPlusIPV for IMMZ.D2.DT.Polio.bOPV plus IPV.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: \"Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (applicable for all countries)",
  "compose" : {
    "include" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZDAK",
        "concept" : [
          {
            "code" : "Client's age is less than 6 weeks-40",
            "display" : "Client's age is less than 6 weeks"
          },
          {
            "code" : "Client is not due for bOPV vaccination-48",
            "display" : "Client is not due for bOPV vaccination"
          },
          {
            "code" : "No poliovirus primary series doses were administered-130",
            "display" : "No poliovirus primary series doses were administered"
          },
          {
            "code" : "Client's age is between 6 weeks and 3 months-51",
            "display" : "Client's age is between 6 weeks and 3 months"
          },
          {
            "code" : "Client is due for bOPV vaccination-87",
            "display" : "Client is due for bOPV vaccination"
          },
          {
            "code" : "Client's age is more than 3 months-41",
            "display" : "Client's age is more than 3 months"
          },
          {
            "code" : "Client is due for bOPV and IPV vaccination-133",
            "display" : "Client is due for bOPV and IPV vaccination"
          },
          {
            "code" : "One poliovirus primary series dose was administered-130",
            "display" : "One poliovirus primary series dose was administered"
          },
          {
            "code" : "Client's age is between 6 weeks and 14 weeks-51",
            "display" : "Client's age is between 6 weeks and 14 weeks"
          },
          {
            "code" : "The latest bOPV dose was administered less than 4 weeks ago-159",
            "display" : "The latest bOPV dose was administered less than 4 weeks ago"
          },
          {
            "code" : "Client is not due for polio vaccination-48",
            "display" : "Client is not due for polio vaccination"
          },
          {
            "code" : "The latest bOPV dose was administered more than 4 weeks ago-159",
            "display" : "The latest bOPV dose was administered more than 4 weeks ago"
          },
          {
            "code" : "The poliovirus dose administered is bOPV-115",
            "display" : "The poliovirus dose administered is bOPV"
          },
          {
            "code" : "Client's age is more than or equal to 14 weeks-41",
            "display" : "Client's age is more than or equal to 14 weeks"
          },
          {
            "code" : "Client is due for IPV vaccination-86",
            "display" : "Client is due for IPV vaccination"
          },
          {
            "code" : "The poliovirus dose administered is IPV-115",
            "display" : "The poliovirus dose administered is IPV"
          },
          {
            "code" : "The latest IPV dose was administered less than 4 months ago-159",
            "display" : "The latest IPV dose was administered less than 4 months ago"
          },
          {
            "code" : "The latest IPV dose was administered more than 4 months ago-159",
            "display" : "The latest IPV dose was administered more than 4 months ago"
          },
          {
            "code" : "Two poliovirus primary series doses were administered-130",
            "display" : "Two poliovirus primary series doses were administered"
          },
          {
            "code" : "The two doses administered are bOPV-115",
            "display" : "The two doses administered are bOPV"
          },
          {
            "code" : "From the two doses administered one is bOPV and one is IPV-115",
            "display" : "From the two doses administered one is bOPV and one is IPV"
          },
          {
            "code" : "The two doses administered are IPV-115",
            "display" : "The two doses administered are IPV"
          },
          {
            "code" : "Three poliovirus primary series doses were administered-130",
            "display" : "Three poliovirus primary series doses were administered"
          },
          {
            "code" : "The three doses administered are bOPV-115",
            "display" : "The three doses administered are bOPV"
          },
          {
            "code" : "Client's age is less than 14 weeks-41",
            "display" : "Client's age is less than 14 weeks"
          },
          {
            "code" : "From the three doses administered, one is IPV and two are bOPV-115",
            "display" : "From the three doses administered, one is IPV and two are bOPV"
          },
          {
            "code" : "From the three doses administered, one is bOPV and two are IPV-115",
            "display" : "From the three doses administered, one is bOPV and two are IPV"
          },
          {
            "code" : "Four poliovirus primary series doses were administered-130",
            "display" : "Four poliovirus primary series doses were administered"
          },
          {
            "code" : "From the four doses administered, one is IPV and three are bOPV-115",
            "display" : "From the four doses administered, one is IPV and three are bOPV"
          },
          {
            "code" : "From the four doses administered, two are IPV and two are bOPV-115",
            "display" : "From the four doses administered, two are IPV and two are bOPV"
          },
          {
            "code" : "Five poliovirus primary series doses were administered-130",
            "display" : "Five poliovirus primary series doses were administered"
          },
          {
            "code" : "Polio immunization schedule is complete-157",
            "display" : "Polio immunization schedule is complete"
          }
        ]
      }
    ]
  }
}

```
