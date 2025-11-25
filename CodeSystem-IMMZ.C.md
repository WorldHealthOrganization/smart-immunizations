# IMMZ.C CodeSystem for Data Elements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.C CodeSystem for Data Elements**

## CodeSystem: IMMZ.C CodeSystem for Data Elements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.C | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_C |

 
CodeSystem for IMMZ.C Data Elements 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMMZ_C_DE5](ValueSet-IMMZ.C.DE5.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IMMZ.C",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
  "version" : "0.2.0",
  "name" : "IMMZ_C",
  "title" : "IMMZ.C CodeSystem for Data Elements",
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
  "description" : "CodeSystem for IMMZ.C Data Elements",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 17,
  "concept" : [
    {
      "code" : "DE1",
      "display" : "Unique identifier",
      "definition" : "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national identification [ID], health ID, immunization information system ID, medical record ID)"
    },
    {
      "code" : "DE2",
      "display" : "Name",
      "definition" : "The full name of the client"
    },
    {
      "code" : "DE3",
      "display" : "First name",
      "definition" : "Client's first name or given name"
    },
    {
      "code" : "DE4",
      "display" : "Family name",
      "definition" : "Client's family name or last name"
    },
    {
      "code" : "DE5",
      "display" : "Sex",
      "definition" : "Documentation of a specific instance of sex information for the client"
    },
    {
      "code" : "DE6",
      "display" : "Male",
      "definition" : "Client's biological sex is male"
    },
    {
      "code" : "DE7",
      "display" : "Female",
      "definition" : "Client's biological sex is female"
    },
    {
      "code" : "DE8",
      "display" : "Biological sex not specified",
      "definition" : "Client's biological sex is not specified"
    },
    {
      "code" : "DE9",
      "display" : "Intersex",
      "definition" : "Client's biological sex is intersex"
    },
    {
      "code" : "DE10",
      "display" : "Date of birth",
      "definition" : "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
    },
    {
      "code" : "DE13",
      "display" : "Age",
      "definition" : "The client's calculated age (presented as number of years, months, weeks, days) based on the DOB and the visit date"
    },
    {
      "code" : "DE14",
      "display" : "Caregivers (multiple)",
      "definition" : "Details of the client's caregiver (person) who could be next of kin (e.g. partner, husband, mother, sibling, etc.)"
    },
    {
      "code" : "DE15",
      "display" : "Caregiver's full name",
      "definition" : "The full name of the client's caregiver"
    },
    {
      "code" : "DE16",
      "display" : "Caregiver's first name",
      "definition" : "First or given name of the client's caregiver"
    },
    {
      "code" : "DE17",
      "display" : "Caregiver's family name",
      "definition" : "Family name or last name of the client's caregiver"
    },
    {
      "code" : "DE18",
      "display" : "Contact phone number",
      "definition" : "Client's phone number; can be a landline or a mobile phone number"
    },
    {
      "code" : "DE19",
      "display" : "Address",
      "definition" : "Client's home address or address that the client is consenting to disclose"
    }
  ]
}

```
