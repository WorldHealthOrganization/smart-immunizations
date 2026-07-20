# IMMZIND23Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND23Logic**

## Library: IMMZIND23Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND23Logic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZIND23Logic |

 
This library defines population criteria logic for the IMMZ.IND.23 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.23 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose * The percentage in the target population who have received a 4th dose of a tetanus and diphtheria-containing vaccine (DT) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND23Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(3).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Id: **
  * ?: IMMZIND23Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.23 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose * The percentage in the target population who have received a 4th dose of a tetanus and diphtheria-containing vaccine (DT) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND23Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(3).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.23 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose * The percentage in the target population who have received a 4th dose of a tetanus and diphtheria-containing vaccine (DT) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND23Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(3).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND23Logic](Library-IMMZIND23Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.23 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose * The percentage in the target population who have received a 4th dose of a tetanus and diphtheria-containing vaccine (DT) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND23Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(3).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.23 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose * The percentage in the target population who have received a 4th dose of a tetanus and diphtheria-containing vaccine (DT) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND23Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(3).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.23 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose * The percentage in the target population who have received a 4th dose of a tetanus and diphtheria-containing vaccine (DT) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND23Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(3).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.23 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose * The percentage in the target population who have received a 4th dose of a tetanus and diphtheria-containing vaccine (DT) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND23Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (4th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (DT)" for the 4th dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(3).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.23 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND23Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND23Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND23Logic",
  "title" : "IMMZIND23Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.23 indicator in the Immunization CPG",
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
    "display" : "Library DTP",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTDTPElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMjMgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciB0ZXRhbnVzIGFuZCBkaXBodGhlcmlhLWNvbnRhaW5pbmcgdmFjY2luZXMgKERUKSwgNHRoIGRvc2UKICogVGhlIHBlcmNlbnRhZ2UgaW4gdGhlIHRhcmdldCBwb3B1bGF0aW9uIHdobyBoYXZlIHJlY2VpdmVkIGEgNHRoIGRvc2Ugb2YgYSB0ZXRhbnVzIGFuZCBkaXBodGhlcmlhLWNvbnRhaW5pbmcgdmFjY2luZSAoRFQpIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiAKICogTnVtZXJhdG9yOiBOdW1iZXIgb2YgdGV0YW51cyBhbmQgZGlwaHRoZXJpYS1jb250YWluaW5nIHZhY2NpbmUgZG9zZXMgKDR0aCBkb3NlKSBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBOdW1lcmF0b3IgQ29tcHV0YXRpb246IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiVGV0YW51cyBhbmQgZGlwaHRoZXJpYS1jb250YWluaW5nIHZhY2NpbmVzIChEVCkiIGZvciB0aGUgNHRoIGRvc2UgaW4gdGhlIHByaW1hcnkgc2VyaWVzIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIERlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCiAqIERlbm9taW5hdG9yIENvbXB1dGF0aW9uOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiAqIAogKiBEaXNhZ2dyZWdhdGlvbgogKiAgLSBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAqICAtIFNleAogKiAgLSBBZ2UgaW4geWVhcnMKICogIC0gQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiAqCiAqIFJlZmVyZW5jZXM6IFdITyBJbW11bml6YXRpb24gZmFjaWxpdHkgYW5hbHlzaXMgZ3VpZGUgKDUpCiAqICAgV0hPIEhhbmRib29rIG9uIGltbXVuaXphdGlvbiBkYXRhICg2KQogKiAKICogQW5ub3RhdGlvbnM6IOKAkwogKi8KbGlicmFyeSBJTU1aSU5EMjNMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpJbmRpY2F0b3JFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCmluY2x1ZGUgSU1NWkQyRFREVFBFbGVtZW50cyBjYWxsZWQgRFRQCgpwYXJhbWV0ZXIgIk1lYXN1cmVtZW50IFBlcmlvZCIgSW50ZXJ2YWw8RGF0ZT4gZGVmYXVsdCBJbnRlcnZhbFtAMjAyMC0wMS0wMSwgQDIwMjUtMTItMzFdCgpjb250ZXh0IFBhdGllbnQKCi8qCiAqIEFzIGRlZmluZWQgYnkgTWVtYmVyIFN0YXRlCiAqLwpkZWZpbmUgIkluaXRpYWwgUG9wdWxhdGlvbiI6CiAgdHJ1ZQoKLyoKQGRlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCkBwc2V1ZG9jb2RlOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiovCmRlZmluZSAiRGVub21pbmF0b3IiOgogIHRydWUKCi8qCkBudW1lcmF0b3I6IE51bWJlciBvZiB0ZXRhbnVzIGFuZCBkaXBodGhlcmlhLWNvbnRhaW5pbmcgdmFjY2luZSBkb3NlcyAoNHRoIGRvc2UpIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCkBwc2V1ZG9jb2RlOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIlRldGFudXMgYW5kIGRpcGh0aGVyaWEtY29udGFpbmluZyB2YWNjaW5lcyAoRFQpIiBmb3IgdGhlIDR0aCBkb3NlIGluIHRoZSBwcmltYXJ5IHNlcmllcyBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAoqLwpkZWZpbmUgIk51bWVyYXRvciI6CiAgQ29hbGVzY2UoIERUUC4iVGQgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiLnNvcnRlZEluZGV4KDMpLm9jY3VycmVuY2UudG9JbnRlcnZhbCgpIHN0YXJ0cyBkdXJpbmcgIk1lYXN1cmVtZW50IFBlcmlvZCIsCiAgICBmYWxzZSApCgovKgpAZGlzYWdncmVnYXRpb246IEFkbWluaXN0cmF0aXZlIGFyZWEKICAgICAgICAgICAgICAgICBTZXgKICAgICAgICAgICAgICAgICBBZ2UgaW4geWVhcnMKICAgICAgICAgICAgICAgICBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKCUVsZW1lbnRzLiJCeSBHZW9ncmFwaGljIFJlZ2lvbiBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAyIjoKCUVsZW1lbnRzLiJCeSBBZG1pbmlzdHJhdGl2ZSBHZW5kZXIgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CglFbGVtZW50cy4iQWdlIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDQiOgoJRWxlbWVudHMuIkNoaWxkIEJ5IEFnZSBTdHJhdGlmaWVyIgo="
  }]
}

```
