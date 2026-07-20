# IMMZIND17Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND17Logic**

## Library: IMMZIND17Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND17Logic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZIND17Logic |

 
This library defines population criteria logic for the IMMZ.IND.17 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.17 Logic * Immunization coverage for pneumococcal conjugate vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND17Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('1')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Id: **
  * ?: IMMZIND17Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.17 Logic * Immunization coverage for pneumococcal conjugate vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND17Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('1')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.17 Logic * Immunization coverage for pneumococcal conjugate vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND17Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('1')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND17Logic](Library-IMMZIND17Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.17 Logic * Immunization coverage for pneumococcal conjugate vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND17Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('1')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.17 Logic * Immunization coverage for pneumococcal conjugate vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND17Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('1')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.17 Logic * Immunization coverage for pneumococcal conjugate vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND17Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('1')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.17 Logic * Immunization coverage for pneumococcal conjugate vaccine, 1st dose * The percentage in the target population who have received the 1st dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND17Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (1st dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('1')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.17 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND17Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND17Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND17Logic",
  "title" : "IMMZIND17Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.17 indicator in the Immunization CPG",
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
    "display" : "Library Pneumococcal",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPneumococcalElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMTcgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBwbmV1bW9jb2NjYWwgY29uanVnYXRlIHZhY2NpbmUsIDFzdCBkb3NlCiAqIFRoZSBwZXJjZW50YWdlIGluIHRoZSB0YXJnZXQgcG9wdWxhdGlvbiB3aG8gaGF2ZSByZWNlaXZlZCB0aGUgMXN0IGRvc2Ugb2YgcG5ldW1vY29jY2FsIGNvbmp1Z2F0ZSB2YWNjaW5lIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiAKICogTnVtZXJhdG9yOiBOdW1iZXIgb2YgcG5ldW1vY29jY2FsIHZhY2NpbmUgZG9zZXMgKDFzdCBkb3NlKSBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBOdW1lcmF0b3IgQ29tcHV0YXRpb246IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiUG5ldW1vY29jY2FsIHZhY2NpbmVzIiBmb3IgdGhlIDFzdCBkb3NlIGluIHRoZSBwcmltYXJ5IHNlcmllcyBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cAogKiBEZW5vbWluYXRvciBDb21wdXRhdGlvbjogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwogKiAKICogRGlzYWdncmVnYXRpb24KICogIC0gQWRtaW5pc3RyYXRpdmUgYXJlYQogKiAgLSBTZXgKICogIC0gQWdlIGluIHllYXJzCiAqICAtIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQogKgogKiBSZWZlcmVuY2VzOiBXSE8vVU5JQ0VGIGpvaW50IHJlcG9ydGluZyBmb3JtICgxKQogKiAgIFdITyBJbW11bml6YXRpb24gZGF0YSBwb3J0YWwgKDIpCiAqICAgV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogICBXSE8gSGFuZGJvb2sgb24gaW1tdW5pemF0aW9uIGRhdGEgKDYpCiAqIAogKiBBbm5vdGF0aW9uczogVGhlIGNhbGN1bGF0aW9uIGZvciB0aGlzIGluZGljYXRvciBpcyBpbiBsaW5lIHdpdGggdGhlIGFkbWluaXN0cmF0aXZlIGNhbGN1bGF0aW9uIHByb3ZpZGVkIG9uIHRoZSBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsLgogKiAgIEFzIHBlciBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsLCByZWNvbW1lbmRlZCBkZW5vbWluYXRvciB1c2VkIGluIHRoZSBhZG1pbmlzdHJhdGl2ZSBjb3ZlcmFnZSBjYWxjdWxhdGlvbiBpcyBzdXJ2aXZpbmcgaW5mYW50cyBmb3IgZG9zZXMgcmVjb21tZW5kZWQgaW4gdGhlIGZpcnN0IHllYXIgb2YgbGlmZS4gVGhlbiwgdGhlIHNpbmdsZSBhZ2UgY29ob3J0IHBvcHVsYXRpb24gZXN0aW1hdGVzIGZvciB0aGUgdGFyZ2V0ZWQgY29ob3J0LgogKi8KbGlicmFyeSBJTU1aSU5EMTdMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpJbmRpY2F0b3JFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCmluY2x1ZGUgSU1NWkQyRFRQbmV1bW9jb2NjYWxFbGVtZW50cyBjYWxsZWQgUG5ldW1vY29jY2FsCgpwYXJhbWV0ZXIgIk1lYXN1cmVtZW50IFBlcmlvZCIgSW50ZXJ2YWw8RGF0ZT4gZGVmYXVsdCBJbnRlcnZhbFtAMjAyNS0wMS0wMSwgQDIwMjUtMTItMzFdCgpjb250ZXh0IFBhdGllbnQKCi8qCiAqIEFzIGRlZmluZWQgYnkgTWVtYmVyIFN0YXRlCiAqLwpkZWZpbmUgIkluaXRpYWwgUG9wdWxhdGlvbiI6CiAgdHJ1ZQoKLyoKQGRlbm9taW5hdG9yOiBOdW1iZXIgaW4gdGFyZ2V0IGdyb3VwCkBwc2V1ZG9jb2RlOiBBcyBkZWZpbmVkIGJ5IHRoZSBNZW1iZXIgU3RhdGVzCiovCmRlZmluZSAiRGVub21pbmF0b3IiOgogIHRydWUKCi8qCkBudW1lcmF0b3I6IE51bWJlciBvZiBwbmV1bW9jb2NjYWwgdmFjY2luZSBkb3NlcyAoMXN0IGRvc2UpIGFkbWluaXN0ZXJlZCB0aHJvdWdoIHJvdXRpbmUgc2VydmljZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCkBwc2V1ZG9jb2RlOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIlBuZXVtb2NvY2NhbCB2YWNjaW5lcyIgZm9yIHRoZSAxc3QgZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKKi8KZGVmaW5lICJOdW1lcmF0b3IiOgogIGV4aXN0cyggKFBuZXVtb2NvY2NhbC4iUG5ldW1vY29jY2FsIFByaW1hcnkgU2VyaWVzIERvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50Ii5nZXREb3NlKCcxJykpIEkKICAgIHdoZXJlIEkub2NjdXJyZW5jZS50b0ludGVydmFsKCkgc3RhcnRzIGR1cmluZyAiTWVhc3VyZW1lbnQgUGVyaW9kIiApCgovKgpAZGlzYWdncmVnYXRpb246IEFkbWluaXN0cmF0aXZlIGFyZWEKICAgICAgICAgICAgICAgICBTZXgKICAgICAgICAgICAgICAgICBBZ2UgaW4geWVhcnMKICAgICAgICAgICAgICAgICBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKCUVsZW1lbnRzLiJCeSBHZW9ncmFwaGljIFJlZ2lvbiBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAyIjoKCUVsZW1lbnRzLiJCeSBBZG1pbmlzdHJhdGl2ZSBHZW5kZXIgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CglFbGVtZW50cy4iQWdlIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDQiOgoJRWxlbWVudHMuIlRvZGRsZXIgQnkgQWdlIFN0cmF0aWZpZXIiCg=="
  }]
}

```
