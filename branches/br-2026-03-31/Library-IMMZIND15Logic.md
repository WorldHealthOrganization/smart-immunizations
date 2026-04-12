# IMMZIND15Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND15Logic**

## Library: IMMZIND15Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND15Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND15Logic |

 
This library defines population criteria logic for the IMMZ.IND.15 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.15 Logic * Immunization coverage for HPV vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of HPV vaccine during the reporting period * * Numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND15Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHPVElements called HPV parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists ( (HPV."HPV Primary Series Doses Administered to Patient".getDose('2')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Adolescent By Age Stratifier" ````: **Id: **
  * ?: IMMZIND15Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.15 Logic * Immunization coverage for HPV vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of HPV vaccine during the reporting period * * Numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND15Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHPVElements called HPV parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists ( (HPV."HPV Primary Series Doses Administered to Patient".getDose('2')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Adolescent By Age Stratifier" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.15 Logic * Immunization coverage for HPV vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of HPV vaccine during the reporting period * * Numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND15Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHPVElements called HPV parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists ( (HPV."HPV Primary Series Doses Administered to Patient".getDose('2')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Adolescent By Age Stratifier" ````: **Url: **
  * ?: [IMMZIND15Logic](Library-IMMZIND15Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.15 Logic * Immunization coverage for HPV vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of HPV vaccine during the reporting period * * Numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND15Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHPVElements called HPV parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists ( (HPV."HPV Primary Series Doses Administered to Patient".getDose('2')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Adolescent By Age Stratifier" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.15 Logic * Immunization coverage for HPV vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of HPV vaccine during the reporting period * * Numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND15Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHPVElements called HPV parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists ( (HPV."HPV Primary Series Doses Administered to Patient".getDose('2')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Adolescent By Age Stratifier" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.15 Logic * Immunization coverage for HPV vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of HPV vaccine during the reporting period * * Numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND15Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHPVElements called HPV parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists ( (HPV."HPV Primary Series Doses Administered to Patient".getDose('2')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Adolescent By Age Stratifier" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.15 Logic * Immunization coverage for HPV vaccine, 2nd dose * The percentage in the target population who have received the 2nd dose of HPV vaccine during the reporting period * * Numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period * Denominator: Number in target group * Denominator Computation: As defined by the Member States * * Disaggregation * - Administrative area * - Sex * - Age in years * - Age group (depending on schedule) * * References: WHO Immunization facility analysis guide (5) * WHO Handbook on immunization data (6) * * Annotations: – */ library IMMZIND15Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements include IMMZD2DTHPVElements called HPV parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Patient /* * As defined by Member State */ define "Initial Population": true /* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true /* @numerator: Number of HPV vaccine doses (2nd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "HPV vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists ( (HPV."HPV Primary Series Doses Administered to Patient".getDose('2')) I where I.occurrence.toInterval() starts during "Measurement Period" ) /* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."Adolescent By Age Stratifier" ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.15 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND15Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND15Logic",
  "version" : "0.2.0",
  "name" : "IMMZIND15Logic",
  "title" : "IMMZIND15Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.15 indicator in the Immunization CPG",
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
    "display" : "Library HPV",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHPVElements"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuMTUgTG9naWMKICogSW1tdW5pemF0aW9uIGNvdmVyYWdlIGZvciBIUFYgdmFjY2luZSwgMm5kIGRvc2UKICogVGhlIHBlcmNlbnRhZ2UgaW4gdGhlIHRhcmdldCBwb3B1bGF0aW9uIHdobyBoYXZlIHJlY2VpdmVkIHRoZSAybmQgZG9zZSBvZiBIUFYgdmFjY2luZSBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogCiAqIE51bWVyYXRvcjogTnVtYmVyIG9mIEhQViB2YWNjaW5lIGRvc2VzICgybmQgZG9zZSkgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogTnVtZXJhdG9yIENvbXB1dGF0aW9uOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJWYWNjaW5lIHR5cGUiID0gIkhQViB2YWNjaW5lcyIgZm9yIHRoZSAybmQgZG9zZSBpbiB0aGUgcHJpbWFyeSBzZXJpZXMgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogRGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKICogRGVub21pbmF0b3IgQ29tcHV0YXRpb246IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKICogCiAqIERpc2FnZ3JlZ2F0aW9uCiAqICAtIEFkbWluaXN0cmF0aXZlIGFyZWEKICogIC0gU2V4CiAqICAtIEFnZSBpbiB5ZWFycwogKiAgLSBBZ2UgZ3JvdXAgKGRlcGVuZGluZyBvbiBzY2hlZHVsZSkKICoKICogUmVmZXJlbmNlczogV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogICBXSE8gSGFuZGJvb2sgb24gaW1tdW5pemF0aW9uIGRhdGEgKDYpCiAqIAogKiBBbm5vdGF0aW9uczog4oCTCiAqLwpsaWJyYXJ5IElNTVpJTkQxNUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkluZGljYXRvckVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKaW5jbHVkZSBJTU1aRDJEVEhQVkVsZW1lbnRzIGNhbGxlZCBIUFYKCnBhcmFtZXRlciAiTWVhc3VyZW1lbnQgUGVyaW9kIiBJbnRlcnZhbDxEYXRlPiBkZWZhdWx0IEludGVydmFsW0AyMDI1LTAxLTAxLCBAMjAyNS0xMi0zMV0KCmNvbnRleHQgUGF0aWVudAoKLyoKICogQXMgZGVmaW5lZCBieSBNZW1iZXIgU3RhdGUKICovCmRlZmluZSAiSW5pdGlhbCBQb3B1bGF0aW9uIjoKICB0cnVlCgovKgpAZGVub21pbmF0b3I6IE51bWJlciBpbiB0YXJnZXQgZ3JvdXAKQHBzZXVkb2NvZGU6IEFzIGRlZmluZWQgYnkgdGhlIE1lbWJlciBTdGF0ZXMKKi8KZGVmaW5lICJEZW5vbWluYXRvciI6CiAgdHJ1ZQoKLyoKQG51bWVyYXRvcjogTnVtYmVyIG9mIEhQViB2YWNjaW5lIGRvc2VzICgybmQgZG9zZSkgYWRtaW5pc3RlcmVkIHRocm91Z2ggcm91dGluZSBzZXJ2aWNlcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKQHBzZXVkb2NvZGU6IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlZhY2NpbmUgdHlwZSIgPSAiSFBWIHZhY2NpbmVzIiBmb3IgdGhlIDJuZCBkb3NlIGluIHRoZSBwcmltYXJ5IHNlcmllcyBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAoqLwpkZWZpbmUgIk51bWVyYXRvciI6CiAgZXhpc3RzICgKICAgIChIUFYuIkhQViBQcmltYXJ5IFNlcmllcyBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCIuZ2V0RG9zZSgnMicpKSBJCiAgICAgIHdoZXJlIEkub2NjdXJyZW5jZS50b0ludGVydmFsKCkgc3RhcnRzIGR1cmluZyAiTWVhc3VyZW1lbnQgUGVyaW9kIgogICkKCi8qCkBkaXNhZ2dyZWdhdGlvbjogQWRtaW5pc3RyYXRpdmUgYXJlYQogICAgICAgICAgICAgICAgIFNleAogICAgICAgICAgICAgICAgIEFnZSBpbiB5ZWFycwogICAgICAgICAgICAgICAgIEFnZSBncm91cCAoZGVwZW5kaW5nIG9uIHNjaGVkdWxlKQoqLwpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDEiOgoJRWxlbWVudHMuIkJ5IEdlb2dyYXBoaWMgUmVnaW9uIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDIiOgoJRWxlbWVudHMuIkJ5IEFkbWluaXN0cmF0aXZlIEdlbmRlciBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAzIjoKCUVsZW1lbnRzLiJBZ2UgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gNCI6CglFbGVtZW50cy4iQWRvbGVzY2VudCBCeSBBZ2UgU3RyYXRpZmllciIK"
  }]
}

```
