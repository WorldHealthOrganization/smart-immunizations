# IMMZIND30Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND30Logic**

## Library: IMMZIND30Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND30Logic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZIND30Logic |

 
This library defines population criteria logic for the IMMZ.IND.30 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.30 Logic * Immunization coverage for COVID-19 vaccines * The percentage in the target population who have received COVID-19 vaccine during the reporting period * * Numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * Monitoring COVID-19 vaccination (3) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND30Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."COVID-19 Doses Administered to Patient During Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Id: **
  * ?: IMMZIND30Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.30 Logic * Immunization coverage for COVID-19 vaccines * The percentage in the target population who have received COVID-19 vaccine during the reporting period * * Numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * Monitoring COVID-19 vaccination (3) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND30Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."COVID-19 Doses Administered to Patient During Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.30 Logic * Immunization coverage for COVID-19 vaccines * The percentage in the target population who have received COVID-19 vaccine during the reporting period * * Numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * Monitoring COVID-19 vaccination (3) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND30Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."COVID-19 Doses Administered to Patient During Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Url: **
  * ?: [IMMZIND30Logic](Library-IMMZIND30Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.30 Logic * Immunization coverage for COVID-19 vaccines * The percentage in the target population who have received COVID-19 vaccine during the reporting period * * Numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * Monitoring COVID-19 vaccination (3) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND30Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."COVID-19 Doses Administered to Patient During Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.30 Logic * Immunization coverage for COVID-19 vaccines * The percentage in the target population who have received COVID-19 vaccine during the reporting period * * Numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * Monitoring COVID-19 vaccination (3) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND30Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."COVID-19 Doses Administered to Patient During Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.30 Logic * Immunization coverage for COVID-19 vaccines * The percentage in the target population who have received COVID-19 vaccine during the reporting period * * Numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * Monitoring COVID-19 vaccination (3) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND30Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."COVID-19 Doses Administered to Patient During Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.30 Logic * Immunization coverage for COVID-19 vaccines * The percentage in the target population who have received COVID-19 vaccine during the reporting period * * Numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * Monitoring COVID-19 vaccination (3) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND30Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of COVID-19 vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "COVID-19 vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."COVID-19 Doses Administered to Patient During Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.30 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND30Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND30Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND30Logic",
  "title" : "IMMZIND30Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.30 indicator in the Immunization CPG",
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
    "display" : "Library Elements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZIndicatorElements"
  }],
  "parameter" : [{
    "name" : "Measurement Period",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "Period"
  },
  {
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Initial Population",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Denominator",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Numerator",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Stratification 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Stratification 2",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Coding"
  },
  {
    "name" : "Stratification 3",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Coding"
  },
  {
    "name" : "Stratification 4",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Coding"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMzAgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBDT1ZJRC0xOSB2YWNjaW5lcwogKiBUaGUgcGVyY2VudGFnZSBpbiB0aGUgdGFyZ2V0IHBvcHVsYXRpb24gd2hvIGhhdmUgcmVjZWl2ZWQgQ09WSUQtMTkgdmFjY2luZSBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogCiAqIE51bWVyYXRvcjogTnVtYmVyIG9mIENPVklELTE5IHZhY2NpbmUgZG9zZXMgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogTnVtZXJhdG9yIENvbXB1dGF0aW9uOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIkNPVklELTE5IHZhY2NpbmVzIiBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cAogKiBEZW5vbWluYXRvciBDb21wdXRhdGlvbjogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwogKiAKICogRGlzYWdncmVnYXRpb24KICogIC0gQWRtaW5pc3RyYXRpdmUgYXJlYQogKiAgLSBTZXgKICogIC0gQWdlIGluIHllYXJzCiAqICAtIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQogKiAgLSBSaXNrICYgb2NjdXBhdGlvbmFsIGdyb3VwCiAqCiAqIFJlZmVyZW5jZXM6IFdITy9VTklDRUYgam9pbnQgcmVwb3J0aW5nIGZvcm0gKDEpCiAqICAgTW9uaXRvcmluZyBDT1ZJRC0xOSB2YWNjaW5hdGlvbiAoMykKICogICBXSE8gSW1tdW5pemF0aW9uIGZhY2lsaXR5IGFuYWx5c2lzIGd1aWRlICg1KQogKiAgIFdITyBIYW5kYm9vayBvbiBpbW11bml6YXRpb24gZGF0YSAoNikKICogCiAqIEFubm90YXRpb25zOiDigJMKICovCmxpYnJhcnkgSU1NWklORDMwTG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aSW5kaWNhdG9yRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGU+IGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjUtMDEtMDEsIEAyMDI1LTEyLTMxXQoKY29udGV4dCBQYXRpZW50CgovKgogKiBBcyBkZWZpbmVkIGJ5IE1lbWJlciBTdGF0ZQogKi8KZGVmaW5lICJJbml0aWFsIFBvcHVsYXRpb24iOgogIHRydWUKCi8qCkBkZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cApAcHNldWRvY29kZTogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIkRlbm9taW5hdG9yIjoKICB0cnVlCgovKgpAbnVtZXJhdG9yOiBOdW1iZXIgb2YgQ09WSUQtMTkgdmFjY2luZSBkb3NlcyBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZApAcHNldWRvY29kZTogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJDT1ZJRC0xOSB2YWNjaW5lcyIgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKKi8KZGVmaW5lICJOdW1lcmF0b3IiOgogICAgZXhpc3RzKCBFbGVtZW50cy4iQ09WSUQtMTkgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQgRHVyaW5nIE1lYXN1cmVtZW50IFBlcmlvZCIgKQoKLyoKQGRpc2FnZ3JlZ2F0aW9uOiBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAgICAgICAgICAgICAgICAgU2V4CiAgICAgICAgICAgICAgICAgQWdlIGluIHllYXJzCiAgICAgICAgICAgICAgICAgQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiAgICAgICAgICAgICAgICAgUmlzayAmIG9jY3VwYXRpb25hbCBncm91cAoqLwpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDEiOgoJRWxlbWVudHMuIkJ5IEdlb2dyYXBoaWMgUmVnaW9uIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDIiOgoJRWxlbWVudHMuIkJ5IEFkbWluaXN0cmF0aXZlIEdlbmRlciBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAzIjoKCUVsZW1lbnRzLiJBZ2UgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gNCI6CglFbGVtZW50cy4iQnkgQWdlIEdyb3VwIFN0cmF0aWZpZXIiCg=="
  }]
}

```
