# IMMZD5DTRotavirusEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTRotavirusEncounterElements**

## Library: IMMZD5DTRotavirusEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTRotavirusEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTRotavirusEncounterElements |

 
This library defines encounter-based elements for Rotavirus used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusEncounterElements */ library IMMZD5DTRotavirusEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRotavirusElements called RotavirusElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Encounter."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Encounter."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Encounter."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Encounter."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Encounter."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Encounter."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Id: **
  * ?: IMMZD5DTRotavirusEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusEncounterElements */ library IMMZD5DTRotavirusEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRotavirusElements called RotavirusElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Encounter."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Encounter."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Encounter."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Encounter."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Encounter."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Encounter."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusEncounterElements */ library IMMZD5DTRotavirusEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRotavirusElements called RotavirusElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Encounter."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Encounter."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Encounter."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Encounter."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Encounter."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Encounter."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Url: **
  * ?: [IMMZD5DTRotavirusEncounterElements](Library-IMMZD5DTRotavirusEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusEncounterElements */ library IMMZD5DTRotavirusEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRotavirusElements called RotavirusElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Encounter."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Encounter."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Encounter."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Encounter."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Encounter."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Encounter."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusEncounterElements */ library IMMZD5DTRotavirusEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRotavirusElements called RotavirusElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Encounter."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Encounter."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Encounter."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Encounter."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Encounter."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Encounter."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusEncounterElements */ library IMMZD5DTRotavirusEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRotavirusElements called RotavirusElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Encounter."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Encounter."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Encounter."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Encounter."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Encounter."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Encounter."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRotavirusEncounterElements */ library IMMZD5DTRotavirusEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTRotavirusElements called RotavirusElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Rotavirus dose */ define "Draft Medication Request for Rotavirus dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Rotavirus vaccines" /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" @code: The client has prior history of intussusception-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has prior history of intussusception": Encounter."The client has prior history of intussusception" /* @input: The client has severe immunodeficiency @pseudocode: '"Potential contraindications" = "Immunodeficiency syndromes" @code: The client has severe immunodeficiency-61 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has severe immunodeficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" @code: The client has altered immunocompetence-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has altered immunocompetence": Encounter."The client has altered immunocompetence" /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" @code: The client has spina bifida-46 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has spina bifida": Encounter."The client has spina bifida" /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" @code: The client has bladder exstrophy-51 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has bladder exstrophy": Encounter."The client has bladder exstrophy" /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" @code: The client has chronic gastrointestinal disease-66 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has chronic gastrointestinal disease": Encounter."The client has chronic gastrointestinal disease" /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" @code: The client has acute gastroenteritis-55 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has acute gastroenteritis": Encounter."The client has acute gastroenteritis" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.Rotavirus contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Description: **
  * ?: This library defines encounter-based elements for Rotavirus used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTRotavirusEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTRotavirusEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTRotavirusEncounterElements",
  "title" : "IMMZD5DTRotavirusEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:54:17+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Rotavirus used throughout the Immunization CPG",
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
    "display" : "Library RotavirusElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTRotavirusElements"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFJvdGF2aXJ1c0VuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVFJvdGF2aXJ1c0VuY291bnRlckVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgppbmNsdWRlIElNTVpENURUUm90YXZpcnVzRWxlbWVudHMgY2FsbGVkIFJvdGF2aXJ1c0VsZW1lbnRzCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKcGFyYW1ldGVyIEVuY291bnRlcklkIFN0cmluZwoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUm90YXZpcnVzIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFJvdGF2aXJ1cyBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIlJvdGF2aXJ1cyB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgcHJpb3IgaGlzdG9yeSBvZiBpbnR1c3N1c2NlcHRpb24KQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uIgpAY29kZTogVGhlIGNsaWVudCBoYXMgcHJpb3IgaGlzdG9yeSBvZiBpbnR1c3N1c2NlcHRpb24tNjYKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJvdGF2aXJ1cyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIHByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIHByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBzZXZlcmUgaW1tdW5vZGVmaWNpZW5jeQpAcHNldWRvY29kZTogJyJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgpAY29kZTogVGhlIGNsaWVudCBoYXMgc2V2ZXJlIGltbXVub2RlZmljaWVuY3ktNjEKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJvdGF2aXJ1cyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIHNldmVyZSBpbW11bm9kZWZpY2llbmN5IjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5Sb3RhdmlydXMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zLTY3CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5Sb3RhdmlydXMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhbHRlcmVkIGltbXVub2NvbXBldGVuY2UKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZSIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZS01OApAZGVjaXNpb246IElNTVouRDUuRFQuUm90YXZpcnVzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYWx0ZXJlZCBpbW11bm9jb21wZXRlbmNlIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZSIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgc3BpbmEgYmlmaWRhCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTcGluYSBiaWZpZGEiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBzcGluYSBiaWZpZGEtNDYKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJvdGF2aXJ1cyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIHNwaW5hIGJpZmlkYSI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBzcGluYSBiaWZpZGEiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGJsYWRkZXIgZXhzdHJvcGh5CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJCbGFkZGVyIGV4c3Ryb3BoeSIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGJsYWRkZXIgZXhzdHJvcGh5LTUxCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5Sb3RhdmlydXMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBibGFkZGVyIGV4c3Ryb3BoeSI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBibGFkZGVyIGV4c3Ryb3BoeSIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgY2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkNocm9uaWMgZ2FzdHJvaW50ZXN0aW5hbCBkaXNlYXNlIgpAY29kZTogVGhlIGNsaWVudCBoYXMgY2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UtNjYKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJvdGF2aXJ1cyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGNocm9uaWMgZ2FzdHJvaW50ZXN0aW5hbCBkaXNlYXNlIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGNocm9uaWMgZ2FzdHJvaW50ZXN0aW5hbCBkaXNlYXNlIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhY3V0ZSBnYXN0cm9lbnRlcml0aXMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkFjdXRlIGdhc3Ryb2VudGVyaXRpcyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGFjdXRlIGdhc3Ryb2VudGVyaXRpcy01NQpAZGVjaXNpb246IElNTVouRDUuRFQuUm90YXZpcnVzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYWN1dGUgZ2FzdHJvZW50ZXJpdGlzIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGFjdXRlIGdhc3Ryb2VudGVyaXRpcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgbW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJNb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXIiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBtb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXItNTgKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlJvdGF2aXJ1cyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIG1vZGVyYXRlIHRvIHNldmVyZSBmZXZlciI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBtb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXIiCg=="
  }]
}

```
