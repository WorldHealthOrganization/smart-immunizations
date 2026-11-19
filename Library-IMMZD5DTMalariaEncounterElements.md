# IMMZD5DTMalariaEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMalariaEncounterElements**

## Library: IMMZD5DTMalariaEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMalariaEncounterElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:IMMZD5DTMalariaEncounterElements |

 
This library defines encounter-based elements for Malaria used throughout the Immunization CPG 

* * **Content: **application/elm+xml: ````Encoded data (10680 characters)````: **Id: **
  * ?: IMMZD5DTMalariaEncounterElements
* * **Content: **application/elm+xml: ````Encoded data (10680 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (10680 characters)````: **Url: **
  * ?: [IMMZD5DTMalariaEncounterElements](Library-IMMZD5DTMalariaEncounterElements.md)
* * **Content: **application/elm+xml: ````Encoded data (10680 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (10680 characters)````: **Date: **
  * ?: 2026-11-19 08:43:48+0000
* * **Content: **application/elm+xml: ````Encoded data (10680 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (10680 characters)````: **Description: **
  * ?: This library defines encounter-based elements for Malaria used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMalariaEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMalariaEncounterElements",
  "title" : "IMMZD5DTMalariaEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-11-19T08:43:48+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Malaria used throughout the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library WHOConcepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library WC",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library WE",
    "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
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
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library MalariaElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaElements"
  }],
  "parameter" : [{
    "name" : "Today",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "EncounterId",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Draft Medication Request for Malaria dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has hypersensitivity to any of the vaccine components",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "dataRequirement" : [{
    "type" : "Patient",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE1hbGFyaWFFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRNYWxhcmlhRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRNYWxhcmlhRWxlbWVudHMgY2FsbGVkIE1hbGFyaWFFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1hbGFyaWEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIk1hbGFyaWEgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkh5cGVyc2Vuc2l0aXZpdHkgdG8gdmFjY2luZSBjb21wb25lbnRzIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cy03MgpAZGVjaXNpb246IElNTVouRDUuRFQuTWFsYXJpYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgY29tcG9uZW50IG9mIHRoZSB2YWNjaW5lIgo="
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyNTUiPjxhOnM+LyoKICAqIExpYnJhcnk6IElNTVpENURUTWFsYXJpYUVuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVE1hbGFyaWFFbmNvdW50ZXJFbGVtZW50czwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48aWRlbnRpZmllciBpZD0iSU1NWkQ1RFRNYWxhcmlhRW5jb3VudGVyRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSI3OjEtNzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI4OjEtODozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IldIT0NvbmNlcHRzIiBsb2NhdG9yPSIxMDoxLTEwOjE5IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0NvbmNlcHRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxMCI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5XSE9Db25jZXB0czwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYWxJZGVudGlmaWVyPSJXQyIgbG9jYXRvcj0iMTE6MS0xMToyNyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBXQzwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxNCIgbG9jYWxJZGVudGlmaWVyPSJXRSIgbG9jYXRvcj0iMTI6MS0xMjoyOSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9FbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTQiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPRWxlbWVudHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgV0U8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTYiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE2Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpDb21tb248L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29tbW9uPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSIxNToxLTE1OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTgiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIENvbmNlcHRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjIwIiBsb2NhbElkZW50aWZpZXI9IkVuY291bnRlciIgbG9jYXRvcj0iMTY6MS0xNjo0NiIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aRW5jb3VudGVyRWxlbWVudHMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjIwIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpFbmNvdW50ZXJFbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBFbmNvdW50ZXI8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMjIiIGxvY2FsSWRlbnRpZmllcj0iTWFsYXJpYUVsZW1lbnRzIiBsb2NhdG9yPSIxODoxLTE4OjU0IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpENURUTWFsYXJpYUVsZW1lbnRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIyMiI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5JTU1aRDVEVE1hbGFyaWFFbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBNYWxhcmlhRWxlbWVudHM8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC9pbmNsdWRlcz48cGFyYW1ldGVycz48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGxvY2FsSWQ9IjIyNCIgbG9jYXRvcj0iMjA6MS0yMDozNiIgbmFtZT0iVG9kYXkiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjI0Ij48YTpzPnBhcmFtZXRlciBUb2RheSA8L2E6cz48YTpzIHI9IjIyOCI+PGE6cz5EYXRlPC9hOnM+PC9hOnM+PGE6cz4gZGVmYXVsdCA8L2E6cz48YTpzIHI9IjIyNyI+PGE6cz5Ub2RheSgpPC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxkZWZhdWx0IGxvY2FsSWQ9IjIyNyIgbG9jYXRvcj0iMjA6MzAtMjA6MzYiIHhzaTp0eXBlPSJUb2RheSIvPjxwYXJhbWV0ZXJUeXBlU3BlY2lmaWVyIGxvY2FsSWQ9IjIyOCIgbG9jYXRvcj0iMjA6MTctMjA6MjAiIG5hbWU9InQ6RGF0ZSIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgbG9jYWxJZD0iMjMwIiBsb2NhdG9yPSIyMToxLTIxOjI4IiBuYW1lPSJFbmNvdW50ZXJJZCI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMzAiPjxhOnM+cGFyYW1ldGVyIEVuY291bnRlcklkIDwvYTpzPjxhOnMgcj0iMjMxIj48YTpzPlN0cmluZzwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48cGFyYW1ldGVyVHlwZVNwZWNpZmllciBsb2NhbElkPSIyMzEiIGxvY2F0b3I9IjIxOjIzLTIxOjI4IiBuYW1lPSJ0OlN0cmluZyIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjwvZGVmPjwvcGFyYW1ldGVycz48Y29udGV4dHM+PGRlZiBsb2NhbElkPSIyMzYiIGxvY2F0b3I9IjIzOjEtMjM6MTUiIG5hbWU9IlBhdGllbnQiLz48L2NvbnRleHRzPjxzdGF0ZW1lbnRzPjxkZWYgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjM0IiBsb2NhdG9yPSIyMzoxLTIzOjE1IiBuYW1lPSJQYXRpZW50Ij48ZXhwcmVzc2lvbiBsb2NhbElkPSIyMzUiIHhzaTp0eXBlPSJTaW5nbGV0b25Gcm9tIj48b3BlcmFuZCBkYXRhVHlwZT0iZmhpcjpQYXRpZW50IiBsb2NhbElkPSIyMzMiIGxvY2F0b3I9IjIzOjEtMjM6MTUiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9QYXRpZW50IiB4c2k6dHlwZT0iUmV0cmlldmUiLz48L2V4cHJlc3Npb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyMzkiIGxvY2F0b3I9IjI4OjEtMzA6NTQiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImludGVybmFsIiB2YWx1ZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBNYWxhcmlhIGRvc2UiLz48YTpzIHI9IjIzOSI+PGE6cz4vKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBNYWxhcmlhIGRvc2UiOgogIDwvYTpzPjxhOnMgcj0iMjUyIj48YTpzPjxhOnMgcj0iMjQwIj48YTpzIHI9IjI0MiI+PGE6cz48YTpzPkVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IjwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+IE1SPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4KICAgIDwvYTpzPjxhOnMgcj0iMjQ4Ij48YTpzPndoZXJlIDwvYTpzPjxhOnMgcj0iMjQ4Ij48YTpzIHI9IjI0NSI+PGE6cyByPSIyNDQiPjxhOnM+TVI8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI0NSI+PGE6cz5tZWRpY2F0aW9uPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gaW4gPC9hOnM+PGE6cyByPSIyNDciPjxhOnMgcj0iMjQ2Ij48YTpzPkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyNDciPjxhOnM+Ik1hbGFyaWEgdmFjY2luZXMiPC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxleHByZXNzaW9uIGxvY2FsSWQ9IjI1MiIgbG9jYXRvcj0iMjk6My0zMDo1NCIgeHNpOnR5cGU9IlF1ZXJ5Ij48c291cmNlIGFsaWFzPSJNUiIgbG9jYWxJZD0iMjQwIiBsb2NhdG9yPSIyOTozLTI5OjUzIj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRW5jb3VudGVyIiBsb2NhbElkPSIyNDIiIGxvY2F0b3I9IjI5OjMtMjk6NTAiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L3NvdXJjZT48d2hlcmUgbG9jYWxJZD0iMjQ4IiBsb2NhdG9yPSIzMDo1LTMwOjU0IiB4c2k6dHlwZT0iSW5WYWx1ZVNldCI+PHNpZ25hdHVyZSBsb2NhbElkPSIyNTEiIG5hbWU9InQ6Q29uY2VwdCIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjxjb2RlIGxpYnJhcnlOYW1lPSJGSElSSGVscGVycyIgbG9jYWxJZD0iMjUwIiBuYW1lPSJUb0NvbmNlcHQiIHhzaTp0eXBlPSJGdW5jdGlvblJlZiI+PG9wZXJhbmQgYXNUeXBlPSJmaGlyOkNvZGVhYmxlQ29uY2VwdCIgbG9jYWxJZD0iMjQ5IiB4c2k6dHlwZT0iQXMiPjxvcGVyYW5kIGxvY2FsSWQ9IjI0NSIgbG9jYXRvcj0iMzA6MTEtMzA6MjMiIHBhdGg9Im1lZGljYXRpb24iIHNjb3BlPSJNUiIgeHNpOnR5cGU9IlByb3BlcnR5Ii8+PC9vcGVyYW5kPjwvY29kZT48dmFsdWVzZXQgbGlicmFyeU5hbWU9IkNvbmNlcHRzIiBsb2NhbElkPSIyNDciIGxvY2F0b3I9IjMwOjI4LTMwOjU0IiBuYW1lPSJNYWxhcmlhIHZhY2NpbmVzIiBwcmVzZXJ2ZT0idHJ1ZSIvPjwvd2hlcmU+PC9leHByZXNzaW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjU1IiBsb2NhdG9yPSIzODoxLTM5Ojc3IiBuYW1lPSJUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImlucHV0IiB2YWx1ZT0iVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cyIvPjxhOnQgbmFtZT0icHNldWRvY29kZSIgdmFsdWU9IiYjMzQ7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJiMzNDsgPSAmIzM0O0h5cGVyc2Vuc2l0aXZpdHkgdG8gdmFjY2luZSBjb21wb25lbnRzJiMzNDsiLz48YTp0IG5hbWU9ImNvZGUiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzLTcyIi8+PGE6dCBuYW1lPSJkZWNpc2lvbiIgdmFsdWU9IklNTVouRDUuRFQuTWFsYXJpYSBjb250cmFpbmRpY2F0aW9ucyIvPjxhOnMgcj0iMjU1Ij48YTpzPi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSHlwZXJzZW5zaXRpdml0eSB0byB2YWNjaW5lIGNvbXBvbmVudHMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzLTcyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NYWxhcmlhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cyI6CiAgPC9hOnM+PGE6cyByPSIyNTciPjxhOnMgcj0iMjU2Ij48YTpzPkVuY291bnRlcjwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjU3Ij48YTpzPiJUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBjb21wb25lbnQgb2YgdGhlIHZhY2NpbmUiPC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxleHByZXNzaW9uIGxpYnJhcnlOYW1lPSJFbmNvdW50ZXIiIGxvY2FsSWQ9IjI1NyIgbG9jYXRvcj0iMzk6My0zOTo3NyIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgY29tcG9uZW50IG9mIHRoZSB2YWNjaW5lIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPjwvZGVmPjwvc3RhdGVtZW50cz48L2xpYnJhcnk+"
  }]
}

```
