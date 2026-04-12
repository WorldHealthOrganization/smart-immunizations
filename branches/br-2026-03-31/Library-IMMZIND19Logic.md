# IMMZIND19Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND19Logic**

## Library: IMMZIND19Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND19Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND19Logic |

 
This library defines population criteria logic for the IMMZ.IND.19 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.19 Logic * Immunization coverage for pneumococcal conjugate vaccine, 3rd dose * The percentage in the target population who have received a 3rd dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND19Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Id: **
  * ?: IMMZIND19Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.19 Logic * Immunization coverage for pneumococcal conjugate vaccine, 3rd dose * The percentage in the target population who have received a 3rd dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND19Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.19 Logic * Immunization coverage for pneumococcal conjugate vaccine, 3rd dose * The percentage in the target population who have received a 3rd dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND19Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND19Logic](Library-IMMZIND19Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.19 Logic * Immunization coverage for pneumococcal conjugate vaccine, 3rd dose * The percentage in the target population who have received a 3rd dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND19Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.19 Logic * Immunization coverage for pneumococcal conjugate vaccine, 3rd dose * The percentage in the target population who have received a 3rd dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND19Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.19 Logic * Immunization coverage for pneumococcal conjugate vaccine, 3rd dose * The percentage in the target population who have received a 3rd dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND19Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.19 Logic * Immunization coverage for pneumococcal conjugate vaccine, 3rd dose * The percentage in the target population who have received a 3rd dose of pneumococcal conjugate vaccine during the reporting period * * Numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO/UNICEF joint reporting form (1) * WHO Immunization data portal (2) * WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: The calculation for this indicator is in line with the administrative calculation provided on the WHO Immunization data portal. * As per WHO Immunization data portal, recommended denominator used in the administrative coverage calculation is surviving infants for doses recommended in the first year of life. Then, the single age cohort population estimates for the targeted cohort. */ library IMMZIND19Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTPneumococcalElements called Pneumococcal parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of pneumococcal vaccine doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pneumococcal vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( (Pneumococcal."Pneumococcal Primary Series Doses Administered to Patient".getDose('3')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Toddler By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.19 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND19Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND19Logic",
  "version" : "0.2.0",
  "name" : "IMMZIND19Logic",
  "title" : "IMMZIND19Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.19 indicator in the Immunization CPG",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMTkgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBwbmV1bW9jb2NjYWwgY29uanVnYXRlIHZhY2NpbmUsIDNyZCBkb3NlCiAqIFRoZSBwZXJjZW50YWdlIGluIHRoZSB0YXJnZXQgcG9wdWxhdGlvbiB3aG8gaGF2ZSByZWNlaXZlZCBhIDNyZCBkb3NlIG9mIHBuZXVtb2NvY2NhbCBjb25qdWdhdGUgdmFjY2luZSBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogCiAqIE51bWVyYXRvcjogTnVtYmVyIG9mIHBuZXVtb2NvY2NhbCB2YWNjaW5lIGRvc2VzICgzcmQgZG9zZSkgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogTnVtZXJhdG9yIENvbXB1dGF0aW9uOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIlBuZXVtb2NvY2NhbCB2YWNjaW5lcyIgZm9yIHRoZSAzcmQgZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogRGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKICogRGVub21pbmF0b3IgQ29tcHV0YXRpb246IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKICogCiAqIERpc2FnZ3JlZ2F0aW9uCiAqICAtIEFkbWluaXN0cmF0aXZlIGFyZWEKICogIC0gU2V4CiAqICAtIEFnZSBpbiB5ZWFycwogKiAgLSBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKICoKICogUmVmZXJlbmNlczogV0hPL1VOSUNFRiBqb2ludCByZXBvcnRpbmcgZm9ybSAoMSkKICogICBXSE8gSW1tdW5pemF0aW9uIGRhdGEgcG9ydGFsICgyKQogKiAgIFdITyBJbW11bml6YXRpb24gZmFjaWxpdHkgYW5hbHlzaXMgZ3VpZGUgKDUpCiAqICAgV0hPIEhhbmRib29rIG9uIGltbXVuaXphdGlvbiBkYXRhICg2KQogKiAKICogQW5ub3RhdGlvbnM6IFRoZSBjYWxjdWxhdGlvbiBmb3IgdGhpcyBpbmRpY2F0b3IgaXMgaW4gbGluZSB3aXRoIHRoZSBhZG1pbmlzdHJhdGl2ZSBjYWxjdWxhdGlvbiBwcm92aWRlZCBvbiB0aGUgV0hPIEltbXVuaXphdGlvbiBkYXRhIHBvcnRhbC4KICogICBBcyBwZXIgV0hPIEltbXVuaXphdGlvbiBkYXRhIHBvcnRhbCwgcmVjb21tZW5kZWQgZGVub21pbmF0b3IgdXNlZCBpbiB0aGUgYWRtaW5pc3RyYXRpdmUgY292ZXJhZ2UgY2FsY3VsYXRpb24gaXMgc3Vydml2aW5nIGluZmFudHMgZm9yIGRvc2VzIHJlY29tbWVuZGVkIGluIHRoZSBmaXJzdCB5ZWFyIG9mIGxpZmUuIFRoZW4sIHRoZSBzaW5nbGUgYWdlIGNvaG9ydCBwb3B1bGF0aW9uIGVzdGltYXRlcyBmb3IgdGhlIHRhcmdldGVkIGNvaG9ydC4KICovCmxpYnJhcnkgSU1NWklORDE5TG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aSW5kaWNhdG9yRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgppbmNsdWRlIElNTVpEMkRUUG5ldW1vY29jY2FsRWxlbWVudHMgY2FsbGVkIFBuZXVtb2NvY2NhbAoKcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGU+IGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjUtMDEtMDEsIEAyMDI1LTEyLTMxXQoKY29udGV4dCBQYXRpZW50CgovKgogKiBBcyBkZWZpbmVkIGJ5IE1lbWJlciBTdGF0ZQogKi8KZGVmaW5lICJJbml0aWFsIFBvcHVsYXRpb24iOgogIHRydWUKCi8qCkBkZW5vbWluYXRvcjogTnVtYmVyIGluIHRhcmdldCBncm91cApAcHNldWRvY29kZTogQXMgZGVmaW5lZCBieSB0aGUgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIkRlbm9taW5hdG9yIjoKICB0cnVlCgovKgpAbnVtZXJhdG9yOiBOdW1iZXIgb2YgcG5ldW1vY29jY2FsIHZhY2NpbmUgZG9zZXMgKDNyZCBkb3NlKSBhZG1pbmlzdGVyZWQgdGhyb3VnaCByb3V0aW5lIHNlcnZpY2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZApAcHNldWRvY29kZTogQ09VTlQgb2YgaW1tdW5pemF0aW9uIGV2ZW50cyBXSEVSRSAiVmFjY2luZSB0eXBlIiA9ICJQbmV1bW9jb2NjYWwgdmFjY2luZXMiIGZvciB0aGUgM3JkIGRvc2UgaW4gdGhlIHByaW1hcnkgc2VyaWVzIEFORCAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgaXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiovCmRlZmluZSAiTnVtZXJhdG9yIjoKICBleGlzdHMoIChQbmV1bW9jb2NjYWwuIlBuZXVtb2NvY2NhbCBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIuZ2V0RG9zZSgnMycpKSBJCiAgICB3aGVyZSBJLm9jY3VycmVuY2UudG9JbnRlcnZhbCgpIHN0YXJ0cyBkdXJpbmcgIk1lYXN1cmVtZW50IFBlcmlvZCIgKQoKLyoKQGRpc2FnZ3JlZ2F0aW9uOiBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAgICAgICAgICAgICAgICAgU2V4CiAgICAgICAgICAgICAgICAgQWdlIGluIHllYXJzCiAgICAgICAgICAgICAgICAgQWdlIGdyb3VwIChkZXBlbmRpbmcgb24gc2NoZWR1bGUpCiovCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMSI6CglFbGVtZW50cy4iQnkgR2VvZ3JhcGhpYyBSZWdpb24gU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMiI6CglFbGVtZW50cy4iQnkgQWRtaW5pc3RyYXRpdmUgR2VuZGVyIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDMiOgoJRWxlbWVudHMuIkFnZSBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiA0IjoKCUVsZW1lbnRzLiJUb2RkbGVyIEJ5IEFnZSBTdHJhdGlmaWVyIgo="
  }]
}

```
