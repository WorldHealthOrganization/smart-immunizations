# IMMZIND08Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND08Logic**

## Library: IMMZIND08Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND08Logic | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND08Logic |

 
This library defines population criteria logic for the IMMZ.IND.08 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.08 Logic * Immunization coverage for oral polio vaccine (OPV), 3rd dose * The percentage in the target population who have received a 3rd dose of OPV during the reporting period * * Numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND08Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio bOPV Primary Series Doses Administered to Patient".sortedIndex(2).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Id: **
  * ?: IMMZIND08Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.08 Logic * Immunization coverage for oral polio vaccine (OPV), 3rd dose * The percentage in the target population who have received a 3rd dose of OPV during the reporting period * * Numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND08Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio bOPV Primary Series Doses Administered to Patient".sortedIndex(2).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.08 Logic * Immunization coverage for oral polio vaccine (OPV), 3rd dose * The percentage in the target population who have received a 3rd dose of OPV during the reporting period * * Numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND08Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio bOPV Primary Series Doses Administered to Patient".sortedIndex(2).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND08Logic](Library-IMMZIND08Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.08 Logic * Immunization coverage for oral polio vaccine (OPV), 3rd dose * The percentage in the target population who have received a 3rd dose of OPV during the reporting period * * Numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND08Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio bOPV Primary Series Doses Administered to Patient".sortedIndex(2).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.08 Logic * Immunization coverage for oral polio vaccine (OPV), 3rd dose * The percentage in the target population who have received a 3rd dose of OPV during the reporting period * * Numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND08Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio bOPV Primary Series Doses Administered to Patient".sortedIndex(2).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.08 Logic * Immunization coverage for oral polio vaccine (OPV), 3rd dose * The percentage in the target population who have received a 3rd dose of OPV during the reporting period * * Numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND08Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio bOPV Primary Series Doses Administered to Patient".sortedIndex(2).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.08 Logic * Immunization coverage for oral polio vaccine (OPV), 3rd dose * The percentage in the target population who have received a 3rd dose of OPV during the reporting period * * Numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND08Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPolioElements called Polio parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of OPV doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Oral polio vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": Coalesce( Polio."Polio bOPV Primary Series Doses Administered to Patient".sortedIndex(2).occurrence.toInterval() starts during "Measurement Period", false ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.08 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND08Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND08Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND08Logic",
  "title" : "IMMZIND08Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.08 indicator in the Immunization CPG",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMDggTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBvcmFsIHBvbGlvIHZhY2NpbmUgKE9QViksIDNyZCBkb3NlCiAqIFRoZSBwZXJjZW50YWdlIGluIHRoZSB0YXJnZXQgcG9wdWxhdGlvbiB3aG8gaGF2ZSByZWNlaXZlZCBhIDNyZCBkb3NlIG9mIE9QViBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogCiAqIE51bWVyYXRvcjogTnVtYmVyIG9mIE9QViBkb3NlcyAoM3JkIGRvc2UpIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIE51bWVyYXRvciBDb21wdXRhdGlvbjogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJPcmFsIHBvbGlvIHZhY2NpbmVzIiBmb3IgdGhlIDNyZCBkb3NlIGluIHRoZSBwcmltYXJ5IHNlcmllcyBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cAogKiBEZW5vbWluYXRvciBDb21wdXRhdGlvbjogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwogKiAKICogRGlzYWdncmVnYXRpb24KICogIC0gQWRtaW5pc3RyYXRpdmUgYXJlYQogKiAgLSBTZXgKICogIC0gQWdlIGluIHllYXJzCiAqICAtIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQogKgogKiBSZWZlcmVuY2VzOiBXSE8gSW1tdW5pemF0aW9uIGZhY2lsaXR5IGFuYWx5c2lzIGd1aWRlICg1KQogKiAgIFdITyBIYW5kYm9vayBvbiBpbW11bml6YXRpb24gZGF0YSAoNikKICogCiAqIEFubm90YXRpb25zOiDigJMKICovCmxpYnJhcnkgSU1NWklORDA4TG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aSW5kaWNhdG9yRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgppbmNsdWRlIElNTVpEMkRUUG9saW9FbGVtZW50cyBjYWxsZWQgUG9saW8KCnBhcmFtZXRlciAiTWVhc3VyZW1lbnQgUGVyaW9kIiBJbnRlcnZhbDxEYXRlPiBkZWZhdWx0IEludGVydmFsW0AyMDI1LTAxLTAxLCBAMjAyNS0xMi0zMV0KCmNvbnRleHQgUGF0aWVudAoKLyoKICogQXMgZGVmaW5lZCBieSBNZW1iZXIgU3RhdGUKICovCmRlZmluZSAiSW5pdGlhbCBQb3B1bGF0aW9uIjoKICB0cnVlCgovKgpAZGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKQHBzZXVkb2NvZGU6IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKKi8KZGVmaW5lICJEZW5vbWluYXRvciI6CiAgdHJ1ZQoKLyoKQG51bWVyYXRvcjogTnVtYmVyIG9mIE9QViBkb3NlcyAoM3JkIGRvc2UpIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCkBwc2V1ZG9jb2RlOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIk9yYWwgcG9saW8gdmFjY2luZXMiIGZvciB0aGUgM3JkIGRvc2UgaW4gdGhlIHByaW1hcnkgc2VyaWVzIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiovCmRlZmluZSAiTnVtZXJhdG9yIjoKICBDb2FsZXNjZSggUG9saW8uIlBvbGlvIGJPUFYgUHJpbWFyeSBTZXJpZXMgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiLnNvcnRlZEluZGV4KDIpLm9jY3VycmVuY2UudG9JbnRlcnZhbCgpIHN0YXJ0cyBkdXJpbmcgIk1lYXN1cmVtZW50IFBlcmlvZCIsCiAgICBmYWxzZSApCiAgICAKLyoKQGRpc2FnZ3JlZ2F0aW9uOiBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAgICAgICAgICAgICAgICAgU2V4CiAgICAgICAgICAgICAgICAgQWdlIGluIHllYXJzCiAgICAgICAgICAgICAgICAgQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiovCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMSI6CglFbGVtZW50cy4iQnkgR2VvZ3JhcGhpYyBSZWdpb24gU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMiI6CglFbGVtZW50cy4iQnkgQWRtaW5pc3RyYXRpdmUgR2VuZGVyIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDMiOgoJRWxlbWVudHMuIkFnZSBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiA0IjoKCUVsZW1lbnRzLiJJbmZhbnQgQnkgQWdlIFN0cmF0aWZpZXIiCg=="
  }]
}

```
