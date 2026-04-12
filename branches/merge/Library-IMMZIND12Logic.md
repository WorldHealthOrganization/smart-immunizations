# IMMZIND12Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND12Logic**

## Library: IMMZIND12Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND12Logic | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND12Logic |

 
This library defines population criteria logic for the IMMZ.IND.12 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.12 Logic * Immunization coverage for measles and rubella-containing vaccine, 1st dose * The percentage in the target population who have received a 1st dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND12Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Id: **
  * ?: IMMZIND12Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.12 Logic * Immunization coverage for measles and rubella-containing vaccine, 1st dose * The percentage in the target population who have received a 1st dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND12Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.12 Logic * Immunization coverage for measles and rubella-containing vaccine, 1st dose * The percentage in the target population who have received a 1st dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND12Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND12Logic](Library-IMMZIND12Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.12 Logic * Immunization coverage for measles and rubella-containing vaccine, 1st dose * The percentage in the target population who have received a 1st dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND12Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.12 Logic * Immunization coverage for measles and rubella-containing vaccine, 1st dose * The percentage in the target population who have received a 1st dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND12Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.12 Logic * Immunization coverage for measles and rubella-containing vaccine, 1st dose * The percentage in the target population who have received a 1st dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND12Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.12 Logic * Immunization coverage for measles and rubella-containing vaccine, 1st dose * The percentage in the target population who have received a 1st dose of measles and rubella-containing vaccine during the reporting period * * Numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND12Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeaslesElements called Measles include IMMZD2DTRubellaElements called Rubella parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of measles and rubella-containing vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.12 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND12Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND12Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND12Logic",
  "title" : "IMMZIND12Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.12 indicator in the Immunization CPG",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMTIgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBtZWFzbGVzIGFuZCBydWJlbGxhLWNvbnRhaW5pbmcgdmFjY2luZSwgMXN0IGRvc2UKICogVGhlIHBlcmNlbnRhZ2UgaW4gdGhlIHRhcmdldCBwb3B1bGF0aW9uIHdobyBoYXZlIHJlY2VpdmVkIGEgMXN0IGRvc2Ugb2YgbWVhc2xlcyBhbmQgcnViZWxsYS1jb250YWluaW5nIHZhY2NpbmUgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIAogKiBOdW1lcmF0b3I6IE51bWJlciBvZiBtZWFzbGVzIGFuZCBydWJlbGxhLWNvbnRhaW5pbmcgdmFjY2luZSBkb3NlcyAoMXN0IGRvc2UpIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIE51bWVyYXRvciBDb21wdXRhdGlvbjogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJNZWFzbGVzIGFuZCBydWJlbGxhLWNvbnRhaW5pbmcgdmFjY2luZXMiIGZvciB0aGUgMXN0IGRvc2UgaW4gdGhlIHByaW1hcnkgc2VyaWVzIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIERlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCiAqIERlbm9taW5hdG9yIENvbXB1dGF0aW9uOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiAqIAogKiBEaXNhZ2dyZWdhdGlvbgogKiAgLSBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAqICAtIFNleAogKiAgLSBBZ2UgaW4geWVhcnMKICogIC0gQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiAqCiAqIFJlZmVyZW5jZXM6IFdITyBJbW11bml6YXRpb24gZmFjaWxpdHkgYW5hbHlzaXMgZ3VpZGUgKDUpCiAqICAgV0hPIEhhbmRib29rIG9uIGltbXVuaXphdGlvbiBkYXRhICg2KQogKiAKICogQW5ub3RhdGlvbnM6IOKAkwogKi8KbGlicmFyeSBJTU1aSU5EMTJMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpJbmRpY2F0b3JFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCmluY2x1ZGUgSU1NWkQyRFRNZWFzbGVzRWxlbWVudHMgY2FsbGVkIE1lYXNsZXMKaW5jbHVkZSBJTU1aRDJEVFJ1YmVsbGFFbGVtZW50cyBjYWxsZWQgUnViZWxsYQoKcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGU+IGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjUtMDEtMDEsIEAyMDI1LTEyLTMxXQoKY29udGV4dCBQYXRpZW50CgovKgogKiBBcyBkZWZpbmVkIGJ5IE1lbWJlciBTdGF0ZQogKi8KZGVmaW5lICJJbml0aWFsIFBvcHVsYXRpb24iOgogIHRydWUKCi8qCkBkZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cApAcHNldWRvY29kZTogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIkRlbm9taW5hdG9yIjoKICB0cnVlCgovKgpAbnVtZXJhdG9yOiBOdW1iZXIgb2YgbWVhc2xlcyBhbmQgcnViZWxsYS1jb250YWluaW5nIHZhY2NpbmUgZG9zZXMgKDFzdCBkb3NlKSBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZApAcHNldWRvY29kZTogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJNZWFzbGVzIGFuZCBydWJlbGxhLWNvbnRhaW5pbmcgdmFjY2luZXMiIGZvciB0aGUgMXN0IGRvc2UgaW4gdGhlIHByaW1hcnkgc2VyaWVzIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiovCmRlZmluZSAiTnVtZXJhdG9yIjoKICBleGlzdHMoIEVsZW1lbnRzLiJNZWFzbGVzIGFuZCBSdWJlbGxhIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IER1cmluZyBNZWFzdXJlbWVudCBQZXJpb2QiLmdldERvc2UoJzEnKSApCgoKCi8qCkBkaXNhZ2dyZWdhdGlvbjogQWRtaW5pc3RyYXRpdmUgYXJlYQogICAgICAgICAgICAgICAgIFNleAogICAgICAgICAgICAgICAgIEFnZSBpbiB5ZWFycwogICAgICAgICAgICAgICAgIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQoqLwpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDEiOgoJRWxlbWVudHMuIkJ5IEdlb2dyYXBoaWMgUmVnaW9uIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDIiOgoJRWxlbWVudHMuIkJ5IEFkbWluaXN0cmF0aXZlIEdlbmRlciBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAzIjoKCUVsZW1lbnRzLiJBZ2UgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gNCI6CglFbGVtZW50cy4iVG9kZGxlciBCeSBBZ2UgU3RyYXRpZmllciIK"
  }]
}

```
