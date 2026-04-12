# IMMZIND26Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND26Logic**

## Library: IMMZIND26Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND26Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND26Logic |

 
This library defines population criteria logic for the IMMZ.IND.26 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.26 Logic * Immunization coverage for yellow fever vaccine * The percentage in the target population who have received one dose of yellow fever vaccine during the reporting period * * Numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for countries recommending yellow fever vaccination in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND26Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTYellowfeverElements called Yellowfever parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Yellowfever."Yellow fever Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Id: **
  * ?: IMMZIND26Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.26 Logic * Immunization coverage for yellow fever vaccine * The percentage in the target population who have received one dose of yellow fever vaccine during the reporting period * * Numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for countries recommending yellow fever vaccination in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND26Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTYellowfeverElements called Yellowfever parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Yellowfever."Yellow fever Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.26 Logic * Immunization coverage for yellow fever vaccine * The percentage in the target population who have received one dose of yellow fever vaccine during the reporting period * * Numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for countries recommending yellow fever vaccination in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND26Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTYellowfeverElements called Yellowfever parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Yellowfever."Yellow fever Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Url: **
  * ?: [IMMZIND26Logic](Library-IMMZIND26Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.26 Logic * Immunization coverage for yellow fever vaccine * The percentage in the target population who have received one dose of yellow fever vaccine during the reporting period * * Numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for countries recommending yellow fever vaccination in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND26Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTYellowfeverElements called Yellowfever parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Yellowfever."Yellow fever Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.26 Logic * Immunization coverage for yellow fever vaccine * The percentage in the target population who have received one dose of yellow fever vaccine during the reporting period * * Numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for countries recommending yellow fever vaccination in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND26Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTYellowfeverElements called Yellowfever parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Yellowfever."Yellow fever Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.26 Logic * Immunization coverage for yellow fever vaccine * The percentage in the target population who have received one dose of yellow fever vaccine during the reporting period * * Numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for countries recommending yellow fever vaccination in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND26Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTYellowfeverElements called Yellowfever parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Yellowfever."Yellow fever Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.26 Logic * Immunization coverage for yellow fever vaccine * The percentage in the target population who have received one dose of yellow fever vaccine during the reporting period * * Numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for countries recommending yellow fever vaccination in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND26Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTYellowfeverElements called Yellowfever parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of yellow fever vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Yellow fever vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Yellowfever."Yellow fever Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.26 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND26Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND26Logic",
  "version" : "0.2.0",
  "name" : "IMMZIND26Logic",
  "title" : "IMMZIND26Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.26 indicator in the Immunization CPG",
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
    "display" : "Library Yellowfever",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTYellowfeverElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMjYgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciB5ZWxsb3cgZmV2ZXIgdmFjY2luZQogKiBUaGUgcGVyY2VudGFnZSBpbiB0aGUgdGFyZ2V0IHBvcHVsYXRpb24gd2hvIGhhdmUgcmVjZWl2ZWQgb25lIGRvc2Ugb2YgeWVsbG93IGZldmVyIHZhY2NpbmUgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIAogKiBOdW1lcmF0b3I6IE51bWJlciBvZiB5ZWxsb3cgZmV2ZXIgdmFjY2luZSBkb3NlcyBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBOdW1lcmF0b3IgQ29tcHV0YXRpb246IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiWWVsbG93IGZldmVyIHZhY2NpbmVzIiBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cAogKiBEZW5vbWluYXRvciBDb21wdXRhdGlvbjogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwogKiAKICogRGlzYWdncmVnYXRpb24KICogIC0gQWRtaW5pc3RyYXRpdmUgYXJlYQogKiAgLSBTZXgKICogIC0gQWdlIGluIHllYXJzCiAqICAtIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQogKgogKiBSZWZlcmVuY2VzOiBXSE8vVU5JQ0VGIGpvaW50IHJlcG9ydGluZyBmb3JtICgxKQogKiAgIFdITyBJbW11bml6YXRpb24gZGF0YSBwb3J0YWwgKDIpCiAqICAgV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogICBXSE8gSGFuZGJvb2sgb24gaW1tdW5pemF0aW9uIGRhdGEgKDYpCiAqIAogKiBBbm5vdGF0aW9uczogVGhlIGNhbGN1bGF0aW9uIGZvciB0aGlzIGluZGljYXRvciBpcyBpbiBsaW5lIHdpdGggdGhlIGFkbWluaXN0cmF0aXZlIGNhbGN1bGF0aW9uIHByb3ZpZGVkIG9uIHRoZSBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsLgogKiAgIEFzIHBlciBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsLCByZWNvbW1lbmRlZCBkZW5vbWluYXRvciB1c2VkIGluIHRoZSBhZG1pbmlzdHJhdGl2ZSBjb3ZlcmFnZSBjYWxjdWxhdGlvbiBpcyBzdXJ2aXZpbmcgaW5mYW50cyBmb3IgY291bnRyaWVzIHJlY29tbWVuZGluZyB5ZWxsb3cgZmV2ZXIgdmFjY2luYXRpb24gaW4gdGhlIGZpcnN0IHllYXIgb2YgbGlmZS4gVGhlbiwgdGhlIHNpbmdsZSBhZ2UgY29ob3J0IHBvcHVsYXRpb24gZXN0aW1hdGVzIGZvciB0aGUgdGFyZ2V0ZWQgY29ob3J0LgogKi8KbGlicmFyeSBJTU1aSU5EMjZMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpJbmRpY2F0b3JFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCmluY2x1ZGUgSU1NWkQyRFRZZWxsb3dmZXZlckVsZW1lbnRzIGNhbGxlZCBZZWxsb3dmZXZlcgoKcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGU+IGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjUtMDEtMDEsIEAyMDI1LTEyLTMxXQoKY29udGV4dCBQYXRpZW50CgovKgogKiBBcyBkZWZpbmVkIGJ5IE1lbWJlciBTdGF0ZQogKi8KZGVmaW5lICJJbml0aWFsIFBvcHVsYXRpb24iOgogIHRydWUKCi8qCkBkZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cApAcHNldWRvY29kZTogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIkRlbm9taW5hdG9yIjoKICB0cnVlCgovKgpAbnVtZXJhdG9yOiBOdW1iZXIgb2YgeWVsbG93IGZldmVyIHZhY2NpbmUgZG9zZXMgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKQHBzZXVkb2NvZGU6IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiWWVsbG93IGZldmVyIHZhY2NpbmVzIiBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAoqLwpkZWZpbmUgIk51bWVyYXRvciI6CiAgICBleGlzdHMoIFllbGxvd2ZldmVyLiJZZWxsb3cgZmV2ZXIgRG9zZXMgQWRtaW5pc3RlcmVkIHRvIFBhdGllbnQiIEkKICAgICAgd2hlcmUgSS5vY2N1cnJlbmNlLnRvSW50ZXJ2YWwoKSBzdGFydHMgZHVyaW5nICJNZWFzdXJlbWVudCBQZXJpb2QiICkKCi8qCkBkaXNhZ2dyZWdhdGlvbjogQWRtaW5pc3RyYXRpdmUgYXJlYQogICAgICAgICAgICAgICAgIFNleAogICAgICAgICAgICAgICAgIEFnZSBpbiB5ZWFycwogICAgICAgICAgICAgICAgIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQoqLwpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDEiOgoJRWxlbWVudHMuIkJ5IEdlb2dyYXBoaWMgUmVnaW9uIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDIiOgoJRWxlbWVudHMuIkJ5IEFkbWluaXN0cmF0aXZlIEdlbmRlciBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAzIjoKCUVsZW1lbnRzLiJBZ2UgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gNCI6CglFbGVtZW50cy4iQnkgQWdlIEdyb3VwIFN0cmF0aWZpZXIiCg=="
  }]
}

```
