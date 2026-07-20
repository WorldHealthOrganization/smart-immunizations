# IMMZD5DTRotavirusElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTRotavirusElements**

## Library: IMMZD5DTRotavirusElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTRotavirusElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTRotavirusElements |

 
This library defines context-independent elements for Rotavirus used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusElements */ library IMMZD5DTRotavirusElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Elements."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Elements."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Elements."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Elements."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Elements."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Elements."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Id: **
  * ?: IMMZD5DTRotavirusElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusElements */ library IMMZD5DTRotavirusElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Elements."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Elements."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Elements."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Elements."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Elements."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Elements."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusElements */ library IMMZD5DTRotavirusElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Elements."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Elements."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Elements."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Elements."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Elements."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Elements."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Url: **
  * ?: [IMMZD5DTRotavirusElements](Library-IMMZD5DTRotavirusElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusElements */ library IMMZD5DTRotavirusElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Elements."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Elements."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Elements."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Elements."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Elements."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Elements."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusElements */ library IMMZD5DTRotavirusElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Elements."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Elements."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Elements."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Elements."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Elements."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Elements."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusElements */ library IMMZD5DTRotavirusElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Elements."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Elements."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Elements."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Elements."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Elements."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Elements."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusElements */ library IMMZD5DTRotavirusElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Elements."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Elements."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Elements."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Elements."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Elements."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Elements."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Description: **
  * ?: This library defines context-independent elements for Rotavirus used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTRotavirusElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTRotavirusElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTRotavirusElements",
  "title" : "IMMZD5DTRotavirusElements",
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
  "description" : "This library defines context-independent elements for Rotavirus used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Rotavirus dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has prior history of intussusception",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has severe immunodeficiency",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has a history of severe allergic reactions",
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
    "name" : "The client has altered immunocompetence",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has spina bifida",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has bladder exstrophy",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has chronic gastrointestinal disease",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has acute gastroenteritis",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has moderate to severe fever",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFJvdGF2aXJ1c0VsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVFJvdGF2aXJ1c0VsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBSb3RhdmlydXMgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUm90YXZpcnVzIGRvc2UiOgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SCiAgICB3aGVyZSBNUi5tZWRpY2F0aW9uIGluIENvbmNlcHRzLiJSb3RhdmlydXMgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIHByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJQcmlvciBoaXN0b3J5IG9mIGludHVzc3VzY2VwdGlvbiIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIHByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uLTY2CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5Sb3RhdmlydXMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBwcmlvciBoaXN0b3J5IG9mIGludHVzc3VzY2VwdGlvbiI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIHByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBzZXZlcmUgaW1tdW5vZGVmaWNpZW5jeQpAcHNldWRvY29kZTogJyJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgpAY29kZTogVGhlIGNsaWVudCBoYXMgc2V2ZXJlIGltbXVub2RlZmljaWVuY3ktNjEKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJvdGF2aXJ1cyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIHNldmVyZSBpbW11bm9kZWZpY2llbmN5IjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJvdGF2aXJ1cyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucy02NwpAZGVjaXNpb246IElNTVouRDUuRFQuUm90YXZpcnVzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhbHRlcmVkIGltbXVub2NvbXBldGVuY2UKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZSIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZS01OApAZGVjaXNpb246IElNTVouRDUuRFQuUm90YXZpcnVzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYWx0ZXJlZCBpbW11bm9jb21wZXRlbmNlIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgYWx0ZXJlZCBpbW11bm9jb21wZXRlbmNlIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBzcGluYSBiaWZpZGEKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNwaW5hIGJpZmlkYSIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIHNwaW5hIGJpZmlkYS00NgpAZGVjaXNpb246IElNTVouRDUuRFQuUm90YXZpcnVzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgc3BpbmEgYmlmaWRhIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgc3BpbmEgYmlmaWRhIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBibGFkZGVyIGV4c3Ryb3BoeQpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQmxhZGRlciBleHN0cm9waHkiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBibGFkZGVyIGV4c3Ryb3BoeS01MQpAZGVjaXNpb246IElNTVouRDUuRFQuUm90YXZpcnVzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYmxhZGRlciBleHN0cm9waHkiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBibGFkZGVyIGV4c3Ryb3BoeSIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgY2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkNocm9uaWMgZ2FzdHJvaW50ZXN0aW5hbCBkaXNlYXNlIgpAY29kZTogVGhlIGNsaWVudCBoYXMgY2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UtNjYKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJvdGF2aXJ1cyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGNocm9uaWMgZ2FzdHJvaW50ZXN0aW5hbCBkaXNlYXNlIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgY2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGFjdXRlIGdhc3Ryb2VudGVyaXRpcwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQWN1dGUgZ2FzdHJvZW50ZXJpdGlzIgpAY29kZTogVGhlIGNsaWVudCBoYXMgYWN1dGUgZ2FzdHJvZW50ZXJpdGlzLTU1CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5Sb3RhdmlydXMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhY3V0ZSBnYXN0cm9lbnRlcml0aXMiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBhY3V0ZSBnYXN0cm9lbnRlcml0aXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIG1vZGVyYXRlIHRvIHNldmVyZSBmZXZlcgpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiTW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyIgpAY29kZTogVGhlIGNsaWVudCBoYXMgbW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyLTU4CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5Sb3RhdmlydXMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBtb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXIiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBtb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXIiCg=="
  }]
}

```
