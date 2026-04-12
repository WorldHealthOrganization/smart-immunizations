# WHOElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHOElements**

## Library: WHOElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/WHOElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:WHOElements |

 
This library defines context-independent elements used throughout WHO SMART Guidelines content 

* * **Content: **text/cql: ````library WHOElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common context Patient define "Pregnancy Status Observation": [Observation: Concepts."Pregnancy status"] O where O.status in { 'final', 'amended', 'corrected' } define "Pregnant Observation": "Pregnancy Status Observation" O where O.value ~ Concepts."Pregnant" ````: **Id: **
  * ?: WHOElements
* * **Content: **text/cql: ````library WHOElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common context Patient define "Pregnancy Status Observation": [Observation: Concepts."Pregnancy status"] O where O.status in { 'final', 'amended', 'corrected' } define "Pregnant Observation": "Pregnancy Status Observation" O where O.value ~ Concepts."Pregnant" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````library WHOElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common context Patient define "Pregnancy Status Observation": [Observation: Concepts."Pregnancy status"] O where O.status in { 'final', 'amended', 'corrected' } define "Pregnant Observation": "Pregnancy Status Observation" O where O.value ~ Concepts."Pregnant" ````: **Url: **
  * ?: [WHOElements](Library-WHOElements.md)
* * **Content: **text/cql: ````library WHOElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common context Patient define "Pregnancy Status Observation": [Observation: Concepts."Pregnancy status"] O where O.status in { 'final', 'amended', 'corrected' } define "Pregnant Observation": "Pregnancy Status Observation" O where O.value ~ Concepts."Pregnant" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````library WHOElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common context Patient define "Pregnancy Status Observation": [Observation: Concepts."Pregnancy status"] O where O.status in { 'final', 'amended', 'corrected' } define "Pregnant Observation": "Pregnancy Status Observation" O where O.value ~ Concepts."Pregnant" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````library WHOElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common context Patient define "Pregnancy Status Observation": [Observation: Concepts."Pregnancy status"] O where O.status in { 'final', 'amended', 'corrected' } define "Pregnant Observation": "Pregnancy Status Observation" O where O.value ~ Concepts."Pregnant" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````library WHOElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts called Concepts include WHOCommon called Common context Patient define "Pregnancy Status Observation": [Observation: Concepts."Pregnancy status"] O where O.status in { 'final', 'amended', 'corrected' } define "Pregnant Observation": "Pregnancy Status Observation" O where O.value ~ Concepts."Pregnant" ````: **Description: **
  * ?: This library defines context-independent elements used throughout WHO SMART Guidelines content



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "WHOElements",
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
  "url" : "http://smart.who.int/immunizations/Library/WHOElements",
  "version" : "0.2.0",
  "name" : "WHOElements",
  "title" : "WHOElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines context-independent elements used throughout WHO SMART Guidelines content",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Concepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library Common",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  }],
  "parameter" : [{
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Pregnancy Status Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Pregnant Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  }],
  "dataRequirement" : [{
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "82810-3",
        "display" : "Pregnancy status"
      }]
    }]
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "bGlicmFyeSBXSE9FbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgQ29tbW9uCgpjb250ZXh0IFBhdGllbnQKCmRlZmluZSAiUHJlZ25hbmN5IFN0YXR1cyBPYnNlcnZhdGlvbiI6CiAgW09ic2VydmF0aW9uOiBDb25jZXB0cy4iUHJlZ25hbmN5IHN0YXR1cyJdIE8KICAgIHdoZXJlIE8uc3RhdHVzIGluIHsgJ2ZpbmFsJywgJ2FtZW5kZWQnLCAnY29ycmVjdGVkJyB9CgpkZWZpbmUgIlByZWduYW50IE9ic2VydmF0aW9uIjoKICAiUHJlZ25hbmN5IFN0YXR1cyBPYnNlcnZhdGlvbiIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJQcmVnbmFudCIKCg=="
  }]
}

```
