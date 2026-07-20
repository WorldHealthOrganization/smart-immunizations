# IMMZIND16Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND16Logic**

## Library: IMMZIND16Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND16Logic | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND16Logic |

 
This library defines population criteria logic for the IMMZ.IND.16 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.16 Logic * Immunization coverage for meningococcal vaccine * The percentage in the target population who have received a meningococcal vaccine during the reporting period * * Numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation for meningococcal A conjugate vaccine is surviving infants. For other meningococcal vaccines, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND16Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeningococcalElements called Meningococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Meningococcal."Meningococcal Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Id: **
  * ?: IMMZIND16Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.16 Logic * Immunization coverage for meningococcal vaccine * The percentage in the target population who have received a meningococcal vaccine during the reporting period * * Numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation for meningococcal A conjugate vaccine is surviving infants. For other meningococcal vaccines, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND16Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeningococcalElements called Meningococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Meningococcal."Meningococcal Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.16 Logic * Immunization coverage for meningococcal vaccine * The percentage in the target population who have received a meningococcal vaccine during the reporting period * * Numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation for meningococcal A conjugate vaccine is surviving infants. For other meningococcal vaccines, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND16Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeningococcalElements called Meningococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Meningococcal."Meningococcal Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND16Logic](Library-IMMZIND16Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.16 Logic * Immunization coverage for meningococcal vaccine * The percentage in the target population who have received a meningococcal vaccine during the reporting period * * Numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation for meningococcal A conjugate vaccine is surviving infants. For other meningococcal vaccines, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND16Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeningococcalElements called Meningococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Meningococcal."Meningococcal Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.16 Logic * Immunization coverage for meningococcal vaccine * The percentage in the target population who have received a meningococcal vaccine during the reporting period * * Numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation for meningococcal A conjugate vaccine is surviving infants. For other meningococcal vaccines, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND16Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeningococcalElements called Meningococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Meningococcal."Meningococcal Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.16 Logic * Immunization coverage for meningococcal vaccine * The percentage in the target population who have received a meningococcal vaccine during the reporting period * * Numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation for meningococcal A conjugate vaccine is surviving infants. For other meningococcal vaccines, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND16Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeningococcalElements called Meningococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Meningococcal."Meningococcal Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.16 Logic * Immunization coverage for meningococcal vaccine * The percentage in the target population who have received a meningococcal vaccine during the reporting period * * Numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation for meningococcal A conjugate vaccine is surviving infants. For other meningococcal vaccines, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND16Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTMeningococcalElements called Meningococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of meningococcal vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Meningococcal vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Meningococcal."Meningococcal Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Infant By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.16 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND16Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND16Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND16Logic",
  "title" : "IMMZIND16Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.16 indicator in the Immunization CPG",
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
    "display" : "Library Meningococcal",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMeningococcalElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMTYgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBtZW5pbmdvY29jY2FsIHZhY2NpbmUKICogVGhlIHBlcmNlbnRhZ2UgaW4gdGhlIHRhcmdldCBwb3B1bGF0aW9uIHdobyBoYXZlIHJlY2VpdmVkIGEgbWVuaW5nb2NvY2NhbCB2YWNjaW5lIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiAKICogTnVtZXJhdG9yOiBOdW1iZXIgb2YgbWVuaW5nb2NvY2NhbCB2YWNjaW5lIGRvc2VzIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIE51bWVyYXRvciBDb21wdXRhdGlvbjogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJNZW5pbmdvY29jY2FsIHZhY2NpbmVzIiBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cAogKiBEZW5vbWluYXRvciBDb21wdXRhdGlvbjogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwogKiAKICogRGlzYWdncmVnYXRpb24KICogIC0gQWRtaW5pc3RyYXRpdmUgYXJlYQogKiAgLSBTZXgKICogIC0gQWdlIGluIHllYXJzCiAqICAtIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQogKgogKiBSZWZlcmVuY2VzOiBXSE8vVU5JQ0VGIGpvaW50IHJlcG9ydGluZyBmb3JtICgxKQogKiAgIFdITyBJbW11bml6YXRpb24gZGF0YSBwb3J0YWwgKDIpCiAqICAgV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogICBXSE8gSGFuZGJvb2sgb24gaW1tdW5pemF0aW9uIGRhdGEgKDYpCiAqIAogKiBBbm5vdGF0aW9uczogVGhlIGNhbGN1bGF0aW9uIGZvciB0aGlzIGluZGljYXRvciBpcyBpbiBsaW5lIHdpdGggdGhlIGFkbWluaXN0cmF0aXZlIGNhbGN1bGF0aW9uIHByb3ZpZGVkIG9uIHRoZSBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsLgogKiAgIEFzIHBlciBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsLCByZWNvbW1lbmRlZCBkZW5vbWluYXRvciB1c2VkIGluIHRoZSBhZG1pbmlzdHJhdGl2ZSBjb3ZlcmFnZSBjYWxjdWxhdGlvbiBmb3IgbWVuaW5nb2NvY2NhbCBBIGNvbmp1Z2F0ZSB2YWNjaW5lIGlzIHN1cnZpdmluZyBpbmZhbnRzLiBGb3Igb3RoZXIgbWVuaW5nb2NvY2NhbCB2YWNjaW5lcywgcmVjb21tZW5kZWQgZGVub21pbmF0b3Igc2hvdWxkIGJlIHNwZWNpZmllZCBieSBNZW1iZXIgU3RhdGVzIGFzIHJlY29tbWVuZGVkIHNjaGVkdWxlcyBtYXkgdmFyeS4KICovCmxpYnJhcnkgSU1NWklORDE2TG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aSW5kaWNhdG9yRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgppbmNsdWRlIElNTVpEMkRUTWVuaW5nb2NvY2NhbEVsZW1lbnRzIGNhbGxlZCBNZW5pbmdvY29jY2FsCgpwYXJhbWV0ZXIgIk1lYXN1cmVtZW50IFBlcmlvZCIgSW50ZXJ2YWw8RGF0ZT4gZGVmYXVsdCBJbnRlcnZhbFtAMjAyNS0wMS0wMSwgQDIwMjUtMTItMzFdCgpjb250ZXh0IFBhdGllbnQKCi8qCiAqIEFzIGRlZmluZWQgYnkgTWVtYmVyIFN0YXRlCiAqLwpkZWZpbmUgIkluaXRpYWwgUG9wdWxhdGlvbiI6CiAgdHJ1ZQoKLyoKQGRlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCkBwc2V1ZG9jb2RlOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiovCmRlZmluZSAiRGVub21pbmF0b3IiOgogIHRydWUKCi8qCkBudW1lcmF0b3I6IE51bWJlciBvZiBtZW5pbmdvY29jY2FsIHZhY2NpbmUgZG9zZXMgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKQHBzZXVkb2NvZGU6IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiTWVuaW5nb2NvY2NhbCB2YWNjaW5lcyIgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKKi8KZGVmaW5lICJOdW1lcmF0b3IiOgogIGV4aXN0cyggTWVuaW5nb2NvY2NhbC4iTWVuaW5nb2NvY2NhbCBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIgSSAKICAgIHdoZXJlIEkub2NjdXJyZW5jZS50b0ludGVydmFsKCkgc3RhcnRzIGR1cmluZyAiTWVhc3VyZW1lbnQgUGVyaW9kIiApCgovKgpAZGlzYWdncmVnYXRpb246IEFkbWluaXN0cmF0aXZlIGFyZWEKICAgICAgICAgICAgICAgICBTZXgKICAgICAgICAgICAgICAgICBBZ2UgaW4geWVhcnMKICAgICAgICAgICAgICAgICBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKCUVsZW1lbnRzLiJCeSBHZW9ncmFwaGljIFJlZ2lvbiBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAyIjoKCUVsZW1lbnRzLiJCeSBBZG1pbmlzdHJhdGl2ZSBHZW5kZXIgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CglFbGVtZW50cy4iQWdlIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDQiOgoJRWxlbWVudHMuIkluZmFudCBCeSBBZ2UgU3RyYXRpZmllciIK"
  }]
}

```
