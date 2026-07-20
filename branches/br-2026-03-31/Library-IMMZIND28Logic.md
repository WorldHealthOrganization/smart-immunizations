# IMMZIND28Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND28Logic**

## Library: IMMZIND28Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND28Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND28Logic |

 
This library defines population criteria logic for the IMMZ.IND.28 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.28 Logic * Immunization coverage for typhoid vaccines * The percentage in the target population who have received typhoid vaccine during the reporting period * * Numerator: Number of typhoid vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND28Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTTyphoidElements called Typhoid parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of typhoid vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Typhoid."Typhoid Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Id: **
  * ?: IMMZIND28Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.28 Logic * Immunization coverage for typhoid vaccines * The percentage in the target population who have received typhoid vaccine during the reporting period * * Numerator: Number of typhoid vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND28Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTTyphoidElements called Typhoid parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of typhoid vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Typhoid."Typhoid Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.28 Logic * Immunization coverage for typhoid vaccines * The percentage in the target population who have received typhoid vaccine during the reporting period * * Numerator: Number of typhoid vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND28Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTTyphoidElements called Typhoid parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of typhoid vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Typhoid."Typhoid Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND28Logic](Library-IMMZIND28Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.28 Logic * Immunization coverage for typhoid vaccines * The percentage in the target population who have received typhoid vaccine during the reporting period * * Numerator: Number of typhoid vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND28Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTTyphoidElements called Typhoid parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of typhoid vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Typhoid."Typhoid Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.28 Logic * Immunization coverage for typhoid vaccines * The percentage in the target population who have received typhoid vaccine during the reporting period * * Numerator: Number of typhoid vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND28Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTTyphoidElements called Typhoid parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of typhoid vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Typhoid."Typhoid Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.28 Logic * Immunization coverage for typhoid vaccines * The percentage in the target population who have received typhoid vaccine during the reporting period * * Numerator: Number of typhoid vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND28Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTTyphoidElements called Typhoid parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of typhoid vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Typhoid."Typhoid Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.28 Logic * Immunization coverage for typhoid vaccines * The percentage in the target population who have received typhoid vaccine during the reporting period * * Numerator: Number of typhoid vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND28Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTTyphoidElements called Typhoid parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of typhoid vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Typhoid vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Typhoid."Typhoid Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.28 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND28Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND28Logic",
  "version" : "0.2.0",
  "name" : "IMMZIND28Logic",
  "title" : "IMMZIND28Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.28 indicator in the Immunization CPG",
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
    "display" : "Library Typhoid",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTTyphoidElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMjggTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciB0eXBob2lkIHZhY2NpbmVzCiAqIFRoZSBwZXJjZW50YWdlIGluIHRoZSB0YXJnZXQgcG9wdWxhdGlvbiB3aG8gaGF2ZSByZWNlaXZlZCB0eXBob2lkIHZhY2NpbmUgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIAogKiBOdW1lcmF0b3I6IE51bWJlciBvZiB0eXBob2lkIHZhY2NpbmUgZG9zZXMgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogTnVtZXJhdG9yIENvbXB1dGF0aW9uOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIlR5cGhvaWQgdmFjY2luZXMiIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIERlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCiAqIERlbm9taW5hdG9yIENvbXB1dGF0aW9uOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiAqIAogKiBEaXNhZ2dyZWdhdGlvbgogKiAgLSBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAqICAtIFNleAogKiAgLSBBZ2UgaW4geWVhcnMKICogIC0gQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiAqCiAqIFJlZmVyZW5jZXM6IFdITy9VTklDRUYgam9pbnQgcmVwb3J0aW5nIGZvcm0gKDEpCiAqICAgV0hPIEltbXVuaXphdGlvbiBkYXRhIHBvcnRhbCAoMikKICogICBXSE8gSW1tdW5pemF0aW9uIGZhY2lsaXR5IGFuYWx5c2lzIGd1aWRlICg1KQogKiAgIFdITyBIYW5kYm9vayBvbiBpbW11bml6YXRpb24gZGF0YSAoNikKICogCiAqIEFubm90YXRpb25zOiBUaGUgY2FsY3VsYXRpb24gZm9yIHRoaXMgaW5kaWNhdG9yIGlzIGluIGxpbmUgd2l0aCB0aGUgYWRtaW5pc3RyYXRpdmUgY2FsY3VsYXRpb24gcHJvdmlkZWQgb24gdGhlIFdITyBJbW11bml6YXRpb24gZGF0YSBwb3J0YWwuCiAqICAgQXMgcGVyIFdITyBJbW11bml6YXRpb24gZGF0YSBwb3J0YWwsIHJlY29tbWVuZGVkIGRlbm9taW5hdG9yIHNob3VsZCBiZSBzcGVjaWZpZWQgYnkgTWVtYmVyIFN0YXRlcyBhcyByZWNvbW1lbmRlZCBzY2hlZHVsZXMgbWF5IHZhcnkuCiAqLwpsaWJyYXJ5IElNTVpJTkQyOExvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkluZGljYXRvckVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKaW5jbHVkZSBJTU1aRDJEVFR5cGhvaWRFbGVtZW50cyBjYWxsZWQgVHlwaG9pZAoKcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGU+IGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjUtMDEtMDEsIEAyMDI1LTEyLTMxXQoKY29udGV4dCBQYXRpZW50CgovKgogKiBBcyBkZWZpbmVkIGJ5IE1lbWJlciBTdGF0ZQogKi8KZGVmaW5lICJJbml0aWFsIFBvcHVsYXRpb24iOgogIHRydWUKCi8qCkBkZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cApAcHNldWRvY29kZTogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIkRlbm9taW5hdG9yIjoKICB0cnVlCgovKgpAbnVtZXJhdG9yOiBOdW1iZXIgb2YgdHlwaG9pZCB2YWNjaW5lIGRvc2VzIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCkBwc2V1ZG9jb2RlOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIlR5cGhvaWQgdmFjY2luZXMiIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiovCmRlZmluZSAiTnVtZXJhdG9yIjoKICBleGlzdHMoIFR5cGhvaWQuIlR5cGhvaWQgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiIEkKICAgIHdoZXJlIEkub2NjdXJyZW5jZS50b0ludGVydmFsKCkgc3RhcnRzIGR1cmluZyAiTWVhc3VyZW1lbnQgUGVyaW9kIiApCgovKgpAZGlzYWdncmVnYXRpb246IEFkbWluaXN0cmF0aXZlIGFyZWEKICAgICAgICAgICAgICAgICBTZXgKICAgICAgICAgICAgICAgICBBZ2UgaW4geWVhcnMKICAgICAgICAgICAgICAgICBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKCUVsZW1lbnRzLiJCeSBHZW9ncmFwaGljIFJlZ2lvbiBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAyIjoKCUVsZW1lbnRzLiJCeSBBZG1pbmlzdHJhdGl2ZSBHZW5kZXIgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CglFbGVtZW50cy4iQWdlIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDQiOgoJRWxlbWVudHMuIkNoaWxkIEJ5IEFnZSBTdHJhdGlmaWVyIgo="
  }]
}

```
