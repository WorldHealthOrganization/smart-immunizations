# IMMZIND45Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND45Logic**

## Library: IMMZIND45Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND45Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZIND45Logic |

 
This library defines population criteria logic for the IMMZ.IND.45 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.45 Logic * Immunization session completion rate * The percentage of immunization sessions completed during the reporting period * * Numerator: Number of immunization sessions completed at the vaccination location during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period * Denominator: Number of planned immunization sessions at the vaccination location during the reporting period * Denominator Computation: COUNT number of planned sessions during the reporting period * * Disaggregation * - Vaccination location * - Administrative area * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND45Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": Immunization.occurrence is not null and Immunization.occurrence.toInterval() starts during "Measurement Period" /* @denominator: Number of planned immunization sessions at the vaccination location during the reporting period @pseudocode: COUNT number of planned sessions during the reporting period */ define "Denominator": "Initial Population" /* @numerator: Number of immunization sessions completed at the vaccination location during the reporting period @pseudocode: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period */ define "Numerator": "Denominator" and Immunization.status = 'completed' /* @disaggregation: Vaccination location Administrative area */ define "Stratification 1": Elements.GetLocationNameForImmunization( Immunization ) define "Stratification 2": Elements.GetGeographicRegionForImmunization( Immunization ) ````: **Id: **
  * ?: IMMZIND45Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.45 Logic * Immunization session completion rate * The percentage of immunization sessions completed during the reporting period * * Numerator: Number of immunization sessions completed at the vaccination location during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period * Denominator: Number of planned immunization sessions at the vaccination location during the reporting period * Denominator Computation: COUNT number of planned sessions during the reporting period * * Disaggregation * - Vaccination location * - Administrative area * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND45Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": Immunization.occurrence is not null and Immunization.occurrence.toInterval() starts during "Measurement Period" /* @denominator: Number of planned immunization sessions at the vaccination location during the reporting period @pseudocode: COUNT number of planned sessions during the reporting period */ define "Denominator": "Initial Population" /* @numerator: Number of immunization sessions completed at the vaccination location during the reporting period @pseudocode: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period */ define "Numerator": "Denominator" and Immunization.status = 'completed' /* @disaggregation: Vaccination location Administrative area */ define "Stratification 1": Elements.GetLocationNameForImmunization( Immunization ) define "Stratification 2": Elements.GetGeographicRegionForImmunization( Immunization ) ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.45 Logic * Immunization session completion rate * The percentage of immunization sessions completed during the reporting period * * Numerator: Number of immunization sessions completed at the vaccination location during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period * Denominator: Number of planned immunization sessions at the vaccination location during the reporting period * Denominator Computation: COUNT number of planned sessions during the reporting period * * Disaggregation * - Vaccination location * - Administrative area * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND45Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": Immunization.occurrence is not null and Immunization.occurrence.toInterval() starts during "Measurement Period" /* @denominator: Number of planned immunization sessions at the vaccination location during the reporting period @pseudocode: COUNT number of planned sessions during the reporting period */ define "Denominator": "Initial Population" /* @numerator: Number of immunization sessions completed at the vaccination location during the reporting period @pseudocode: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period */ define "Numerator": "Denominator" and Immunization.status = 'completed' /* @disaggregation: Vaccination location Administrative area */ define "Stratification 1": Elements.GetLocationNameForImmunization( Immunization ) define "Stratification 2": Elements.GetGeographicRegionForImmunization( Immunization ) ````: **Url: **
  * ?: [IMMZIND45Logic](Library-IMMZIND45Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.45 Logic * Immunization session completion rate * The percentage of immunization sessions completed during the reporting period * * Numerator: Number of immunization sessions completed at the vaccination location during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period * Denominator: Number of planned immunization sessions at the vaccination location during the reporting period * Denominator Computation: COUNT number of planned sessions during the reporting period * * Disaggregation * - Vaccination location * - Administrative area * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND45Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": Immunization.occurrence is not null and Immunization.occurrence.toInterval() starts during "Measurement Period" /* @denominator: Number of planned immunization sessions at the vaccination location during the reporting period @pseudocode: COUNT number of planned sessions during the reporting period */ define "Denominator": "Initial Population" /* @numerator: Number of immunization sessions completed at the vaccination location during the reporting period @pseudocode: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period */ define "Numerator": "Denominator" and Immunization.status = 'completed' /* @disaggregation: Vaccination location Administrative area */ define "Stratification 1": Elements.GetLocationNameForImmunization( Immunization ) define "Stratification 2": Elements.GetGeographicRegionForImmunization( Immunization ) ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.45 Logic * Immunization session completion rate * The percentage of immunization sessions completed during the reporting period * * Numerator: Number of immunization sessions completed at the vaccination location during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period * Denominator: Number of planned immunization sessions at the vaccination location during the reporting period * Denominator Computation: COUNT number of planned sessions during the reporting period * * Disaggregation * - Vaccination location * - Administrative area * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND45Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": Immunization.occurrence is not null and Immunization.occurrence.toInterval() starts during "Measurement Period" /* @denominator: Number of planned immunization sessions at the vaccination location during the reporting period @pseudocode: COUNT number of planned sessions during the reporting period */ define "Denominator": "Initial Population" /* @numerator: Number of immunization sessions completed at the vaccination location during the reporting period @pseudocode: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period */ define "Numerator": "Denominator" and Immunization.status = 'completed' /* @disaggregation: Vaccination location Administrative area */ define "Stratification 1": Elements.GetLocationNameForImmunization( Immunization ) define "Stratification 2": Elements.GetGeographicRegionForImmunization( Immunization ) ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.45 Logic * Immunization session completion rate * The percentage of immunization sessions completed during the reporting period * * Numerator: Number of immunization sessions completed at the vaccination location during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period * Denominator: Number of planned immunization sessions at the vaccination location during the reporting period * Denominator Computation: COUNT number of planned sessions during the reporting period * * Disaggregation * - Vaccination location * - Administrative area * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND45Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": Immunization.occurrence is not null and Immunization.occurrence.toInterval() starts during "Measurement Period" /* @denominator: Number of planned immunization sessions at the vaccination location during the reporting period @pseudocode: COUNT number of planned sessions during the reporting period */ define "Denominator": "Initial Population" /* @numerator: Number of immunization sessions completed at the vaccination location during the reporting period @pseudocode: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period */ define "Numerator": "Denominator" and Immunization.status = 'completed' /* @disaggregation: Vaccination location Administrative area */ define "Stratification 1": Elements.GetLocationNameForImmunization( Immunization ) define "Stratification 2": Elements.GetGeographicRegionForImmunization( Immunization ) ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.45 Logic * Immunization session completion rate * The percentage of immunization sessions completed during the reporting period * * Numerator: Number of immunization sessions completed at the vaccination location during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period * Denominator: Number of planned immunization sessions at the vaccination location during the reporting period * Denominator Computation: COUNT number of planned sessions during the reporting period * * Disaggregation * - Vaccination location * - Administrative area * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND45Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": Immunization.occurrence is not null and Immunization.occurrence.toInterval() starts during "Measurement Period" /* @denominator: Number of planned immunization sessions at the vaccination location during the reporting period @pseudocode: COUNT number of planned sessions during the reporting period */ define "Denominator": "Initial Population" /* @numerator: Number of immunization sessions completed at the vaccination location during the reporting period @pseudocode: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period */ define "Numerator": "Denominator" and Immunization.status = 'completed' /* @disaggregation: Vaccination location Administrative area */ define "Stratification 1": Elements.GetLocationNameForImmunization( Immunization ) define "Stratification 2": Elements.GetGeographicRegionForImmunization( Immunization ) ````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.45 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND45Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND45Logic",
  "version" : "0.2.0",
  "name" : "IMMZIND45Logic",
  "title" : "IMMZIND45Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.45 indicator in the Immunization CPG",
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
    "name" : "Immunization",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Immunization"
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
    "type" : "string"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuNDUgTG9naWMKICogSW1tdW5pemF0aW9uIHNlc3Npb24gY29tcGxldGlvbiByYXRlCiAqIFRoZSBwZXJjZW50YWdlIG9mIGltbXVuaXphdGlvbiBzZXNzaW9ucyBjb21wbGV0ZWQgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIAogKiBOdW1lcmF0b3I6IE51bWJlciBvZiBpbW11bml6YXRpb24gc2Vzc2lvbnMgY29tcGxldGVkIGF0IHRoZSB2YWNjaW5hdGlvbiBsb2NhdGlvbiBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogTnVtZXJhdG9yIENvbXB1dGF0aW9uOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJJbW11bml6YXRpb24gZXZlbnQgc3RhdHVzIiA9ICJDb21wbGV0ZWQiIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTnVtYmVyIG9mIHBsYW5uZWQgaW1tdW5pemF0aW9uIHNlc3Npb25zIGF0IHRoZSB2YWNjaW5hdGlvbiBsb2NhdGlvbiBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKICogRGVub21pbmF0b3IgQ29tcHV0YXRpb246IENPVU5UIG51bWJlciBvZiBwbGFubmVkIHNlc3Npb25zIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiAKICogRGlzYWdncmVnYXRpb24KICogIC0gVmFjY2luYXRpb24gbG9jYXRpb24KICogIC0gQWRtaW5pc3RyYXRpdmUgYXJlYQogKgogKiBSZWZlcmVuY2VzOiBXSE8gSW1tdW5pemF0aW9uIGZhY2lsaXR5IGFuYWx5c2lzIGd1aWRlICg1KQogKiAKICogQW5ub3RhdGlvbnM6IOKAkwogKi8KbGlicmFyeSBJTU1aSU5ENDVMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpJbmRpY2F0b3JFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpwYXJhbWV0ZXIgIk1lYXN1cmVtZW50IFBlcmlvZCIgSW50ZXJ2YWw8RGF0ZT4gZGVmYXVsdCBJbnRlcnZhbFtAMjAyNS0wMS0wMSwgQDIwMjUtMTItMzFdCgpjb250ZXh0IEltbXVuaXphdGlvbgoKLyoKICogQXMgZGVmaW5lZCBieSBNZW1iZXIgU3RhdGUKICovCmRlZmluZSAiSW5pdGlhbCBQb3B1bGF0aW9uIjoKICBJbW11bml6YXRpb24ub2NjdXJyZW5jZSBpcyBub3QgbnVsbAogIGFuZCBJbW11bml6YXRpb24ub2NjdXJyZW5jZS50b0ludGVydmFsKCkgc3RhcnRzIGR1cmluZyAiTWVhc3VyZW1lbnQgUGVyaW9kIgoKLyoKQGRlbm9taW5hdG9yOiBOdW1iZXIgb2YgcGxhbm5lZCBpbW11bml6YXRpb24gc2Vzc2lvbnMgYXQgdGhlIHZhY2NpbmF0aW9uIGxvY2F0aW9uIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZApAcHNldWRvY29kZTogQ09VTlQgbnVtYmVyIG9mIHBsYW5uZWQgc2Vzc2lvbnMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiovCmRlZmluZSAiRGVub21pbmF0b3IiOgogICJJbml0aWFsIFBvcHVsYXRpb24iCgovKgpAbnVtZXJhdG9yOiBOdW1iZXIgb2YgaW1tdW5pemF0aW9uIHNlc3Npb25zIGNvbXBsZXRlZCBhdCB0aGUgdmFjY2luYXRpb24gbG9jYXRpb24gZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCkBwc2V1ZG9jb2RlOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJJbW11bml6YXRpb24gZXZlbnQgc3RhdHVzIiA9ICJDb21wbGV0ZWQiIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAoqLwpkZWZpbmUgIk51bWVyYXRvciI6CiAgIkRlbm9taW5hdG9yIgogICAgYW5kIEltbXVuaXphdGlvbi5zdGF0dXMgPSAnY29tcGxldGVkJwoKLyoKQGRpc2FnZ3JlZ2F0aW9uOiBWYWNjaW5hdGlvbiBsb2NhdGlvbgogICAgICAgICAgICAgICAgIEFkbWluaXN0cmF0aXZlIGFyZWEKKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKICBFbGVtZW50cy5HZXRMb2NhdGlvbk5hbWVGb3JJbW11bml6YXRpb24oIEltbXVuaXphdGlvbiApCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDIiOgogIEVsZW1lbnRzLkdldEdlb2dyYXBoaWNSZWdpb25Gb3JJbW11bml6YXRpb24oIEltbXVuaXphdGlvbiApCg=="
  }]
}

```
