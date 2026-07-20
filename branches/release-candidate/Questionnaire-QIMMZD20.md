# IMMZ.D20.Does client require a verifiable digital certificate - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D20.Does client require a verifiable digital certificate**

## Questionnaire: IMMZ.D20.Does client require a verifiable digital certificate
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZD20",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZD20",
  "version" : "1.0.0",
  "title" : "IMMZ.D20.Does client require a verifiable digital certificate",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-04-09T13:50:16+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.D20.Does client require a verifiable digital certificate",
  "item" : [{
    "linkId" : "digitalCertificateNeeded",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE150"
    }],
    "text" : "Digital certificate needed",
    "type" : "boolean",
    "required" : true,
    "repeats" : false
  }]
}

```
