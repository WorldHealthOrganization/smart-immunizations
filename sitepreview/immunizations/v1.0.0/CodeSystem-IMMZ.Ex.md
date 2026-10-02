# IMMZ.Ex CodeSystem for Example values for required data elements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Ex CodeSystem for Example values for required data elements**

## CodeSystem: IMMZ.Ex CodeSystem for Example values for required data elements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.Ex | *Version*:1.0.0 |
| Active as of 2026-10-02 | *Computable Name*:IMMZ_C |

 
CodeSystem for IMMZ.Ex Examples 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMMZ.D.DE18 ValueSet for Vaccine brand](ValueSet-IMMZ.D.DE18.md)
* [IMMZ.D.DE23 ValueSet for Vaccine manufacturer](ValueSet-IMMZ.D.DE23.md)
* [IMMZ.D.DE25 ValueSet for Vaccine market authorization holder](ValueSet-IMMZ.D.DE25.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IMMZ.Ex",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Ex",
  "version" : "1.0.0",
  "name" : "IMMZ_C",
  "title" : "IMMZ.Ex CodeSystem for Example values for required data elements",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-02T09:40:20+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "CodeSystem for IMMZ.Ex Examples",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "brand",
    "display" : "Example Brand"
  },
  {
    "code" : "manufacturer",
    "display" : "Example Manufacturer"
  },
  {
    "code" : "marketauth",
    "display" : "Example Market Authorization Holder"
  }]
}

```
