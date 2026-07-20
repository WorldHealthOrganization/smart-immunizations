# IMMZD5DTRubellaElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTRubellaElements**

## Library: IMMZD5DTRubellaElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTRubellaElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTRubellaElements |

 
This library defines context-independent elements for Rubella used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaElements */ library IMMZD5DTRubellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Elements."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Elements."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Elements."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Elements."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" ````: **Id: **
  * ?: IMMZD5DTRubellaElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaElements */ library IMMZD5DTRubellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Elements."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Elements."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Elements."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Elements."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaElements */ library IMMZD5DTRubellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Elements."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Elements."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Elements."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Elements."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" ````: **Url: **
  * ?: [IMMZD5DTRubellaElements](Library-IMMZD5DTRubellaElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaElements */ library IMMZD5DTRubellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Elements."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Elements."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Elements."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Elements."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaElements */ library IMMZD5DTRubellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Elements."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Elements."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Elements."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Elements."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaElements */ library IMMZD5DTRubellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Elements."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Elements."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Elements."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Elements."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaElements */ library IMMZD5DTRubellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Elements."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Elements."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Elements."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Elements."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" ````: **Description: **
  * ?: This library defines context-independent elements for Rubella used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTRubellaElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTRubellaElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTRubellaElements",
  "title" : "IMMZD5DTRubellaElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T13:50:16+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines context-independent elements for Rubella used throughout the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library WHOConcepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library WC",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library WE",
    "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library Common",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library Concepts",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library Elements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
  }],
  "parameter" : [{
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Draft Medication Request for Rubella dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client is currently pregnant",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is planning to get pregnant in next month",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is receiving blood products",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has history of severe allergic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has symptomatic HIV infection",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has TB disease",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has immunodeficiency syndromes",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is exposed to immunosuppressive treatment",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFJ1YmVsbGFFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRSdWJlbGxhRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFJ1YmVsbGEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUnViZWxsYSBkb3NlIjoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iUnViZWxsYS1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJ1YmVsbGEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgcGxhbm5pbmcgdG8gZ2V0IHByZWduYW50IGluIG5leHQgbW9udGgKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiB0aGUgbmV4dCBtb250aCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgcGxhbm5pbmcgdG8gZ2V0IHByZWduYW50IGluIG5leHQgbW9udGgtNzYKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJ1YmVsbGEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIHBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiBuZXh0IG1vbnRoIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBpcyBwbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gbmV4dCBtb250aCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlJlY2VpdmluZyBibG9vZCBwcm9kdWN0cyIKQGNvZGU6IFRoZSBjbGllbnQgaXMgcmVjZWl2aW5nIGJsb29kIHByb2R1Y3RzLTU4CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGlzIHJlY2VpdmluZyBibG9vZCBwcm9kdWN0cyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBzeW1wdG9tYXRpYyBISVYgaW5mZWN0aW9uCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTeW1wdG9tYXRpYyBISVYgaW5mZWN0aW9uIgpAY29kZTogVGhlIGNsaWVudCBoYXMgc3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbi01OQpAZGVjaXNpb246IElNTVouRDUuRFQuUnViZWxsYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIHN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24iOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBhIHN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24iCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIFRCIGRpc2Vhc2UKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlRCIGRpc2Vhc2UiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBUQiBkaXNlYXNlLTQ0CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgVEIgZGlzZWFzZSI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIFRCIGRpc2Vhc2UiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJJbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBleHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiRXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50LTcyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBleHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQiCg=="
  }]
}

```
