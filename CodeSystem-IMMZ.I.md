# IMMZ.I CodeSystem for Data Elements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.I CodeSystem for Data Elements**

## CodeSystem: IMMZ.I CodeSystem for Data Elements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.I | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_I |

 
CodeSystem for IMMZ.I Data Elements 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMMZ_I_DE30](ValueSet-IMMZ.I.DE30.md)
* [IMMZ_I_DE48](ValueSet-IMMZ.I.DE48.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IMMZ.I",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
  "version" : "0.2.0",
  "name" : "IMMZ_I",
  "title" : "IMMZ.I CodeSystem for Data Elements",
  "status" : "active",
  "experimental" : false,
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
  "description" : "CodeSystem for IMMZ.I Data Elements",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 27,
  "concept" : [
    {
      "code" : "DE40",
      "display" : "Number of doses per vial",
      "definition" : "The number of doses contained within a vial"
    },
    {
      "code" : "DE41",
      "display" : "Initial balance",
      "definition" : "The initial quantity of vials in stock at the beginning of a specific reporting period"
    },
    {
      "code" : "DE42",
      "display" : "Closing balance",
      "definition" : "The quantity of vials in stock at the end of a specific reporting period"
    },
    {
      "code" : "DE43",
      "display" : "Administered doses",
      "definition" : "The quantity of vials that have been administered to clients during a specified time frame"
    },
    {
      "code" : "DE44",
      "display" : "Stock opened",
      "definition" : "The quantity of vials that were opened during a specific period"
    },
    {
      "code" : "DE45",
      "display" : "Stock received",
      "definition" : "The quantity of vials that have been received from external sources, such as suppliers, during a specific period"
    },
    {
      "code" : "DE46",
      "display" : "Physical count adjustment",
      "definition" : "An adjustment made to the stock level to correct discrepancies between the recorded inventory and the actual physical count, which may be necessary owing to errors, theft or other discrepancies"
    },
    {
      "code" : "DE47",
      "display" : "Closed stock discarded",
      "definition" : "The quantity of vials that were not opened and have been wasted or discarded, owing to expiration or other reasons, during a specific period"
    },
    {
      "code" : "DE48",
      "display" : "Closed stock discarded type",
      "definition" : "Specific reason for the disposal of vaccine"
    },
    {
      "code" : "DE49",
      "display" : "Broken/damaged",
      "definition" : "The vaccine is physically damaged or broken, rendering it unsuitable for use"
    },
    {
      "code" : "DE50",
      "display" : "Expired product",
      "definition" : "The vaccine has reached its expiration date and is no longer safe or effective for use"
    },
    {
      "code" : "DE51",
      "display" : "Cold storage malfunction",
      "definition" : "There has been a malfunction or failure in the cold storage equipment, which has led to the degradation of the vaccine"
    },
    {
      "code" : "DE52",
      "display" : "Vaccine vial monitor status change",
      "definition" : "The vaccine vial monitor has indicated a change in status, possibly indicating that the vaccines may no longer be viable"
    },
    {
      "code" : "DE53",
      "display" : "Frozen",
      "definition" : "The vaccine has been exposed to freezing temperatures, making it unsuitable for use as freezing can affect the integrity and efficacy of certain immunization products"
    },
    {
      "code" : "DE18",
      "display" : "Report subject area",
      "definition" : "Location (vaccination location or place) for which the data in the report are being represented"
    },
    {
      "code" : "DE20",
      "display" : "Reporting period start date",
      "definition" : "The start date of the reporting period for which data in the report have been included"
    },
    {
      "code" : "DE21",
      "display" : "Reporting period end date",
      "definition" : "The end date of the reporting period for which data in the report have been included"
    },
    {
      "code" : "DE30",
      "display" : "Disaggregation group",
      "definition" : "Indicates the overall strata or disaggregation represented in the report (e.g. by gender, by region, by age group, etc.)"
    },
    {
      "code" : "DE31",
      "display" : "By-Sex",
      "definition" : "A disaggregation grouped by the indicator population's sex values"
    },
    {
      "code" : "DE32",
      "display" : "By-Administrative Area",
      "definition" : "A disaggregation grouped by the indicator population's administrative regions/areas"
    },
    {
      "code" : "DE33",
      "display" : "By-Age group",
      "definition" : "A disaggregation grouped by the indicator population's age groups"
    },
    {
      "code" : "DE34",
      "display" : "By-Dose number",
      "definition" : "A disaggregation grouped by the indicator population's dose numbers for a specific vaccine"
    },
    {
      "code" : "DE35",
      "display" : "By-Vaccine type",
      "definition" : "A disaggregation grouped by the indicator population's vaccine types"
    },
    {
      "code" : "DE36",
      "display" : "By-Vaccine manufacturer",
      "definition" : "A disaggregation grouped by the indicator population's vaccine manufacturers for a specific vaccine"
    },
    {
      "code" : "DE37",
      "display" : "By-Reaction manifestation",
      "definition" : "A disaggregation grouped by the indicator population's reaction manifestations for a specific vaccine"
    },
    {
      "code" : "DE39",
      "display" : "By-Type of reaction",
      "definition" : "A disaggregation grouped by the indicator population's type of reaction for a specific vaccine"
    },
    {
      "code" : "DE54",
      "display" : "By-Risk and occupational group",
      "definition" : "A disaggregation grouped by the indicator population's risk and occupational group"
    }
  ]
}

```
