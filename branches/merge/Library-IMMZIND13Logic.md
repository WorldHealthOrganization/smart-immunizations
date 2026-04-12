# IMMZIND13Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND13Logic**

## Library: IMMZIND13Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND13Logic | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND13Logic |

 
This library defines population criteria logic for the IMMZ.IND.13 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.13 Logic * Immunization coverage for measles and rubella-containing vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND13Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('2') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Id: **
  * ?: IMMZIND13Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.13 Logic * Immunization coverage for measles and rubella-containing vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND13Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('2') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.13 Logic * Immunization coverage for measles and rubella-containing vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND13Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('2') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND13Logic](Library-IMMZIND13Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.13 Logic * Immunization coverage for measles and rubella-containing vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND13Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('2') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.13 Logic * Immunization coverage for measles and rubella-containing vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND13Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('2') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.13 Logic * Immunization coverage for measles and rubella-containing vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND13Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('2') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.13 Logic * Immunization coverage for measles and rubella-containing vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND13Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('2') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.13 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND13Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND13Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND13Logic",
  "title" : "IMMZIND13Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.13 indicator in the Immunization CPG",
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
  },
  {
    "type" : "depends-on",
    "display" : "Library Measles",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMeaslesElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library Rubella",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTRubellaElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMTMgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBtZWFzbGVzIGFuZCBydWJlbGxhLWNvbnRhaW5pbmcgdmFjY2luZSwgMm5kIGRvc2UKICogVGhlIHBlcmNlbnRhZ2UgaW4gdGhlIHRhcmdldCBwb3B1bGF0aW9uIHdobyBoYXZlIHJlY2VpdmVkIHRoZSAybmQgZG9zZSBvZiBtZWFzbGVzIGFuZCBydWJlbGxhLWNvbnRhaW5pbmcgdmFjY2luZSBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogCiAqIE51bWVyYXRvcjogTnVtYmVyIG9mIG1lYXNsZXMgYW5kIHJ1YmVsbGEtY29udGFpbmluZyB2YWNjaW5lIGRvc2VzICgybmQgZG9zZSkgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogTnVtZXJhdG9yIENvbXB1dGF0aW9uOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIk1lYXNsZXMgYW5kIHJ1YmVsbGEtY29udGFpbmluZyB2YWNjaW5lcyIgZm9yIHRoZSAybmQgZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogRGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKICogRGVub21pbmF0b3IgQ29tcHV0YXRpb246IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKICogCiAqIERpc2FnZ3JlZ2F0aW9uCiAqICAtIEFkbWluaXN0cmF0aXZlIGFyZWEKICogIC0gU2V4CiAqICAtIEFnZSBpbiB5ZWFycwogKiAgLSBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKICoKICogUmVmZXJlbmNlczogV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogICBXSE8gSGFuZGJvb2sgb24gaW1tdW5pemF0aW9uIGRhdGEgKDYpCiAqIAogKiBBbm5vdGF0aW9uczog4oCTCiAqLwpsaWJyYXJ5IElNTVpJTkQxM0xvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkluZGljYXRvckVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKaW5jbHVkZSBJTU1aRDJEVE1lYXNsZXNFbGVtZW50cyBjYWxsZWQgTWVhc2xlcwppbmNsdWRlIElNTVpEMkRUUnViZWxsYUVsZW1lbnRzIGNhbGxlZCBSdWJlbGxhCgpwYXJhbWV0ZXIgIk1lYXN1cmVtZW50IFBlcmlvZCIgSW50ZXJ2YWw8RGF0ZT4gZGVmYXVsdCBJbnRlcnZhbFtAMjAyNS0wMS0wMSwgQDIwMjUtMTItMzFdCgpjb250ZXh0IFBhdGllbnQKCi8qCiAqIEFzIGRlZmluZWQgYnkgTWVtYmVyIFN0YXRlCiAqLwpkZWZpbmUgIkluaXRpYWwgUG9wdWxhdGlvbiI6CiAgdHJ1ZQoKLyoKQGRlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCkBwc2V1ZG9jb2RlOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiovCmRlZmluZSAiRGVub21pbmF0b3IiOgogIHRydWUKCi8qCkBudW1lcmF0b3I6IE51bWJlciBvZiBtZWFzbGVzIGFuZCBydWJlbGxhLWNvbnRhaW5pbmcgdmFjY2luZSBkb3NlcyAoMm5kIGRvc2UpIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCkBwc2V1ZG9jb2RlOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIk1lYXNsZXMgYW5kIHJ1YmVsbGEtY29udGFpbmluZyB2YWNjaW5lcyIgZm9yIHRoZSAybmQgZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKKi8KZGVmaW5lICJOdW1lcmF0b3IiOgogIGV4aXN0cyggRWxlbWVudHMuIk1lYXNsZXMgYW5kIFJ1YmVsbGEgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQgRHVyaW5nIE1lYXN1cmVtZW50IFBlcmlvZCIuZ2V0RG9zZSgnMicpICkKCgovKgpAZGlzYWdncmVnYXRpb246IEFkbWluaXN0cmF0aXZlIGFyZWEKICAgICAgICAgICAgICAgICBTZXgKICAgICAgICAgICAgICAgICBBZ2UgaW4geWVhcnMKICAgICAgICAgICAgICAgICBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKCUVsZW1lbnRzLiJCeSBHZW9ncmFwaGljIFJlZ2lvbiBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAyIjoKCUVsZW1lbnRzLiJCeSBBZG1pbmlzdHJhdGl2ZSBHZW5kZXIgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CglFbGVtZW50cy4iQWdlIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDQiOgoJRWxlbWVudHMuIlRvZGRsZXIgQnkgQWdlIFN0cmF0aWZpZXIiCg=="
  }]
}

```
