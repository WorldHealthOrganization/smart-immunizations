# IMMZD18SHepatitisBBirthLogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SHepatitisBBirthLogic**

## Library: IMMZD18SHepatitisBBirthLogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SHepatitisBBirthLogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SHepatitisBBirthLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Hepatitis B.Birth dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisBBirthLogic (IMMZ.D18.S.Hepatitis B.Birth dose schedule) * Schedule Table: Birth dose schedule */ library IMMZD18SHepatitisBBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis B birth dose @description: Provision of hepatitis B birth dose @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis B birth dose": not "Hepatitis B birth dose was administered" /* @output: Hepatitis B birth dose Create @create: All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours */ define "Hepatitis B birth dose Create": if "Hepatitis B birth dose" then 'All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours' + ' Due Date: ' + ToString("Hepatitis B birth dose Due Date") + ' Overdue: ' + ToString("Hepatitis B birth dose Overdue") else '' /* @dynamicValue: Hepatitis B birth dose Due Date @pseudocode: "Date of birth" */ define "Hepatitis B birth dose Due Date": if "Hepatitis B birth dose" then Patient.birthDate else null /* @dynamicValue: Hepatitis B birth dose Overdue @pseudocode: "Date of birth" + 24 hours */ define "Hepatitis B birth dose Overdue": if "Hepatitis B birth dose" then Patient.birthDate + 24 hours else null /* @dynamicValue: Hepatitis B birth dose Expiration @pseudocode: To be determined by Member States */ define "Hepatitis B birth dose Expiration": null /* @complete: Hepatitis B birth dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis B-containing vaccines" and "Birth Dose" = TRUE) = 1 */ define "Hepatitis B birth dose was administered": Encounter."Hepatitis B birth dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.newborn' then "Hepatitis B birth dose" when Patient.id = '07.D1' then not "Hepatitis B birth dose" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SHepatitisBBirthLogic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisBBirthLogic (IMMZ.D18.S.Hepatitis B.Birth dose schedule) * Schedule Table: Birth dose schedule */ library IMMZD18SHepatitisBBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis B birth dose @description: Provision of hepatitis B birth dose @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis B birth dose": not "Hepatitis B birth dose was administered" /* @output: Hepatitis B birth dose Create @create: All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours */ define "Hepatitis B birth dose Create": if "Hepatitis B birth dose" then 'All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours' + ' Due Date: ' + ToString("Hepatitis B birth dose Due Date") + ' Overdue: ' + ToString("Hepatitis B birth dose Overdue") else '' /* @dynamicValue: Hepatitis B birth dose Due Date @pseudocode: "Date of birth" */ define "Hepatitis B birth dose Due Date": if "Hepatitis B birth dose" then Patient.birthDate else null /* @dynamicValue: Hepatitis B birth dose Overdue @pseudocode: "Date of birth" + 24 hours */ define "Hepatitis B birth dose Overdue": if "Hepatitis B birth dose" then Patient.birthDate + 24 hours else null /* @dynamicValue: Hepatitis B birth dose Expiration @pseudocode: To be determined by Member States */ define "Hepatitis B birth dose Expiration": null /* @complete: Hepatitis B birth dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis B-containing vaccines" and "Birth Dose" = TRUE) = 1 */ define "Hepatitis B birth dose was administered": Encounter."Hepatitis B birth dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.newborn' then "Hepatitis B birth dose" when Patient.id = '07.D1' then not "Hepatitis B birth dose" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisBBirthLogic (IMMZ.D18.S.Hepatitis B.Birth dose schedule) * Schedule Table: Birth dose schedule */ library IMMZD18SHepatitisBBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis B birth dose @description: Provision of hepatitis B birth dose @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis B birth dose": not "Hepatitis B birth dose was administered" /* @output: Hepatitis B birth dose Create @create: All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours */ define "Hepatitis B birth dose Create": if "Hepatitis B birth dose" then 'All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours' + ' Due Date: ' + ToString("Hepatitis B birth dose Due Date") + ' Overdue: ' + ToString("Hepatitis B birth dose Overdue") else '' /* @dynamicValue: Hepatitis B birth dose Due Date @pseudocode: "Date of birth" */ define "Hepatitis B birth dose Due Date": if "Hepatitis B birth dose" then Patient.birthDate else null /* @dynamicValue: Hepatitis B birth dose Overdue @pseudocode: "Date of birth" + 24 hours */ define "Hepatitis B birth dose Overdue": if "Hepatitis B birth dose" then Patient.birthDate + 24 hours else null /* @dynamicValue: Hepatitis B birth dose Expiration @pseudocode: To be determined by Member States */ define "Hepatitis B birth dose Expiration": null /* @complete: Hepatitis B birth dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis B-containing vaccines" and "Birth Dose" = TRUE) = 1 */ define "Hepatitis B birth dose was administered": Encounter."Hepatitis B birth dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.newborn' then "Hepatitis B birth dose" when Patient.id = '07.D1' then not "Hepatitis B birth dose" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SHepatitisBBirthLogic](Library-IMMZD18SHepatitisBBirthLogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisBBirthLogic (IMMZ.D18.S.Hepatitis B.Birth dose schedule) * Schedule Table: Birth dose schedule */ library IMMZD18SHepatitisBBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis B birth dose @description: Provision of hepatitis B birth dose @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis B birth dose": not "Hepatitis B birth dose was administered" /* @output: Hepatitis B birth dose Create @create: All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours */ define "Hepatitis B birth dose Create": if "Hepatitis B birth dose" then 'All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours' + ' Due Date: ' + ToString("Hepatitis B birth dose Due Date") + ' Overdue: ' + ToString("Hepatitis B birth dose Overdue") else '' /* @dynamicValue: Hepatitis B birth dose Due Date @pseudocode: "Date of birth" */ define "Hepatitis B birth dose Due Date": if "Hepatitis B birth dose" then Patient.birthDate else null /* @dynamicValue: Hepatitis B birth dose Overdue @pseudocode: "Date of birth" + 24 hours */ define "Hepatitis B birth dose Overdue": if "Hepatitis B birth dose" then Patient.birthDate + 24 hours else null /* @dynamicValue: Hepatitis B birth dose Expiration @pseudocode: To be determined by Member States */ define "Hepatitis B birth dose Expiration": null /* @complete: Hepatitis B birth dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis B-containing vaccines" and "Birth Dose" = TRUE) = 1 */ define "Hepatitis B birth dose was administered": Encounter."Hepatitis B birth dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.newborn' then "Hepatitis B birth dose" when Patient.id = '07.D1' then not "Hepatitis B birth dose" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisBBirthLogic (IMMZ.D18.S.Hepatitis B.Birth dose schedule) * Schedule Table: Birth dose schedule */ library IMMZD18SHepatitisBBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis B birth dose @description: Provision of hepatitis B birth dose @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis B birth dose": not "Hepatitis B birth dose was administered" /* @output: Hepatitis B birth dose Create @create: All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours */ define "Hepatitis B birth dose Create": if "Hepatitis B birth dose" then 'All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours' + ' Due Date: ' + ToString("Hepatitis B birth dose Due Date") + ' Overdue: ' + ToString("Hepatitis B birth dose Overdue") else '' /* @dynamicValue: Hepatitis B birth dose Due Date @pseudocode: "Date of birth" */ define "Hepatitis B birth dose Due Date": if "Hepatitis B birth dose" then Patient.birthDate else null /* @dynamicValue: Hepatitis B birth dose Overdue @pseudocode: "Date of birth" + 24 hours */ define "Hepatitis B birth dose Overdue": if "Hepatitis B birth dose" then Patient.birthDate + 24 hours else null /* @dynamicValue: Hepatitis B birth dose Expiration @pseudocode: To be determined by Member States */ define "Hepatitis B birth dose Expiration": null /* @complete: Hepatitis B birth dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis B-containing vaccines" and "Birth Dose" = TRUE) = 1 */ define "Hepatitis B birth dose was administered": Encounter."Hepatitis B birth dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.newborn' then "Hepatitis B birth dose" when Patient.id = '07.D1' then not "Hepatitis B birth dose" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisBBirthLogic (IMMZ.D18.S.Hepatitis B.Birth dose schedule) * Schedule Table: Birth dose schedule */ library IMMZD18SHepatitisBBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis B birth dose @description: Provision of hepatitis B birth dose @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis B birth dose": not "Hepatitis B birth dose was administered" /* @output: Hepatitis B birth dose Create @create: All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours */ define "Hepatitis B birth dose Create": if "Hepatitis B birth dose" then 'All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours' + ' Due Date: ' + ToString("Hepatitis B birth dose Due Date") + ' Overdue: ' + ToString("Hepatitis B birth dose Overdue") else '' /* @dynamicValue: Hepatitis B birth dose Due Date @pseudocode: "Date of birth" */ define "Hepatitis B birth dose Due Date": if "Hepatitis B birth dose" then Patient.birthDate else null /* @dynamicValue: Hepatitis B birth dose Overdue @pseudocode: "Date of birth" + 24 hours */ define "Hepatitis B birth dose Overdue": if "Hepatitis B birth dose" then Patient.birthDate + 24 hours else null /* @dynamicValue: Hepatitis B birth dose Expiration @pseudocode: To be determined by Member States */ define "Hepatitis B birth dose Expiration": null /* @complete: Hepatitis B birth dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis B-containing vaccines" and "Birth Dose" = TRUE) = 1 */ define "Hepatitis B birth dose was administered": Encounter."Hepatitis B birth dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.newborn' then "Hepatitis B birth dose" when Patient.id = '07.D1' then not "Hepatitis B birth dose" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisBBirthLogic (IMMZ.D18.S.Hepatitis B.Birth dose schedule) * Schedule Table: Birth dose schedule */ library IMMZD18SHepatitisBBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis B birth dose @description: Provision of hepatitis B birth dose @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis B birth dose": not "Hepatitis B birth dose was administered" /* @output: Hepatitis B birth dose Create @create: All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours */ define "Hepatitis B birth dose Create": if "Hepatitis B birth dose" then 'All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours' + ' Due Date: ' + ToString("Hepatitis B birth dose Due Date") + ' Overdue: ' + ToString("Hepatitis B birth dose Overdue") else '' /* @dynamicValue: Hepatitis B birth dose Due Date @pseudocode: "Date of birth" */ define "Hepatitis B birth dose Due Date": if "Hepatitis B birth dose" then Patient.birthDate else null /* @dynamicValue: Hepatitis B birth dose Overdue @pseudocode: "Date of birth" + 24 hours */ define "Hepatitis B birth dose Overdue": if "Hepatitis B birth dose" then Patient.birthDate + 24 hours else null /* @dynamicValue: Hepatitis B birth dose Expiration @pseudocode: To be determined by Member States */ define "Hepatitis B birth dose Expiration": null /* @complete: Hepatitis B birth dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis B-containing vaccines" and "Birth Dose" = TRUE) = 1 */ define "Hepatitis B birth dose was administered": Encounter."Hepatitis B birth dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.newborn' then "Hepatitis B birth dose" when Patient.id = '07.D1' then not "Hepatitis B birth dose" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisBBirthLogic (IMMZ.D18.S.Hepatitis B.Birth dose schedule) * Schedule Table: Birth dose schedule */ library IMMZD18SHepatitisBBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis B birth dose @description: Provision of hepatitis B birth dose @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis B birth dose": not "Hepatitis B birth dose was administered" /* @output: Hepatitis B birth dose Create @create: All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours */ define "Hepatitis B birth dose Create": if "Hepatitis B birth dose" then 'All infants should receive a first dose of the hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours' + ' Due Date: ' + ToString("Hepatitis B birth dose Due Date") + ' Overdue: ' + ToString("Hepatitis B birth dose Overdue") else '' /* @dynamicValue: Hepatitis B birth dose Due Date @pseudocode: "Date of birth" */ define "Hepatitis B birth dose Due Date": if "Hepatitis B birth dose" then Patient.birthDate else null /* @dynamicValue: Hepatitis B birth dose Overdue @pseudocode: "Date of birth" + 24 hours */ define "Hepatitis B birth dose Overdue": if "Hepatitis B birth dose" then Patient.birthDate + 24 hours else null /* @dynamicValue: Hepatitis B birth dose Expiration @pseudocode: To be determined by Member States */ define "Hepatitis B birth dose Expiration": null /* @complete: Hepatitis B birth dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis B-containing vaccines" and "Birth Dose" = TRUE) = 1 */ define "Hepatitis B birth dose was administered": Encounter."Hepatitis B birth dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.newborn' then "Hepatitis B birth dose" when Patient.id = '07.D1' then not "Hepatitis B birth dose" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Hepatitis B.Birth dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SHepatitisBBirthLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SHepatitisBBirthLogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SHepatitisBBirthLogic",
  "title" : "IMMZD18SHepatitisBBirthLogic",
  "status" : "draft",
  "experimental" : true,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:43:43+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis B.Birth dose schedule table in the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library WC",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
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
    "display" : "Library IE",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBEncounterElements"
  }],
  "parameter" : [{
    "name" : "Today",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Hepatitis B birth dose was administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Hepatitis B birth dose",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Hepatitis B birth dose Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Hepatitis B birth dose Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Hepatitis B birth dose Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Hepatitis B birth dose Expiration",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Test Validation",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTSGVwYXRpdGlzQkJpcnRoTG9naWMgKElNTVouRDE4LlMuSGVwYXRpdGlzIEIuQmlydGggZG9zZSBzY2hlZHVsZSkKICogU2NoZWR1bGUgVGFibGU6IEJpcnRoIGRvc2Ugc2NoZWR1bGUKICovCmxpYnJhcnkgSU1NWkQxOFNIZXBhdGl0aXNCQmlydGhMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCgppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgSUUKaW5jbHVkZSBJTU1aRDJEVEhlcGF0aXRpc0JFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IEhlcGF0aXRpcyBCIGJpcnRoIGRvc2UKQGRlc2NyaXB0aW9uOiBQcm92aXNpb24gb2YgaGVwYXRpdGlzIEIgYmlydGggZG9zZQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAdHJpZ2dlckRhdGU6ICJEYXRlIG9mIGJpcnRoIgoqLwpkZWZpbmUgIkhlcGF0aXRpcyBCIGJpcnRoIGRvc2UiOgogIG5vdCAiSGVwYXRpdGlzIEIgYmlydGggZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgoKLyoKQG91dHB1dDogSGVwYXRpdGlzIEIgYmlydGggZG9zZSBDcmVhdGUKQGNyZWF0ZTogQWxsIGluZmFudHMgc2hvdWxkIHJlY2VpdmUgYSBmaXJzdCBkb3NlIG9mIHRoZSBoZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmUgYXMgc29vbiBhcyBwb3NzaWJsZSBhZnRlciBiaXJ0aCwgaWRlYWxseSB3aXRoaW4gMjQgaG91cnMKKi8KZGVmaW5lICJIZXBhdGl0aXMgQiBiaXJ0aCBkb3NlIENyZWF0ZSI6CiAgaWYgIkhlcGF0aXRpcyBCIGJpcnRoIGRvc2UiIAogIHRoZW4gJ0FsbCBpbmZhbnRzIHNob3VsZCByZWNlaXZlIGEgZmlyc3QgZG9zZSBvZiB0aGUgaGVwYXRpdGlzIEItY29udGFpbmluZyB2YWNjaW5lIGFzIHNvb24gYXMgcG9zc2libGUgYWZ0ZXIgYmlydGgsIGlkZWFsbHkgd2l0aGluIDI0IGhvdXJzJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiSGVwYXRpdGlzIEIgYmlydGggZG9zZSBEdWUgRGF0ZSIpICsgJwpPdmVyZHVlOiAnICsgVG9TdHJpbmcoIkhlcGF0aXRpcyBCIGJpcnRoIGRvc2UgT3ZlcmR1ZSIpCiAgZWxzZSAnJwoKLyoKQGR5bmFtaWNWYWx1ZTogSGVwYXRpdGlzIEIgYmlydGggZG9zZSBEdWUgRGF0ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiSGVwYXRpdGlzIEIgYmlydGggZG9zZSBEdWUgRGF0ZSI6CiAgaWYgIkhlcGF0aXRpcyBCIGJpcnRoIGRvc2UiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUKICBlbHNlIG51bGwKCi8qCkBkeW5hbWljVmFsdWU6IEhlcGF0aXRpcyBCIGJpcnRoIGRvc2UgT3ZlcmR1ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgMjQgaG91cnMKKi8KZGVmaW5lICJIZXBhdGl0aXMgQiBiaXJ0aCBkb3NlIE92ZXJkdWUiOgogIGlmICJIZXBhdGl0aXMgQiBiaXJ0aCBkb3NlIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgMjQgaG91cnMKICBlbHNlIG51bGwKCi8qCkBkeW5hbWljVmFsdWU6IEhlcGF0aXRpcyBCIGJpcnRoIGRvc2UgRXhwaXJhdGlvbgpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzCiovCmRlZmluZSAiSGVwYXRpdGlzIEIgYmlydGggZG9zZSBFeHBpcmF0aW9uIjoKICBudWxsCgovKgpAY29tcGxldGU6IEhlcGF0aXRpcyBCIGJpcnRoIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZApAcHNldWRvY29kZTogQ291bnQgb2YgdmFjY2luZXMgYWRtaW5pc3RlcmVkICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJIZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmVzIiBhbmQgIkJpcnRoIERvc2UiID0gVFJVRSkgPSAxCiovCmRlZmluZSAiSGVwYXRpdGlzIEIgYmlydGggZG9zZSB3YXMgYWRtaW5pc3RlcmVkIjoKICBFbmNvdW50ZXIuIkhlcGF0aXRpcyBCIGJpcnRoIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcwNy5uZXdib3JuJyB0aGVuICJIZXBhdGl0aXMgQiBiaXJ0aCBkb3NlIgogICAgd2hlbiBQYXRpZW50LmlkID0gJzA3LkQxJyB0aGVuIG5vdCAiSGVwYXRpdGlzIEIgYmlydGggZG9zZSIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
