# IMMZD5DTDengueEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTDengueEncounterElements**

## Library: IMMZD5DTDengueEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTDengueEncounterElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTDengueEncounterElements |

 
This library defines encounter-based elements for Dengue used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDengueEncounterElements */ library IMMZD5DTDengueEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTDengueElements called DengueElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Dengue dose */ define "Draft Medication Request for Dengue dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Dengue vaccines" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently lactating @pseudocode: '"Potential contraindications" = "Breastfeeding" @code: The client is currently lactating-48 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently lactating": Encounter."The client is lactating" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" ="History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-66 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" ````: **Id: **
  * ?: IMMZD5DTDengueEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDengueEncounterElements */ library IMMZD5DTDengueEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTDengueElements called DengueElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Dengue dose */ define "Draft Medication Request for Dengue dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Dengue vaccines" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently lactating @pseudocode: '"Potential contraindications" = "Breastfeeding" @code: The client is currently lactating-48 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently lactating": Encounter."The client is lactating" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" ="History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-66 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDengueEncounterElements */ library IMMZD5DTDengueEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTDengueElements called DengueElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Dengue dose */ define "Draft Medication Request for Dengue dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Dengue vaccines" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently lactating @pseudocode: '"Potential contraindications" = "Breastfeeding" @code: The client is currently lactating-48 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently lactating": Encounter."The client is lactating" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" ="History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-66 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" ````: **Url: **
  * ?: [IMMZD5DTDengueEncounterElements](Library-IMMZD5DTDengueEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDengueEncounterElements */ library IMMZD5DTDengueEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTDengueElements called DengueElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Dengue dose */ define "Draft Medication Request for Dengue dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Dengue vaccines" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently lactating @pseudocode: '"Potential contraindications" = "Breastfeeding" @code: The client is currently lactating-48 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently lactating": Encounter."The client is lactating" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" ="History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-66 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDengueEncounterElements */ library IMMZD5DTDengueEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTDengueElements called DengueElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Dengue dose */ define "Draft Medication Request for Dengue dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Dengue vaccines" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently lactating @pseudocode: '"Potential contraindications" = "Breastfeeding" @code: The client is currently lactating-48 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently lactating": Encounter."The client is lactating" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" ="History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-66 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDengueEncounterElements */ library IMMZD5DTDengueEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTDengueElements called DengueElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Dengue dose */ define "Draft Medication Request for Dengue dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Dengue vaccines" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently lactating @pseudocode: '"Potential contraindications" = "Breastfeeding" @code: The client is currently lactating-48 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently lactating": Encounter."The client is lactating" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" ="History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-66 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDengueEncounterElements */ library IMMZD5DTDengueEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTDengueElements called DengueElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Dengue dose */ define "Draft Medication Request for Dengue dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Dengue vaccines" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently lactating @pseudocode: '"Potential contraindications" = "Breastfeeding" @code: The client is currently lactating-48 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is currently lactating": Encounter."The client is lactating" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" ="History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-66 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Dengue contraindications */ define "The client has symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" ````: **Description: **
  * ?: This library defines encounter-based elements for Dengue used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTDengueEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTDengueEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTDengueEncounterElements",
  "title" : "IMMZD5DTDengueEncounterElements",
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
  "description" : "This library defines encounter-based elements for Dengue used throughout the Immunization CPG",
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
    "display" : "Library DengueElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTDengueElements"
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
    "name" : "Draft Medication Request for Dengue dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client is immunocompromised",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is severely immunocompromised",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is currently pregnant",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is currently lactating",
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
    "name" : "The client has history of anaphylactic reactions",
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
    "name" : "The client is severely immunosuppressed",
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
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVERlbmd1ZUVuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVERlbmd1ZUVuY291bnRlckVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgppbmNsdWRlIElNTVpENURURGVuZ3VlRWxlbWVudHMgY2FsbGVkIERlbmd1ZUVsZW1lbnRzCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKcGFyYW1ldGVyIEVuY291bnRlcklkIFN0cmluZwoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgRGVuZ3VlIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIERlbmd1ZSBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkRlbmd1ZSB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vY29tcHJvbWlzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByb21pc2VkLTUxCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5EZW5ndWUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGltbXVub2NvbXByb21pc2VkIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgaW1tdW5vY29tcHJvbWlzZWQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIgpAY29kZTogVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZC02MApAZGVjaXNpb246IElNTVouRDUuRFQuRGVuZ3VlIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkRlbmd1ZSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50IjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IGxhY3RhdGluZwpAcHNldWRvY29kZTogJyJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkJyZWFzdGZlZWRpbmciCkBjb2RlOiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBsYWN0YXRpbmctNDgKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkRlbmd1ZSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IGxhY3RhdGluZyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIGxhY3RhdGluZyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5EZW5ndWUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0iSGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zLTY2CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5EZW5ndWUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcy02MApAZGVjaXNpb246IElNTVouRDUuRFQuRGVuZ3VlIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZC01OQpAZGVjaXNpb246IElNTVouRDUuRFQuRGVuZ3VlIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgc3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbgpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbiIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIHN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24tNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkRlbmd1ZSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIHN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24iOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgYSBzeW1wdG9tYXRpYyBISVYgaW5mZWN0aW9uIgo="
  }]
}

```
