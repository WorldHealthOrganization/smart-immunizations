# IMMZ.D21.Generate verifiable digital certificate - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D21.Generate verifiable digital certificate**

## Questionnaire: IMMZ.D21.Generate verifiable digital certificate
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZD21",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZD21",
  "version" : "0.2.0",
  "title" : "IMMZ.D21.Generate verifiable digital certificate",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-03-29T17:23:09+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.D21.Generate verifiable digital certificate",
  "item" : [{
    "linkId" : "certificateIssuer",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE151"
    }],
    "text" : "Certificate issuer",
    "type" : "string",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "healthCertificateIdentifier",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE152"
    }],
    "text" : "Health Certificate Identifier (HCID)",
    "type" : "string",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "certificateValidFrom",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE153"
    }],
    "text" : "Certificate valid from",
    "type" : "dateTime",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "certificateValidUntil",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE154"
    }],
    "text" : "Certificate valid until",
    "type" : "dateTime",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "certificateSchemaVersion",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE155"
    }],
    "text" : "Certificate schema version",
    "type" : "string",
    "required" : true,
    "repeats" : false
  }]
}

```
