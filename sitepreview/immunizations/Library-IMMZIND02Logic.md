# IMMZIND02Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND02Logic**

## Library: IMMZIND02Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND02Logic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZIND02Logic |

 
This library defines population criteria logic for the IMMZ.IND.02 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.02 Logic * Immunization coverage for pentavalent vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pentavalent vaccine during the reporting period * * Numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND02Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Pentavalent Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Id: **
  * ?: IMMZIND02Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.02 Logic * Immunization coverage for pentavalent vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pentavalent vaccine during the reporting period * * Numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND02Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Pentavalent Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.02 Logic * Immunization coverage for pentavalent vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pentavalent vaccine during the reporting period * * Numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND02Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Pentavalent Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND02Logic](Library-IMMZIND02Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.02 Logic * Immunization coverage for pentavalent vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pentavalent vaccine during the reporting period * * Numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND02Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Pentavalent Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.02 Logic * Immunization coverage for pentavalent vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pentavalent vaccine during the reporting period * * Numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND02Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Pentavalent Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.02 Logic * Immunization coverage for pentavalent vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pentavalent vaccine during the reporting period * * Numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND02Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Pentavalent Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.02 Logic * Immunization coverage for pentavalent vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pentavalent vaccine during the reporting period * * Numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND02Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pentavalent doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Pentavalent Doses Administered to Patient During Measurement Period".getDose('1') ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.02 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND02Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND02Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND02Logic",
  "title" : "IMMZIND02Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.02 indicator in the Immunization CPG",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMDIgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBwZW50YXZhbGVudCB2YWNjaW5lLCAxc3QgZG9zZQogKiBUaGUgcGVyY2VudGFnZSBpbiB0aGUgdGFyZ2V0IHBvcHVsYXRpb24gd2hvIGhhdmUgcmVjZWl2ZWQgdGhlIDFzdCBkb3NlIG9mIHBlbnRhdmFsZW50IHZhY2NpbmUgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIAogKiBOdW1lcmF0b3I6IE51bWJlciBvZiBwZW50YXZhbGVudCBkb3NlcyAoMXN0IGRvc2UpIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIE51bWVyYXRvciBDb21wdXRhdGlvbjogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJQZW50YXZhbGVudCB2YWNjaW5lcyIgZm9yIHRoZSAxc3QgZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogRGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKICogRGVub21pbmF0b3IgQ29tcHV0YXRpb246IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKICogCiAqIERpc2FnZ3JlZ2F0aW9uCiAqICAtIEFkbWluaXN0cmF0aXZlIGFyZWEKICogIC0gU2V4CiAqICAtIEFnZSBpbiB5ZWFycwogKiAgLSBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKICoKICogUmVmZXJlbmNlczogV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogICBXSE8gSGFuZGJvb2sgb24gaW1tdW5pemF0aW9uIGRhdGEgKDYpCiAqIAogKiBBbm5vdGF0aW9uczog4oCTCiAqLwpsaWJyYXJ5IElNTVpJTkQwMkxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkluZGljYXRvckVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGU+IGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjUtMDEtMDEsIEAyMDI1LTEyLTMxXQoKY29udGV4dCBQYXRpZW50CgovKgogKiBBcyBkZWZpbmVkIGJ5IE1lbWJlciBTdGF0ZQogKi8KZGVmaW5lICJJbml0aWFsIFBvcHVsYXRpb24iOgogIHRydWUKCi8qCkBkZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cApAcHNldWRvY29kZTogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIkRlbm9taW5hdG9yIjoKICB0cnVlCgovKgpAbnVtZXJhdG9yOiBOdW1iZXIgb2YgcGVudGF2YWxlbnQgZG9zZXMgKDFzdCBkb3NlKSBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZApAcHNldWRvY29kZTogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJQZW50YXZhbGVudCB2YWNjaW5lcyIgZm9yIHRoZSAxc3QgZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKKi8KZGVmaW5lICJOdW1lcmF0b3IiOgogIGV4aXN0cyggRWxlbWVudHMuIlBlbnRhdmFsZW50IERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IER1cmluZyBNZWFzdXJlbWVudCBQZXJpb2QiLmdldERvc2UoJzEnKSApCgovKgpAZGlzYWdncmVnYXRpb246IEFkbWluaXN0cmF0aXZlIGFyZWEKICAgICAgICAgICAgICAgICBTZXgKICAgICAgICAgICAgICAgICBBZ2UgaW4geWVhcnMKICAgICAgICAgICAgICAgICBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKCUVsZW1lbnRzLiJCeSBHZW9ncmFwaGljIFJlZ2lvbiBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAyIjoKCUVsZW1lbnRzLiJCeSBBZG1pbmlzdHJhdGl2ZSBHZW5kZXIgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CglFbGVtZW50cy4iQWdlIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDQiOgoJRWxlbWVudHMuIkluZmFudCBCeSBBZ2UgU3RyYXRpZmllciIK"
  }]
}

```
