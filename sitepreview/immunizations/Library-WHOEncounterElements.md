# WHOEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHOEncounterElements**

## Library: WHOEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/WHOEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:WHOEncounterElements |

 
This library defines encounter-based elements used throughout WHO SMART Guidelines content 

* * **Content: **text/cql: ````library WHOEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common include WHOElements called Elements parameter AsOf Date default Today() parameter EncounterId String context Patient define "Pregnant Observation": Elements."Pregnant Observation" O where O.encounter.references(EncounterId) or O.effective.toInterval() starts same day or after AsOf - 9 months ````: **Id: **
  * ?: WHOEncounterElements
* * **Content: **text/cql: ````library WHOEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common include WHOElements called Elements parameter AsOf Date default Today() parameter EncounterId String context Patient define "Pregnant Observation": Elements."Pregnant Observation" O where O.encounter.references(EncounterId) or O.effective.toInterval() starts same day or after AsOf - 9 months ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````library WHOEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common include WHOElements called Elements parameter AsOf Date default Today() parameter EncounterId String context Patient define "Pregnant Observation": Elements."Pregnant Observation" O where O.encounter.references(EncounterId) or O.effective.toInterval() starts same day or after AsOf - 9 months ````: **Url: **
  * ?: [WHOEncounterElements](Library-WHOEncounterElements.md)
* * **Content: **text/cql: ````library WHOEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common include WHOElements called Elements parameter AsOf Date default Today() parameter EncounterId String context Patient define "Pregnant Observation": Elements."Pregnant Observation" O where O.encounter.references(EncounterId) or O.effective.toInterval() starts same day or after AsOf - 9 months ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````library WHOEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common include WHOElements called Elements parameter AsOf Date default Today() parameter EncounterId String context Patient define "Pregnant Observation": Elements."Pregnant Observation" O where O.encounter.references(EncounterId) or O.effective.toInterval() starts same day or after AsOf - 9 months ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ````library WHOEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common include WHOElements called Elements parameter AsOf Date default Today() parameter EncounterId String context Patient define "Pregnant Observation": Elements."Pregnant Observation" O where O.encounter.references(EncounterId) or O.effective.toInterval() starts same day or after AsOf - 9 months ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````library WHOEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common include WHOElements called Elements parameter AsOf Date default Today() parameter EncounterId String context Patient define "Pregnant Observation": Elements."Pregnant Observation" O where O.encounter.references(EncounterId) or O.effective.toInterval() starts same day or after AsOf - 9 months ````: **Description: **
  * ?: This library defines encounter-based elements used throughout WHO SMART Guidelines content



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "WHOEncounterElements",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablelibrary",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablelibrary",
    "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library",
    "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://smart.who.int/immunizations/Library/WHOEncounterElements",
  "version" : "1.0.0",
  "name" : "WHOEncounterElements",
  "title" : "WHOEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T14:34:42+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements used throughout WHO SMART Guidelines content",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Concepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library Common",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library Elements",
    "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
  }],
  "parameter" : [{
    "name" : "AsOf",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "EncounterId",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Pregnant Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "bGlicmFyeSBXSE9FbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgpwYXJhbWV0ZXIgQXNPZiBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCmRlZmluZSAiUHJlZ25hbnQgT2JzZXJ2YXRpb24iOgogIEVsZW1lbnRzLiJQcmVnbmFudCBPYnNlcnZhdGlvbiIgTwogICAgd2hlcmUgTy5lbmNvdW50ZXIucmVmZXJlbmNlcyhFbmNvdW50ZXJJZCkKICAgICAgb3IgTy5lZmZlY3RpdmUudG9JbnRlcnZhbCgpIHN0YXJ0cyBzYW1lIGRheSBvciBhZnRlciBBc09mIC0gOSBtb250aHMK"
  }]
}

```
