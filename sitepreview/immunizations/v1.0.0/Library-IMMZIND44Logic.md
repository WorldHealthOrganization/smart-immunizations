# IMMZIND44Logic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND44Logic**

## Library: IMMZIND44Logic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZIND44Logic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZIND44Logic |

 
This library defines population criteria logic for the IMMZ.IND.44 indicator in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZ.IND.44 Logic * Adverse event following immunization (AEFI) cases * The total number of adverse events following the administration of vaccines during the reporting period * * Numerator: Number of AEFI cases during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Not applicable * Denominator Computation: Not applicable * * Disaggregation * - Vaccine type: BCG, OPV, etc. * - Vaccine manufacturer * - Type of reaction: non-serious, disability, etc. * - Administrative area * - Reaction manifestation: rash, vomiting, etc. * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND44Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": true /* @denominator: Not applicable @pseudocode: Not applicable */ define "Denominator": true /* @numerator: Number of AEFI cases during the reporting period @pseudocode: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists Elements."Adverse Events for Immunization" /* @disaggregation: Vaccine type: BCG, OPV, etc. Vaccine manufacturer Type of reaction: non-serious, disability, etc. Administrative area Reaction manifestation: rash, vomiting, etc. */ define "Stratification 1": First( Immunization.vaccineCode.coding ) define "Stratification 2": Immunization.manufacturer define "Stratification 3": First( First (Elements."Adverse Events for Immunization" ).seriousness.coding ) define "Stratification 4": Elements.GetGeographicRegionForImmunization( Immunization ) define "Stratification 5": First( First (Elements."Adverse Events for Immunization" ).event.coding ) /* define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" */````: **Id: **
  * ?: IMMZIND44Logic
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.44 Logic * Adverse event following immunization (AEFI) cases * The total number of adverse events following the administration of vaccines during the reporting period * * Numerator: Number of AEFI cases during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Not applicable * Denominator Computation: Not applicable * * Disaggregation * - Vaccine type: BCG, OPV, etc. * - Vaccine manufacturer * - Type of reaction: non-serious, disability, etc. * - Administrative area * - Reaction manifestation: rash, vomiting, etc. * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND44Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": true /* @denominator: Not applicable @pseudocode: Not applicable */ define "Denominator": true /* @numerator: Number of AEFI cases during the reporting period @pseudocode: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists Elements."Adverse Events for Immunization" /* @disaggregation: Vaccine type: BCG, OPV, etc. Vaccine manufacturer Type of reaction: non-serious, disability, etc. Administrative area Reaction manifestation: rash, vomiting, etc. */ define "Stratification 1": First( Immunization.vaccineCode.coding ) define "Stratification 2": Immunization.manufacturer define "Stratification 3": First( First (Elements."Adverse Events for Immunization" ).seriousness.coding ) define "Stratification 4": Elements.GetGeographicRegionForImmunization( Immunization ) define "Stratification 5": First( First (Elements."Adverse Events for Immunization" ).event.coding ) /* define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" */````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.44 Logic * Adverse event following immunization (AEFI) cases * The total number of adverse events following the administration of vaccines during the reporting period * * Numerator: Number of AEFI cases during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Not applicable * Denominator Computation: Not applicable * * Disaggregation * - Vaccine type: BCG, OPV, etc. * - Vaccine manufacturer * - Type of reaction: non-serious, disability, etc. * - Administrative area * - Reaction manifestation: rash, vomiting, etc. * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND44Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": true /* @denominator: Not applicable @pseudocode: Not applicable */ define "Denominator": true /* @numerator: Number of AEFI cases during the reporting period @pseudocode: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists Elements."Adverse Events for Immunization" /* @disaggregation: Vaccine type: BCG, OPV, etc. Vaccine manufacturer Type of reaction: non-serious, disability, etc. Administrative area Reaction manifestation: rash, vomiting, etc. */ define "Stratification 1": First( Immunization.vaccineCode.coding ) define "Stratification 2": Immunization.manufacturer define "Stratification 3": First( First (Elements."Adverse Events for Immunization" ).seriousness.coding ) define "Stratification 4": Elements.GetGeographicRegionForImmunization( Immunization ) define "Stratification 5": First( First (Elements."Adverse Events for Immunization" ).event.coding ) /* define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" */````: **Url: **
  * ?: [IMMZIND44Logic](Library-IMMZIND44Logic.md)
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.44 Logic * Adverse event following immunization (AEFI) cases * The total number of adverse events following the administration of vaccines during the reporting period * * Numerator: Number of AEFI cases during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Not applicable * Denominator Computation: Not applicable * * Disaggregation * - Vaccine type: BCG, OPV, etc. * - Vaccine manufacturer * - Type of reaction: non-serious, disability, etc. * - Administrative area * - Reaction manifestation: rash, vomiting, etc. * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND44Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": true /* @denominator: Not applicable @pseudocode: Not applicable */ define "Denominator": true /* @numerator: Number of AEFI cases during the reporting period @pseudocode: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists Elements."Adverse Events for Immunization" /* @disaggregation: Vaccine type: BCG, OPV, etc. Vaccine manufacturer Type of reaction: non-serious, disability, etc. Administrative area Reaction manifestation: rash, vomiting, etc. */ define "Stratification 1": First( Immunization.vaccineCode.coding ) define "Stratification 2": Immunization.manufacturer define "Stratification 3": First( First (Elements."Adverse Events for Immunization" ).seriousness.coding ) define "Stratification 4": Elements.GetGeographicRegionForImmunization( Immunization ) define "Stratification 5": First( First (Elements."Adverse Events for Immunization" ).event.coding ) /* define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" */````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.44 Logic * Adverse event following immunization (AEFI) cases * The total number of adverse events following the administration of vaccines during the reporting period * * Numerator: Number of AEFI cases during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Not applicable * Denominator Computation: Not applicable * * Disaggregation * - Vaccine type: BCG, OPV, etc. * - Vaccine manufacturer * - Type of reaction: non-serious, disability, etc. * - Administrative area * - Reaction manifestation: rash, vomiting, etc. * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND44Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": true /* @denominator: Not applicable @pseudocode: Not applicable */ define "Denominator": true /* @numerator: Number of AEFI cases during the reporting period @pseudocode: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists Elements."Adverse Events for Immunization" /* @disaggregation: Vaccine type: BCG, OPV, etc. Vaccine manufacturer Type of reaction: non-serious, disability, etc. Administrative area Reaction manifestation: rash, vomiting, etc. */ define "Stratification 1": First( Immunization.vaccineCode.coding ) define "Stratification 2": Immunization.manufacturer define "Stratification 3": First( First (Elements."Adverse Events for Immunization" ).seriousness.coding ) define "Stratification 4": Elements.GetGeographicRegionForImmunization( Immunization ) define "Stratification 5": First( First (Elements."Adverse Events for Immunization" ).event.coding ) /* define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" */````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.44 Logic * Adverse event following immunization (AEFI) cases * The total number of adverse events following the administration of vaccines during the reporting period * * Numerator: Number of AEFI cases during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Not applicable * Denominator Computation: Not applicable * * Disaggregation * - Vaccine type: BCG, OPV, etc. * - Vaccine manufacturer * - Type of reaction: non-serious, disability, etc. * - Administrative area * - Reaction manifestation: rash, vomiting, etc. * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND44Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": true /* @denominator: Not applicable @pseudocode: Not applicable */ define "Denominator": true /* @numerator: Number of AEFI cases during the reporting period @pseudocode: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists Elements."Adverse Events for Immunization" /* @disaggregation: Vaccine type: BCG, OPV, etc. Vaccine manufacturer Type of reaction: non-serious, disability, etc. Administrative area Reaction manifestation: rash, vomiting, etc. */ define "Stratification 1": First( Immunization.vaccineCode.coding ) define "Stratification 2": Immunization.manufacturer define "Stratification 3": First( First (Elements."Adverse Events for Immunization" ).seriousness.coding ) define "Stratification 4": Elements.GetGeographicRegionForImmunization( Immunization ) define "Stratification 5": First( First (Elements."Adverse Events for Immunization" ).event.coding ) /* define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" */````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZ.IND.44 Logic * Adverse event following immunization (AEFI) cases * The total number of adverse events following the administration of vaccines during the reporting period * * Numerator: Number of AEFI cases during the reporting period * Numerator Computation: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period * Denominator: Not applicable * Denominator Computation: Not applicable * * Disaggregation * - Vaccine type: BCG, OPV, etc. * - Vaccine manufacturer * - Type of reaction: non-serious, disability, etc. * - Administrative area * - Reaction manifestation: rash, vomiting, etc. * * References: WHO Immunization facility analysis guide (5) * * Annotations: – */ library IMMZIND44Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZIndicatorElements called Elements parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31] context Immunization /* * As defined by Member State */ define "Initial Population": true /* @denominator: Not applicable @pseudocode: Not applicable */ define "Denominator": true /* @numerator: Number of AEFI cases during the reporting period @pseudocode: COUNT of immunization events WHERE "Reaction reported" is "Yes" AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists Elements."Adverse Events for Immunization" /* @disaggregation: Vaccine type: BCG, OPV, etc. Vaccine manufacturer Type of reaction: non-serious, disability, etc. Administrative area Reaction manifestation: rash, vomiting, etc. */ define "Stratification 1": First( Immunization.vaccineCode.coding ) define "Stratification 2": Immunization.manufacturer define "Stratification 3": First( First (Elements."Adverse Events for Immunization" ).seriousness.coding ) define "Stratification 4": Elements.GetGeographicRegionForImmunization( Immunization ) define "Stratification 5": First( First (Elements."Adverse Events for Immunization" ).event.coding ) /* define "Stratification 1": Elements."By Geographic Region Stratifier" define "Stratification 2": Elements."By Administrative Gender Stratifier" define "Stratification 3": Elements."Age Stratifier" define "Stratification 4": Elements."By Age Group Stratifier" */````: **Description: **
  * ?: This library defines population criteria logic for the IMMZ.IND.44 indicator in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZIND44Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZIND44Logic",
  "version" : "1.0.0",
  "name" : "IMMZIND44Logic",
  "title" : "IMMZIND44Logic",
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
  "description" : "This library defines population criteria logic for the IMMZ.IND.44 indicator in the Immunization CPG",
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
    "type" : "Coding"
  },
  {
    "name" : "Stratification 2",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Reference"
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
    "type" : "string"
  },
  {
    "name" : "Stratification 5",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Coding"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "LyoKICogTGlicmFyeTogSU1NWi5JTkQuNDQgTG9naWMKICogQWR2ZXJzZSBldmVudCBmb2xsb3dpbmcgaW1tdW5pemF0aW9uIChBRUZJKSBjYXNlcwogKiBUaGUgdG90YWwgbnVtYmVyIG9mIGFkdmVyc2UgZXZlbnRzIGZvbGxvd2luZyB0aGUgYWRtaW5pc3RyYXRpb24gb2YgdmFjY2luZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCiAqIAogKiBOdW1lcmF0b3I6IE51bWJlciBvZiBBRUZJIGNhc2VzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBOdW1lcmF0b3IgQ29tcHV0YXRpb246IENPVU5UIG9mIGltbXVuaXphdGlvbiBldmVudHMgV0hFUkUgIlJlYWN0aW9uIHJlcG9ydGVkIiBpcyAiWWVzIiBBTkQgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iIGlzIGR1cmluZyB0aGUgcmVwb3J0aW5nIHBlcmlvZAogKiBEZW5vbWluYXRvcjogTm90IGFwcGxpY2FibGUKICogRGVub21pbmF0b3IgQ29tcHV0YXRpb246IE5vdCBhcHBsaWNhYmxlCiAqIAogKiBEaXNhZ2dyZWdhdGlvbgogKiAgLSBWYWNjaW5lIHR5cGU6IEJDRywgT1BWLCBldGMuCiAqICAtIFZhY2NpbmUgbWFudWZhY3R1cmVyCiAqICAtIFR5cGUgb2YgcmVhY3Rpb246IG5vbi1zZXJpb3VzLCBkaXNhYmlsaXR5LCBldGMuCiAqICAtIEFkbWluaXN0cmF0aXZlIGFyZWEKICogIC0gUmVhY3Rpb24gbWFuaWZlc3RhdGlvbjogcmFzaCwgdm9taXRpbmcsIGV0Yy4KICoKICogUmVmZXJlbmNlczogV0hPIEltbXVuaXphdGlvbiBmYWNpbGl0eSBhbmFseXNpcyBndWlkZSAoNSkKICogCiAqIEFubm90YXRpb25zOiDigJMKICovCmxpYnJhcnkgSU1NWklORDQ0TG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aSW5kaWNhdG9yRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGU+IGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjUtMDEtMDEsIEAyMDI1LTEyLTMxXQoKY29udGV4dCBJbW11bml6YXRpb24KCi8qCiAqIEFzIGRlZmluZWQgYnkgTWVtYmVyIFN0YXRlCiAqLwpkZWZpbmUgIkluaXRpYWwgUG9wdWxhdGlvbiI6CiAgdHJ1ZQoKLyoKQGRlbm9taW5hdG9yOiBOb3QgYXBwbGljYWJsZQpAcHNldWRvY29kZTogTm90IGFwcGxpY2FibGUKKi8KZGVmaW5lICJEZW5vbWluYXRvciI6CiAgdHJ1ZQoKLyoKQG51bWVyYXRvcjogTnVtYmVyIG9mIEFFRkkgY2FzZXMgZHVyaW5nIHRoZSByZXBvcnRpbmcgcGVyaW9kCkBwc2V1ZG9jb2RlOiBDT1VOVCBvZiBpbW11bml6YXRpb24gZXZlbnRzIFdIRVJFICJSZWFjdGlvbiByZXBvcnRlZCIgaXMgIlllcyIgQU5EICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiBpcyBkdXJpbmcgdGhlIHJlcG9ydGluZyBwZXJpb2QKKi8KZGVmaW5lICJOdW1lcmF0b3IiOgogIGV4aXN0cyBFbGVtZW50cy4iQWR2ZXJzZSBFdmVudHMgZm9yIEltbXVuaXphdGlvbiIKCi8qCkBkaXNhZ2dyZWdhdGlvbjogVmFjY2luZSB0eXBlOiBCQ0csIE9QViwgZXRjLgogICAgICAgICAgICAgICAgIFZhY2NpbmUgbWFudWZhY3R1cmVyCiAgICAgICAgICAgICAgICAgVHlwZSBvZiByZWFjdGlvbjogbm9uLXNlcmlvdXMsIGRpc2FiaWxpdHksIGV0Yy4KICAgICAgICAgICAgICAgICBBZG1pbmlzdHJhdGl2ZSBhcmVhCiAgICAgICAgICAgICAgICAgUmVhY3Rpb24gbWFuaWZlc3RhdGlvbjogcmFzaCwgdm9taXRpbmcsIGV0Yy4KKi8KZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKICBGaXJzdCggSW1tdW5pemF0aW9uLnZhY2NpbmVDb2RlLmNvZGluZyApCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDIiOgogIEltbXVuaXphdGlvbi5tYW51ZmFjdHVyZXIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CiAgRmlyc3QoIEZpcnN0IChFbGVtZW50cy4iQWR2ZXJzZSBFdmVudHMgZm9yIEltbXVuaXphdGlvbiIgKS5zZXJpb3VzbmVzcy5jb2RpbmcgKQoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiA0IjoKICBFbGVtZW50cy5HZXRHZW9ncmFwaGljUmVnaW9uRm9ySW1tdW5pemF0aW9uKCBJbW11bml6YXRpb24gKQoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiA1IjoKICBGaXJzdCggRmlyc3QgKEVsZW1lbnRzLiJBZHZlcnNlIEV2ZW50cyBmb3IgSW1tdW5pemF0aW9uIiApLmV2ZW50LmNvZGluZyApICAKLyoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAxIjoKCUVsZW1lbnRzLiJCeSBHZW9ncmFwaGljIFJlZ2lvbiBTdHJhdGlmaWVyIgoKZGVmaW5lICJTdHJhdGlmaWNhdGlvbiAyIjoKCUVsZW1lbnRzLiJCeSBBZG1pbmlzdHJhdGl2ZSBHZW5kZXIgU3RyYXRpZmllciIKCmRlZmluZSAiU3RyYXRpZmljYXRpb24gMyI6CglFbGVtZW50cy4iQWdlIFN0cmF0aWZpZXIiCgpkZWZpbmUgIlN0cmF0aWZpY2F0aW9uIDQiOgoJRWxlbWVudHMuIkJ5IEFnZSBHcm91cCBTdHJhdGlmaWVyIgoqLw=="
  }]
}

```
