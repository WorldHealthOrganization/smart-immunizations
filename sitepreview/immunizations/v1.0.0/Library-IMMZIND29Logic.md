# IMMZIND29Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND29Logic**

## Library: IMMZIND29Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND29Logic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZIND29Logic |

 
This library defines population criteria logic for the IMMZ.IND.29 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.29 Logic * Immunization coverage for seasonal influenza vaccines * The percentage in the target population who have received seasonal influenza vaccines during the reporting period * * Numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND29Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTSeasonalinfluenzaElements called Seasonalinfluenza parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Seasonalinfluenza."Seasonal influenza Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Id: **
  * ?: IMMZIND29Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.29 Logic * Immunization coverage for seasonal influenza vaccines * The percentage in the target population who have received seasonal influenza vaccines during the reporting period * * Numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND29Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTSeasonalinfluenzaElements called Seasonalinfluenza parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Seasonalinfluenza."Seasonal influenza Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.29 Logic * Immunization coverage for seasonal influenza vaccines * The percentage in the target population who have received seasonal influenza vaccines during the reporting period * * Numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND29Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTSeasonalinfluenzaElements called Seasonalinfluenza parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Seasonalinfluenza."Seasonal influenza Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Url: **
  * ?: [IMMZIND29Logic](Library-IMMZIND29Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.29 Logic * Immunization coverage for seasonal influenza vaccines * The percentage in the target population who have received seasonal influenza vaccines during the reporting period * * Numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND29Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTSeasonalinfluenzaElements called Seasonalinfluenza parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Seasonalinfluenza."Seasonal influenza Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.29 Logic * Immunization coverage for seasonal influenza vaccines * The percentage in the target population who have received seasonal influenza vaccines during the reporting period * * Numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND29Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTSeasonalinfluenzaElements called Seasonalinfluenza parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Seasonalinfluenza."Seasonal influenza Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.29 Logic * Immunization coverage for seasonal influenza vaccines * The percentage in the target population who have received seasonal influenza vaccines during the reporting period * * Numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND29Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTSeasonalinfluenzaElements called Seasonalinfluenza parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Seasonalinfluenza."Seasonal influenza Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.29 Logic * Immunization coverage for seasonal influenza vaccines * The percentage in the target population who have received seasonal influenza vaccines during the reporting period * * Numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * - Risk & occupational group * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator should be specified by Member States as recommended schedules may vary. */ library IMMZIND29Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTSeasonalinfluenzaElements called Seasonalinfluenza parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of seasonal influenza vaccine doses administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Seasonal influenza vaccines" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Seasonalinfluenza."Seasonal influenza Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) Risk & occupational group */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.29 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND29Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND29Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND29Logic",
  "title" : "IMMZIND29Logic",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T14:18:30+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines population criteria logic for the IMMZ.IND.29 indicator in the Immunization CPG",
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
    "display" : "Library Seasonalinfluenza",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTSeasonalinfluenzaElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMjkgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBzZWFzb25hbCBpbmZsdWVuemEgdmFjY2luZXMKICogVGhlIHBlcmNlbnRhZ2UgaW4gdGhlIHRhcmdldCBwb3B1bGF0aW9uIHdobyBoYXZlIHJlY2VpdmVkIHNlYXNvbmFsIGluZmx1ZW56YSB2YWNjaW5lcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogCiAqIE51bWVyYXRvcjogTnVtYmVyIG9mIHNlYXNvbmFsIGluZmx1ZW56YSB2YWNjaW5lIGRvc2VzIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIE51bWVyYXRvciBDb21wdXRhdGlvbjogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJTZWFzb25hbCBpbmZsdWVuemEgdmFjY2luZXMiIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIERlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCiAqIERlbm9taW5hdG9yIENvbXB1dGF0aW9uOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiAqIAogKiBEaXNhZ2dyZWdhdGlvbgogKiAgLSBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAqICAtIFNleAogKiAgLSBBZ2UgaW4geWVhcnMKICogIC0gQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiAqICAtIFJpc2sgJiBvY2N1cGF0aW9uYWwgZ3JvdXAKICoKICogUmVmZXJlbmNlczogV0hPL1VOSUNFRiBqb2ludCByZXBvcnRpbmcgZm9ybSAoMSkKICogICBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsICgyKQogKiAgIFdITyBJbW11bml6YXRpb24gZmFjaWxpdHkgYW5hbHlzaXMgZ3VpZGUgKDUpCiAqICAgV0hPIEhhbmRib29rIG9uIGltbXVuaXphdGlvbiBkYXRhICg2KQogKiAKICogQW5ub3RhdGlvbnM6IFRoZSBjYWxjdWxhdGlvbiBmb3IgdGhpcyBpbmRpY2F0b3IgaXMgaW4gbGluZSB3aXRoIHRoZSBhZG1pbmlzdHJhdGl2ZSBjYWxjdWxhdGlvbiBwcm92aWRlZCBvbiB0aGUgV0hPIEltbXVuaXphdGlvbiBkYXRhIHBvcnRhbC4KICogICBBcyBwZXIgV0hPIEltbXVuaXphdGlvbiBkYXRhIHBvcnRhbCwgcmVjb21tZW5kZWQgZGVub21pbmF0b3Igc2hvdWxkIGJlIHNwZWNpZmllZCBieSBNZW1iZXIgU3RhdGVzIGFzIHJlY29tbWVuZGVkIHNjaGVkdWxlcyBtYXkgdmFyeS4KICovCmxpYnJhcnkgSU1NWklORDI5TG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aSW5kaWNhdG9yRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgppbmNsdWRlIElNTVpEMkRUU2Vhc29uYWxpbmZsdWVuemFFbGVtZW50cyBjYWxsZWQgU2Vhc29uYWxpbmZsdWVuemEKCnBhcmFtZXRlciAiTWVhc3VyZW1lbnQgUGVyaW9kIiBJbnRlcnZhbDxEYXRlPiBkZWZhdWx0IEludGVydmFsW0AyMDI1LTAxLTAxLCBAMjAyNS0xMi0zMV0KCmNvbnRleHQgUGF0aWVudAoKLyoKICogQXMgZGVmaW5lZCBieSBNZW1iZXIgU3RhdGUKICovCmRlZmluZSAiSW5pdGlhbCBQb3B1bGF0aW9uIjoKICB0cnVlCgovKgpAZGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKQHBzZXVkb2NvZGU6IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKKi8KZGVmaW5lICJEZW5vbWluYXRvciI6CiAgdHJ1ZQoKLyoKQG51bWVyYXRvcjogTnVtYmVyIG9mIHNlYXNvbmFsIGluZmx1ZW56YSB2YWNjaW5lIGRvc2VzIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCkBwc2V1ZG9jb2RlOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIlNlYXNvbmFsIGluZmx1ZW56YSB2YWNjaW5lcyIgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKKi8KZGVmaW5lICJOdW1lcmF0b3IiOgogIGV4aXN0cyggU2Vhc29uYWxpbmZsdWVuemEuIlNlYXNvbmFsIGluZmx1ZW56YSBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIgSQogICAgd2hlcmUgSS5vY2N1cnJlbmNlLnRvSW50ZXJ2YWwoKSBzdGFydHMgZHVyaW5nICJNZWFzdXJlbWVudCBQZXJpb2QiICkKCi8qCkBkaXNhZ2dyZWdhdGlvbjogQWRtaW5pc3RyYXRpdmUgYXJlYQogICAgICAgICAgICAgICAgIFNleAogICAgICAgICAgICAgICAgIEFnZSBpbiB5ZWFycwogICAgICAgICAgICAgICAgIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQogICAgICAgICAgICAgICAgIFJpc2sgJiBvY2N1cGF0aW9uYWwgZ3JvdXAKKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKCUVsZW1lbnRzLiJCeSBHZW9ncmFwaGljIFJlZ2lvbiBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAyIjoKCUVsZW1lbnRzLiJCeSBBZG1pbmlzdHJhdGl2ZSBHZW5kZXIgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CglFbGVtZW50cy4iQWdlIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDQiOgoJRWxlbWVudHMuIkJ5IEFnZSBHcm91cCBTdHJhdGlmaWVyIgo="
  }]
}

```
