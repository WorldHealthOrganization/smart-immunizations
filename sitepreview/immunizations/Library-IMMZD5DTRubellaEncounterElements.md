# IMMZD5DTRubellaEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTRubellaEncounterElements**

## Library: IMMZD5DTRubellaEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTRubellaEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTRubellaEncounterElements |

 
This library defines encounter-based elements for Rubella used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaEncounterElements */ library IMMZD5DTRubellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRubellaElements called RubellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Encounter."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Encounter."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" ````: **Id: **
  * ?: IMMZD5DTRubellaEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaEncounterElements */ library IMMZD5DTRubellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRubellaElements called RubellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Encounter."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Encounter."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaEncounterElements */ library IMMZD5DTRubellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRubellaElements called RubellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Encounter."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Encounter."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" ````: **Url: **
  * ?: [IMMZD5DTRubellaEncounterElements](Library-IMMZD5DTRubellaEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaEncounterElements */ library IMMZD5DTRubellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRubellaElements called RubellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Encounter."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Encounter."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaEncounterElements */ library IMMZD5DTRubellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRubellaElements called RubellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Encounter."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Encounter."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaEncounterElements */ library IMMZD5DTRubellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRubellaElements called RubellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Encounter."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Encounter."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRubellaEncounterElements */ library IMMZD5DTRubellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRubellaElements called RubellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rubella dose */ define "Draft Medication Request for Rubella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rubella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in next month-76 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is planning to get pregnant in next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" @code: The client is receiving blood products-58 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is receiving blood products": Encounter."The client is receiving blood products" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" @code: The client has TB disease-44 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has TB disease": Encounter."The client has TB disease" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.Rubella contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" ````: **Description: **
  * ?: This library defines encounter-based elements for Rubella used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTRubellaEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTRubellaEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTRubellaEncounterElements",
  "title" : "IMMZD5DTRubellaEncounterElements",
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
  "description" : "This library defines encounter-based elements for Rubella used throughout the Immunization CPG",
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
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library RubellaElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTRubellaElements"
  }],
  "parameter" : [{
    "name" : "Today",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFJ1YmVsbGFFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRSdWJlbGxhRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRSdWJlbGxhRWxlbWVudHMgY2FsbGVkIFJ1YmVsbGFFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFJ1YmVsbGEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUnViZWxsYSBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIlJ1YmVsbGEtY29udGFpbmluZyB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkN1cnJlbnRseSBwcmVnbmFudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50LTUyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBpcyBwcmVnbmFudCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBwbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gbmV4dCBtb250aApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiUGxhbm5pbmcgdG8gZ2V0IHByZWduYW50IGluIHRoZSBuZXh0IG1vbnRoIgpAY29kZTogVGhlIGNsaWVudCBpcyBwbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gbmV4dCBtb250aC03NgpAZGVjaXNpb246IElNTVouRDUuRFQuUnViZWxsYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgcGxhbm5pbmcgdG8gZ2V0IHByZWduYW50IGluIG5leHQgbW9udGgiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBpcyBwbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gbmV4dCBtb250aCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlJlY2VpdmluZyBibG9vZCBwcm9kdWN0cyIKQGNvZGU6IFRoZSBjbGllbnQgaXMgcmVjZWl2aW5nIGJsb29kIHByb2R1Y3RzLTU4CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OQpAZGVjaXNpb246IElNTVouRDUuRFQuUnViZWxsYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIHN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24KQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24iCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBzeW1wdG9tYXRpYyBISVYgaW5mZWN0aW9uLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgc3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbiI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBhIHN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24iCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIFRCIGRpc2Vhc2UKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlRCIGRpc2Vhc2UiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBUQiBkaXNlYXNlLTQ0CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5SdWJlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgVEIgZGlzZWFzZSI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBUQiBkaXNlYXNlIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcy02MApAZGVjaXNpb246IElNTVouRDUuRFQuUnViZWxsYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJFeHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQtNzIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJ1YmVsbGEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50IjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQiCg=="
  }]
}

```
