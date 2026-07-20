# IMMZIND33Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND33Logic**

## Library: IMMZIND33Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND33Logic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZIND33Logic |

 
This library defines population criteria logic for the IMMZ.IND.33 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.33 Logic * Immunization coverage for malaria vaccines, 3rd dose * The percentage in the target population who have received the 3rd dose of malaria vaccine during the reporting period * * Numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND33Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMalariaElements called Malaria parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Id: **
  * ?: IMMZIND33Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.33 Logic * Immunization coverage for malaria vaccines, 3rd dose * The percentage in the target population who have received the 3rd dose of malaria vaccine during the reporting period * * Numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND33Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMalariaElements called Malaria parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.33 Logic * Immunization coverage for malaria vaccines, 3rd dose * The percentage in the target population who have received the 3rd dose of malaria vaccine during the reporting period * * Numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND33Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMalariaElements called Malaria parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND33Logic](Library-IMMZIND33Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.33 Logic * Immunization coverage for malaria vaccines, 3rd dose * The percentage in the target population who have received the 3rd dose of malaria vaccine during the reporting period * * Numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND33Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMalariaElements called Malaria parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.33 Logic * Immunization coverage for malaria vaccines, 3rd dose * The percentage in the target population who have received the 3rd dose of malaria vaccine during the reporting period * * Numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND33Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMalariaElements called Malaria parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.33 Logic * Immunization coverage for malaria vaccines, 3rd dose * The percentage in the target population who have received the 3rd dose of malaria vaccine during the reporting period * * Numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND33Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMalariaElements called Malaria parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.33 Logic * Immunization coverage for malaria vaccines, 3rd dose * The percentage in the target population who have received the 3rd dose of malaria vaccine during the reporting period * * Numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND33Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMalariaElements called Malaria parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of malaria vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.33 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND33Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND33Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND33Logic",
  "title" : "IMMZIND33Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.33 indicator in the Immunization CPG",
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
    "display" : "Library Malaria",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMalariaElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMzMgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBtYWxhcmlhIHZhY2NpbmVzLCAzcmQgZG9zZQogKiBUaGUgcGVyY2VudGFnZSBpbiB0aGUgdGFyZ2V0IHBvcHVsYXRpb24gd2hvIGhhdmUgcmVjZWl2ZWQgdGhlIDNyZCBkb3NlIG9mIG1hbGFyaWEgdmFjY2luZSBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogCiAqIE51bWVyYXRvcjogTnVtYmVyIG9mIG1hbGFyaWEgdmFjY2luZSBkb3NlcyAoM3JkIGRvc2UpIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIE51bWVyYXRvciBDb21wdXRhdGlvbjogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJNYWxhcmlhIHZhY2NpbmVzIiBmb3IgdGhlIDNyZCBkb3NlIGluIHRoZSBwcmltYXJ5IHNlcmllcyBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cAogKiBEZW5vbWluYXRvciBDb21wdXRhdGlvbjogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwogKiAKICogRGlzYWdncmVnYXRpb24KICogIC0gQWRtaW5pc3RyYXRpdmUgYXJlYQogKiAgLSBTZXgKICogIC0gQWdlIGluIHllYXJzCiAqICAtIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQogKgogKiBSZWZlcmVuY2VzOiBXSE8gSW1tdW5pemF0aW9uIGZhY2lsaXR5IGFuYWx5c2lzIGd1aWRlICg1KQogKiAgIFdITyBIYW5kYm9vayBvbiBpbW11bml6YXRpb24gZGF0YSAoNikKICogCiAqIEFubm90YXRpb25zOiDigJMKICovCmxpYnJhcnkgSU1NWklORDMzTG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aSW5kaWNhdG9yRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgppbmNsdWRlIElNTVpEMkRUTWFsYXJpYUVsZW1lbnRzIGNhbGxlZCBNYWxhcmlhCgpwYXJhbWV0ZXIgIk1lYXN1cmVtZW50IFBlcmlvZCIgSW50ZXJ2YWw8RGF0ZT4gZGVmYXVsdCBJbnRlcnZhbFtAMjAyNS0wMS0wMSwgQDIwMjUtMTItMzFdCgpjb250ZXh0IFBhdGllbnQKCi8qCiAqIEFzIGRlZmluZWQgYnkgTWVtYmVyIFN0YXRlCiAqLwpkZWZpbmUgIkluaXRpYWwgUG9wdWxhdGlvbiI6CiAgdHJ1ZQoKLyoKQGRlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCkBwc2V1ZG9jb2RlOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiovCmRlZmluZSAiRGVub21pbmF0b3IiOgogIHRydWUKCi8qCkBudW1lcmF0b3I6IE51bWJlciBvZiBtYWxhcmlhIHZhY2NpbmUgZG9zZXMgKDNyZCBkb3NlKSBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZApAcHNldWRvY29kZTogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJNYWxhcmlhIHZhY2NpbmVzIiBmb3IgdGhlIDNyZCBkb3NlIGluIHRoZSBwcmltYXJ5IHNlcmllcyBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAoqLwpkZWZpbmUgIk51bWVyYXRvciI6CiAgZXhpc3RzKCAoTWFsYXJpYS4iTWFsYXJpYSBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIuZ2V0RG9zZSgnMycpKSBJCiAgICB3aGVyZSBJLm9jY3VycmVuY2UudG9JbnRlcnZhbCgpIHN0YXJ0cyBkdXJpbmcgIk1lYXN1cmVtZW50IFBlcmlvZCIgKQoKLyoKQGRpc2FnZ3JlZ2F0aW9uOiBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAgICAgICAgICAgICAgICAgU2V4CiAgICAgICAgICAgICAgICAgQWdlIGluIHllYXJzCiAgICAgICAgICAgICAgICAgQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiovCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMSI6CglFbGVtZW50cy4iQnkgR2VvZ3JhcGhpYyBSZWdpb24gU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMiI6CglFbGVtZW50cy4iQnkgQWRtaW5pc3RyYXRpdmUgR2VuZGVyIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDMiOgoJRWxlbWVudHMuIkFnZSBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiA0IjoKCUVsZW1lbnRzLiJJbmZhbnQgQnkgQWdlIFN0cmF0aWZpZXIiCg=="
  }]
}

```
