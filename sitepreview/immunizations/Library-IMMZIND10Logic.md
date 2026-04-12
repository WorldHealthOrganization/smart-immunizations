# IMMZIND10Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND10Logic**

## Library: IMMZIND10Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND10Logic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZIND10Logic |

 
This library defines population criteria logic for the IMMZ.IND.10 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.10 Logic * Immunization coverage for inactivated polio vaccine (IPV), 2nd dose * The percentage in the target population who have received a 2nd dose of IPV during the reporting period * * Numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND10Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio IPV Primary Series Doses Administered to Patient".sortedIndex(1).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Id: **
  * ?: IMMZIND10Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.10 Logic * Immunization coverage for inactivated polio vaccine (IPV), 2nd dose * The percentage in the target population who have received a 2nd dose of IPV during the reporting period * * Numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND10Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio IPV Primary Series Doses Administered to Patient".sortedIndex(1).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.10 Logic * Immunization coverage for inactivated polio vaccine (IPV), 2nd dose * The percentage in the target population who have received a 2nd dose of IPV during the reporting period * * Numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND10Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio IPV Primary Series Doses Administered to Patient".sortedIndex(1).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND10Logic](Library-IMMZIND10Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.10 Logic * Immunization coverage for inactivated polio vaccine (IPV), 2nd dose * The percentage in the target population who have received a 2nd dose of IPV during the reporting period * * Numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND10Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio IPV Primary Series Doses Administered to Patient".sortedIndex(1).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.10 Logic * Immunization coverage for inactivated polio vaccine (IPV), 2nd dose * The percentage in the target population who have received a 2nd dose of IPV during the reporting period * * Numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND10Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio IPV Primary Series Doses Administered to Patient".sortedIndex(1).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.10 Logic * Immunization coverage for inactivated polio vaccine (IPV), 2nd dose * The percentage in the target population who have received a 2nd dose of IPV during the reporting period * * Numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND10Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio IPV Primary Series Doses Administered to Patient".sortedIndex(1).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.10 Logic * Immunization coverage for inactivated polio vaccine (IPV), 2nd dose * The percentage in the target population who have received a 2nd dose of IPV during the reporting period * * Numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND10Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of IPV doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Inactivated polio vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio IPV Primary Series Doses Administered to Patient".sortedIndex(1).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.10 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND10Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND10Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND10Logic",
  "title" : "IMMZIND10Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.10 indicator in the Immunization CPG",
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
    "display" : "Library Polio",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPolioElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMTAgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBpbmFjdGl2YXRlZCBwb2xpbyB2YWNjaW5lIChJUFYpLCAybmQgZG9zZQogKiBUaGUgcGVyY2VudGFnZSBpbiB0aGUgdGFyZ2V0IHBvcHVsYXRpb24gd2hvIGhhdmUgcmVjZWl2ZWQgYSAybmQgZG9zZSBvZiBJUFYgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIAogKiBOdW1lcmF0b3I6IE51bWJlciBvZiBJUFYgZG9zZXMgKDJuZCBkb3NlKSBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBOdW1lcmF0b3IgQ29tcHV0YXRpb246IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiSW5hY3RpdmF0ZWQgcG9saW8gdmFjY2luZXMiIGZvciB0aGUgMm5kIGRvc2UgaW4gdGhlIHByaW1hcnkgc2VyaWVzIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIERlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCiAqIERlbm9taW5hdG9yIENvbXB1dGF0aW9uOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiAqIAogKiBEaXNhZ2dyZWdhdGlvbgogKiAgLSBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAqICAtIFNleAogKiAgLSBBZ2UgaW4geWVhcnMKICogIC0gQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiAqCiAqIFJlZmVyZW5jZXM6IFdITyBJbW11bml6YXRpb24gZmFjaWxpdHkgYW5hbHlzaXMgZ3VpZGUgKDUpCiAqICAgV0hPIEhhbmRib29rIG9uIGltbXVuaXphdGlvbiBkYXRhICg2KQogKiAKICogQW5ub3RhdGlvbnM6IOKAkwogKi8KbGlicmFyeSBJTU1aSU5EMTBMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpJbmRpY2F0b3JFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCmluY2x1ZGUgSU1NWkQyRFRQb2xpb0VsZW1lbnRzIGNhbGxlZCBQb2xpbwoKcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGU+IGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjUtMDEtMDEsIEAyMDI1LTEyLTMxXQoKY29udGV4dCBQYXRpZW50CgovKgogKiBBcyBkZWZpbmVkIGJ5IE1lbWJlciBTdGF0ZQogKi8KZGVmaW5lICJJbml0aWFsIFBvcHVsYXRpb24iOgogIHRydWUKCi8qCkBkZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cApAcHNldWRvY29kZTogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIkRlbm9taW5hdG9yIjoKICB0cnVlCgovKgpAbnVtZXJhdG9yOiBOdW1iZXIgb2YgSVBWIGRvc2VzICgybmQgZG9zZSkgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKQHBzZXVkb2NvZGU6IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiSW5hY3RpdmF0ZWQgcG9saW8gdmFjY2luZXMiIGZvciB0aGUgMm5kIGRvc2UgaW4gdGhlIHByaW1hcnkgc2VyaWVzIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiovCmRlZmluZSAiTnVtZXJhdG9yIjoKICBDb2FsZXNjZSggUG9saW8uIlBvbGlvIElQViBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIuc29ydGVkSW5kZXgoMSkub2NjdXJyZW5jZS50b0ludGVydmFsKCkgc3RhcnRzIGR1cmluZyAiTWVhc3VyZW1lbnQgUGVyaW9kIiwKICAgIGZhbHNlICkKCi8qCkBkaXNhZ2dyZWdhdGlvbjogQWRtaW5pc3RyYXRpdmUgYXJlYQogICAgICAgICAgICAgICAgIFNleAogICAgICAgICAgICAgICAgIEFnZSBpbiB5ZWFycwogICAgICAgICAgICAgICAgIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQoqLwpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDEiOgoJRWxlbWVudHMuIkJ5IEdlb2dyYXBoaWMgUmVnaW9uIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDIiOgoJRWxlbWVudHMuIkJ5IEFkbWluaXN0cmF0aXZlIEdlbmRlciBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAzIjoKCUVsZW1lbnRzLiJBZ2UgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gNCI6CglFbGVtZW50cy4iSW5mYW50IEJ5IEFnZSBTdHJhdGlmaWVyIgo="
  }]
}

```
