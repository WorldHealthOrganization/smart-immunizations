# IMMZIND25Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND25Logic**

## Library: IMMZIND25Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND25Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND25Logic |

 
This library defines population criteria logic for the IMMZ.IND.25 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.25 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 6th dose * The percentage in the target population who have received a sixth dose of tetanus and diphtheria-containing vaccine (Td) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND25Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(5).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Id: **
  * ?: IMMZIND25Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.25 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 6th dose * The percentage in the target population who have received a sixth dose of tetanus and diphtheria-containing vaccine (Td) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND25Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(5).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.25 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 6th dose * The percentage in the target population who have received a sixth dose of tetanus and diphtheria-containing vaccine (Td) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND25Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(5).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND25Logic](Library-IMMZIND25Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.25 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 6th dose * The percentage in the target population who have received a sixth dose of tetanus and diphtheria-containing vaccine (Td) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND25Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(5).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.25 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 6th dose * The percentage in the target population who have received a sixth dose of tetanus and diphtheria-containing vaccine (Td) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND25Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(5).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.25 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 6th dose * The percentage in the target population who have received a sixth dose of tetanus and diphtheria-containing vaccine (Td) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND25Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(5).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.25 Logic * Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 6th dose * The percentage in the target population who have received a sixth dose of tetanus and diphtheria-containing vaccine (Td) during the reporting period * * Numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND25Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTDTPElements called DTP parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of tetanus and diphtheria-containing vaccine doses (6th dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Tetanus and diphtheria-containing vaccines (Td)" for the sixth dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( DTP."Td Doses Administered to Patient".sortedIndex(5).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Child By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.25 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND25Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND25Logic",
  "version" : "0.2.0",
  "name" : "IMMZIND25Logic",
  "title" : "IMMZIND25Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.25 indicator in the Immunization CPG",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMjUgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciB0ZXRhbnVzIGFuZCBkaXBodGhlcmlhLWNvbnRhaW5pbmcgdmFjY2luZXMgKFRkKSwgNnRoIGRvc2UKICogVGhlIHBlcmNlbnRhZ2UgaW4gdGhlIHRhcmdldCBwb3B1bGF0aW9uIHdobyBoYXZlIHJlY2VpdmVkIGEgc2l4dGggZG9zZSBvZiB0ZXRhbnVzIGFuZCBkaXBodGhlcmlhLWNvbnRhaW5pbmcgdmFjY2luZSAoVGQpIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiAKICogTnVtZXJhdG9yOiBOdW1iZXIgb2YgdGV0YW51cyBhbmQgZGlwaHRoZXJpYS1jb250YWluaW5nIHZhY2NpbmUgZG9zZXMgKDZ0aCBkb3NlKSBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBOdW1lcmF0b3IgQ29tcHV0YXRpb246IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiVGV0YW51cyBhbmQgZGlwaHRoZXJpYS1jb250YWluaW5nIHZhY2NpbmVzIChUZCkiIGZvciB0aGUgc2l4dGggZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogRGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKICogRGVub21pbmF0b3IgQ29tcHV0YXRpb246IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKICogCiAqIERpc2FnZ3JlZ2F0aW9uCiAqICAtIEFkbWluaXN0cmF0aXZlIGFyZWEKICogIC0gU2V4CiAqICAtIEFnZSBpbiB5ZWFycwogKiAgLSBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKICoKICogUmVmZXJlbmNlczogV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogICBXSE8gSGFuZGJvb2sgb24gaW1tdW5pemF0aW9uIGRhdGEgKDYpCiAqIAogKiBBbm5vdGF0aW9uczog4oCTCiAqLwpsaWJyYXJ5IElNTVpJTkQyNUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkluZGljYXRvckVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKaW5jbHVkZSBJTU1aRDJEVERUUEVsZW1lbnRzIGNhbGxlZCBEVFAKCnBhcmFtZXRlciAiTWVhc3VyZW1lbnQgUGVyaW9kIiBJbnRlcnZhbDxEYXRlPiBkZWZhdWx0IEludGVydmFsW0AyMDIwLTAxLTAxLCBAMjAyNS0xMi0zMV0KCmNvbnRleHQgUGF0aWVudAoKLyoKICogQXMgZGVmaW5lZCBieSBNZW1iZXIgU3RhdGUKICovCmRlZmluZSAiSW5pdGlhbCBQb3B1bGF0aW9uIjoKICB0cnVlCgovKgpAZGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKQHBzZXVkb2NvZGU6IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKKi8KZGVmaW5lICJEZW5vbWluYXRvciI6CiAgdHJ1ZQoKLyoKQG51bWVyYXRvcjogTnVtYmVyIG9mIHRldGFudXMgYW5kIGRpcGh0aGVyaWEtY29udGFpbmluZyB2YWNjaW5lIGRvc2VzICg2dGggZG9zZSkgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKQHBzZXVkb2NvZGU6IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiVGV0YW51cyBhbmQgZGlwaHRoZXJpYS1jb250YWluaW5nIHZhY2NpbmVzIChUZCkiIGZvciB0aGUgc2l4dGggZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKKi8KZGVmaW5lICJOdW1lcmF0b3IiOgogIENvYWxlc2NlKCBEVFAuIlRkIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50Ii5zb3J0ZWRJbmRleCg1KS5vY2N1cnJlbmNlLnRvSW50ZXJ2YWwoKSBzdGFydHMgZHVyaW5nICJNZWFzdXJlbWVudCBQZXJpb2QiLAogICAgZmFsc2UgKQoKLyoKQGRpc2FnZ3JlZ2F0aW9uOiBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAgICAgICAgICAgICAgICAgU2V4CiAgICAgICAgICAgICAgICAgQWdlIGluIHllYXJzCiAgICAgICAgICAgICAgICAgQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiovCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMSI6CglFbGVtZW50cy4iQnkgR2VvZ3JhcGhpYyBSZWdpb24gU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMiI6CglFbGVtZW50cy4iQnkgQWRtaW5pc3RyYXRpdmUgR2VuZGVyIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDMiOgoJRWxlbWVudHMuIkFnZSBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiA0IjoKCUVsZW1lbnRzLiJDaGlsZCBCeSBBZ2UgU3RyYXRpZmllciIK"
  }]
}

```
