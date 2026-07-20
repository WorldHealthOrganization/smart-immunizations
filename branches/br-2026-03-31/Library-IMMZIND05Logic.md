# IMMZIND05Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND05Logic**

## Library: IMMZIND05Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND05Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND05Logic |

 
This library defines population criteria logic for the IMMZ.IND.05 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.05 Logic * Immunization coverage for hepatitis B-containing vaccines (birth dose) * The percentage in the target population who received hepatitis B-containing vaccine birth dose within the first 24 hours of birth during the reporting period * * Numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group: < 24 hours of birth * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is live births. */ library IMMZIND05Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHepatitisBElements called HepB parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( HepB."Hepatitis B Dose 0 Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group: < 24 hours of birth */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Id: **
  * ?: IMMZIND05Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.05 Logic * Immunization coverage for hepatitis B-containing vaccines (birth dose) * The percentage in the target population who received hepatitis B-containing vaccine birth dose within the first 24 hours of birth during the reporting period * * Numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group: < 24 hours of birth * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is live births. */ library IMMZIND05Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHepatitisBElements called HepB parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( HepB."Hepatitis B Dose 0 Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group: < 24 hours of birth */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.05 Logic * Immunization coverage for hepatitis B-containing vaccines (birth dose) * The percentage in the target population who received hepatitis B-containing vaccine birth dose within the first 24 hours of birth during the reporting period * * Numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group: < 24 hours of birth * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is live births. */ library IMMZIND05Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHepatitisBElements called HepB parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( HepB."Hepatitis B Dose 0 Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group: < 24 hours of birth */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND05Logic](Library-IMMZIND05Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.05 Logic * Immunization coverage for hepatitis B-containing vaccines (birth dose) * The percentage in the target population who received hepatitis B-containing vaccine birth dose within the first 24 hours of birth during the reporting period * * Numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group: < 24 hours of birth * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is live births. */ library IMMZIND05Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHepatitisBElements called HepB parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( HepB."Hepatitis B Dose 0 Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group: < 24 hours of birth */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.05 Logic * Immunization coverage for hepatitis B-containing vaccines (birth dose) * The percentage in the target population who received hepatitis B-containing vaccine birth dose within the first 24 hours of birth during the reporting period * * Numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group: < 24 hours of birth * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is live births. */ library IMMZIND05Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHepatitisBElements called HepB parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( HepB."Hepatitis B Dose 0 Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group: < 24 hours of birth */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.05 Logic * Immunization coverage for hepatitis B-containing vaccines (birth dose) * The percentage in the target population who received hepatitis B-containing vaccine birth dose within the first 24 hours of birth during the reporting period * * Numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group: < 24 hours of birth * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is live births. */ library IMMZIND05Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHepatitisBElements called HepB parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( HepB."Hepatitis B Dose 0 Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group: < 24 hours of birth */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.05 Logic * Immunization coverage for hepatitis B-containing vaccines (birth dose) * The percentage in the target population who received hepatitis B-containing vaccine birth dose within the first 24 hours of birth during the reporting period * * Numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group: < 24 hours of birth * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is live births. */ library IMMZIND05Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHepatitisBElements called HepB parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of hepatitis B-containing vaccine birth doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Hepatitis B-containing vaccines" AND "Dose 0 administered" = "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( HepB."Hepatitis B Dose 0 Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group: < 24 hours of birth */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.05 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND05Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND05Logic",
  "version" : "0.2.0",
  "name" : "IMMZIND05Logic",
  "title" : "IMMZIND05Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.05 indicator in the Immunization CPG",
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
    "display" : "Library HepB",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMDUgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBoZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmVzIChiaXJ0aCBkb3NlKQogKiBUaGUgcGVyY2VudGFnZSBpbiB0aGUgdGFyZ2V0IHBvcHVsYXRpb24gd2hvIHJlY2VpdmVkIGhlcGF0aXRpcyBCLWNvbnRhaW5pbmcgdmFjY2luZSBiaXJ0aCBkb3NlIHdpdGhpbiB0aGUgZmlyc3QgMjQgaG91cnMgb2YgYmlydGggZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIAogKiBOdW1lcmF0b3I6IE51bWJlciBvZiBoZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmUgYmlydGggZG9zZXMgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogTnVtZXJhdG9yIENvbXB1dGF0aW9uOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIkhlcGF0aXRpcyBCLWNvbnRhaW5pbmcgdmFjY2luZXMiIEFORCAiRG9zZSAwIGFkbWluaXN0ZXJlZCIgPSAiWWVzIiBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cAogKiBEZW5vbWluYXRvciBDb21wdXRhdGlvbjogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwogKiAKICogRGlzYWdncmVnYXRpb24KICogIC0gQWRtaW5pc3RyYXRpdmUgYXJlYQogKiAgLSBTZXgKICogIC0gQWdlIGluIHllYXJzCiAqICAtIEFnZSBncm91cDogPCAyNCBob3VycyBvZiBiaXJ0aAogKgogKiBSZWZlcmVuY2VzOiBXSE8vVU5JQ0VGIGpvaW50IHJlcG9ydGluZyBmb3JtICgxKQogKiAgIFdITyBJbW11bml6YXRpb24gZGF0YSBwb3J0YWwgKDIpCiAqICAgV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogICBXSE8gSGFuZGJvb2sgb24gaW1tdW5pemF0aW9uIGRhdGEgKDYpCiAqIAogKiBBbm5vdGF0aW9uczogVGhlIGNhbGN1bGF0aW9uIGZvciB0aGlzIGluZGljYXRvciBpcyBpbiBsaW5lIHdpdGggdGhlIGFkbWluaXN0cmF0aXZlIGNhbGN1bGF0aW9uIHByb3ZpZGVkIG9uIHRoZSBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsLgogKiAgIEFzIHBlciBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsLCByZWNvbW1lbmRlZCBkZW5vbWluYXRvciB1c2VkIGluIHRoZSBhZG1pbmlzdHJhdGl2ZSBjb3ZlcmFnZSBjYWxjdWxhdGlvbiBpcyBsaXZlIGJpcnRocy4KICovCmxpYnJhcnkgSU1NWklORDA1TG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aSW5kaWNhdG9yRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgppbmNsdWRlIElNTVpEMkRUSGVwYXRpdGlzQkVsZW1lbnRzIGNhbGxlZCBIZXBCCgpwYXJhbWV0ZXIgIk1lYXN1cmVtZW50IFBlcmlvZCIgSW50ZXJ2YWw8RGF0ZT4gZGVmYXVsdCBJbnRlcnZhbFtAMjAyNS0wMS0wMSwgQDIwMjUtMTItMzFdCgpjb250ZXh0IFBhdGllbnQKCi8qCiAqIEFzIGRlZmluZWQgYnkgTWVtYmVyIFN0YXRlCiAqLwpkZWZpbmUgIkluaXRpYWwgUG9wdWxhdGlvbiI6CiAgdHJ1ZQoKLyoKQGRlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCkBwc2V1ZG9jb2RlOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiovCmRlZmluZSAiRGVub21pbmF0b3IiOgogIHRydWUKCi8qCkBudW1lcmF0b3I6IE51bWJlciBvZiBoZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmUgYmlydGggZG9zZXMgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKQHBzZXVkb2NvZGU6IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiSGVwYXRpdGlzIEItY29udGFpbmluZyB2YWNjaW5lcyIgQU5EICJEb3NlIDAgYWRtaW5pc3RlcmVkIiA9ICJZZXMiIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiovCmRlZmluZSAiTnVtZXJhdG9yIjoKICBleGlzdHMoIEhlcEIuIkhlcGF0aXRpcyBCIERvc2UgMCBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIgSQogICAgd2hlcmUgSS5vY2N1cnJlbmNlLnRvSW50ZXJ2YWwoKSBzdGFydHMgZHVyaW5nICJNZWFzdXJlbWVudCBQZXJpb2QiICkKCi8qCkBkaXNhZ2dyZWdhdGlvbjogQWRtaW5pc3RyYXRpdmUgYXJlYQogICAgICAgICAgICAgICAgIFNleAogICAgICAgICAgICAgICAgIEFnZSBpbiB5ZWFycwogICAgICAgICAgICAgICAgIEFnZSBncm91cDogPCAyNCBob3VycyBvZiBiaXJ0aAoqLwpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDEiOgoJRWxlbWVudHMuIkJ5IEdlb2dyYXBoaWMgUmVnaW9uIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDIiOgoJRWxlbWVudHMuIkJ5IEFkbWluaXN0cmF0aXZlIEdlbmRlciBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAzIjoKCUVsZW1lbnRzLiJBZ2UgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gNCI6CglFbGVtZW50cy4iSW5mYW50IEJ5IEFnZSBTdHJhdGlmaWVyIgo="
  }]
}

```
