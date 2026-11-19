# IMMZD5DTSeasonalinfluenzaEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTSeasonalinfluenzaEncounterElements**

## Library: IMMZD5DTSeasonalinfluenzaEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaEncounterElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:IMMZD5DTSeasonalinfluenzaEncounterElements |

 
This library defines encounter-based elements for Seasonal influenza used throughout the Immunization CPG 

* * **Content: **application/elm+xml: ````Encoded data (12728 characters)````: **Id: **
  * ?: IMMZD5DTSeasonalinfluenzaEncounterElements
* * **Content: **application/elm+xml: ````Encoded data (12728 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (12728 characters)````: **Url: **
  * ?: [IMMZD5DTSeasonalinfluenzaEncounterElements](Library-IMMZD5DTSeasonalinfluenzaEncounterElements.md)
* * **Content: **application/elm+xml: ````Encoded data (12728 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (12728 characters)````: **Date: **
  * ?: 2026-11-19 08:10:32+0000
* * **Content: **application/elm+xml: ````Encoded data (12728 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (12728 characters)````: **Description: **
  * ?: This library defines encounter-based elements for Seasonal influenza used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTSeasonalinfluenzaEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTSeasonalinfluenzaEncounterElements",
  "title" : "IMMZD5DTSeasonalinfluenzaEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-11-19T08:10:32+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Seasonal influenza used throughout the Immunization CPG",
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
    "display" : "Library SeasonalinfluenzaElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaElements"
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
    "name" : "Draft Medication Request for Seasonal influenza dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has a history of anaphylactic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has a history of severe allergic reactions after a previous dose or to a vaccine component",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFNlYXNvbmFsaW5mbHVlbnphRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUU2Vhc29uYWxpbmZsdWVuemFFbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKaW5jbHVkZSBJTU1aRDVEVFNlYXNvbmFsaW5mbHVlbnphRWxlbWVudHMgY2FsbGVkIFNlYXNvbmFsaW5mbHVlbnphRWxlbWVudHMKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBTZWFzb25hbCBpbmZsdWVuemEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgU2Vhc29uYWwgaW5mbHVlbnphIGRvc2UiOgogIEVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iU2Vhc29uYWwgaW5mbHVlbnphIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMtNjcKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlNlYXNvbmFsIGluZmx1ZW56YSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMgYWZ0ZXIgYSBwcmV2aW91cyBkb3NlIG9yIHRvIGEgdmFjY2luZSBjb21wb25lbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyBhZnRlciBhIHByZXZpb3VzIGRvc2Ugb3IgdG8gYSB2YWNjaW5lIGNvbXBvbmVudC01OQpAZGVjaXNpb246IElNTVouRDUuRFQuU2Vhc29uYWwgaW5mbHVlbnphIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMgYWZ0ZXIgYSBwcmV2aW91cyBkb3NlIG9yIHRvIGEgdmFjY2luZSBjb21wb25lbnQiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgo="
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyNjAiPjxhOnM+LyoKICAqIExpYnJhcnk6IElNTVpENURUU2Vhc29uYWxpbmZsdWVuemFFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRTZWFzb25hbGluZmx1ZW56YUVuY291bnRlckVsZW1lbnRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxpZGVudGlmaWVyIGlkPSJJTU1aRDVEVFNlYXNvbmFsaW5mbHVlbnphRW5jb3VudGVyRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSI3OjEtNzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI4OjEtODozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IldIT0NvbmNlcHRzIiBsb2NhdG9yPSIxMDoxLTEwOjE5IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0NvbmNlcHRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxMCI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5XSE9Db25jZXB0czwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYWxJZGVudGlmaWVyPSJXQyIgbG9jYXRvcj0iMTE6MS0xMToyNyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBXQzwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxNCIgbG9jYWxJZGVudGlmaWVyPSJXRSIgbG9jYXRvcj0iMTI6MS0xMjoyOSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9FbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTQiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPRWxlbWVudHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgV0U8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTYiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE2Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpDb21tb248L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29tbW9uPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSIxNToxLTE1OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTgiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIENvbmNlcHRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjIwIiBsb2NhbElkZW50aWZpZXI9IkVuY291bnRlciIgbG9jYXRvcj0iMTY6MS0xNjo0NiIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aRW5jb3VudGVyRWxlbWVudHMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjIwIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpFbmNvdW50ZXJFbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBFbmNvdW50ZXI8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMjIiIGxvY2FsSWRlbnRpZmllcj0iU2Vhc29uYWxpbmZsdWVuemFFbGVtZW50cyIgbG9jYXRvcj0iMTg6MS0xODo3NCIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aRDVEVFNlYXNvbmFsaW5mbHVlbnphRWxlbWVudHMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjIyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpENURUU2Vhc29uYWxpbmZsdWVuemFFbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBTZWFzb25hbGluZmx1ZW56YUVsZW1lbnRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjwvaW5jbHVkZXM+PHBhcmFtZXRlcnM+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBsb2NhbElkPSIyMjQiIGxvY2F0b3I9IjIwOjEtMjA6MzYiIG5hbWU9IlRvZGF5Ij48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIyNCI+PGE6cz5wYXJhbWV0ZXIgVG9kYXkgPC9hOnM+PGE6cyByPSIyMjgiPjxhOnM+RGF0ZTwvYTpzPjwvYTpzPjxhOnM+IGRlZmF1bHQgPC9hOnM+PGE6cyByPSIyMjciPjxhOnM+VG9kYXkoKTwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZGVmYXVsdCBsb2NhbElkPSIyMjciIGxvY2F0b3I9IjIwOjMwLTIwOjM2IiB4c2k6dHlwZT0iVG9kYXkiLz48cGFyYW1ldGVyVHlwZVNwZWNpZmllciBsb2NhbElkPSIyMjgiIGxvY2F0b3I9IjIwOjE3LTIwOjIwIiBuYW1lPSJ0OkRhdGUiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGxvY2FsSWQ9IjIzMCIgbG9jYXRvcj0iMjE6MS0yMToyOCIgbmFtZT0iRW5jb3VudGVySWQiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjMwIj48YTpzPnBhcmFtZXRlciBFbmNvdW50ZXJJZCA8L2E6cz48YTpzIHI9IjIzMSI+PGE6cz5TdHJpbmc8L2E6cz48L2E6cz48L2E6cz48L2Fubm90YXRpb24+PHBhcmFtZXRlclR5cGVTcGVjaWZpZXIgbG9jYWxJZD0iMjMxIiBsb2NhdG9yPSIyMToyMy0yMToyOCIgbmFtZT0idDpTdHJpbmciIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz48L2RlZj48L3BhcmFtZXRlcnM+PGNvbnRleHRzPjxkZWYgbG9jYWxJZD0iMjM2IiBsb2NhdG9yPSIyMzoxLTIzOjE1IiBuYW1lPSJQYXRpZW50Ii8+PC9jb250ZXh0cz48c3RhdGVtZW50cz48ZGVmIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjIzNCIgbG9jYXRvcj0iMjM6MS0yMzoxNSIgbmFtZT0iUGF0aWVudCI+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjM1IiB4c2k6dHlwZT0iU2luZ2xldG9uRnJvbSI+PG9wZXJhbmQgZGF0YVR5cGU9ImZoaXI6UGF0aWVudCIgbG9jYWxJZD0iMjMzIiBsb2NhdG9yPSIyMzoxLTIzOjE1IiB0ZW1wbGF0ZUlkPSJodHRwOi8vaGw3Lm9yZy9maGlyL1N0cnVjdHVyZURlZmluaXRpb24vUGF0aWVudCIgeHNpOnR5cGU9IlJldHJpZXZlIi8+PC9leHByZXNzaW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjM5IiBsb2NhdG9yPSIyODoxLTMwOjY1IiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFNlYXNvbmFsIGluZmx1ZW56YSBkb3NlIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImludGVybmFsIiB2YWx1ZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBTZWFzb25hbCBpbmZsdWVuemEgZG9zZSIvPjxhOnMgcj0iMjM5Ij48YTpzPi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBTZWFzb25hbCBpbmZsdWVuemEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgU2Vhc29uYWwgaW5mbHVlbnphIGRvc2UiOgogIDwvYTpzPjxhOnMgcj0iMjUyIj48YTpzPjxhOnMgcj0iMjQwIj48YTpzIHI9IjI0MiI+PGE6cz48YTpzPkVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IjwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+IE1SPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4KICAgIDwvYTpzPjxhOnMgcj0iMjQ4Ij48YTpzPndoZXJlIDwvYTpzPjxhOnMgcj0iMjQ4Ij48YTpzIHI9IjI0NSI+PGE6cyByPSIyNDQiPjxhOnM+TVI8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI0NSI+PGE6cz5tZWRpY2F0aW9uPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gaW4gPC9hOnM+PGE6cyByPSIyNDciPjxhOnMgcj0iMjQ2Ij48YTpzPkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyNDciPjxhOnM+IlNlYXNvbmFsIGluZmx1ZW56YSB2YWNjaW5lcyI8L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjUyIiBsb2NhdG9yPSIyOTozLTMwOjY1IiB4c2k6dHlwZT0iUXVlcnkiPjxzb3VyY2UgYWxpYXM9Ik1SIiBsb2NhbElkPSIyNDAiIGxvY2F0b3I9IjI5OjMtMjk6NTMiPjxleHByZXNzaW9uIGxpYnJhcnlOYW1lPSJFbmNvdW50ZXIiIGxvY2FsSWQ9IjI0MiIgbG9jYXRvcj0iMjk6My0yOTo1MCIgbmFtZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPjwvc291cmNlPjx3aGVyZSBsb2NhbElkPSIyNDgiIGxvY2F0b3I9IjMwOjUtMzA6NjUiIHhzaTp0eXBlPSJJblZhbHVlU2V0Ij48c2lnbmF0dXJlIGxvY2FsSWQ9IjI1MSIgbmFtZT0idDpDb25jZXB0IiB4c2k6dHlwZT0iTmFtZWRUeXBlU3BlY2lmaWVyIi8+PGNvZGUgbGlicmFyeU5hbWU9IkZISVJIZWxwZXJzIiBsb2NhbElkPSIyNTAiIG5hbWU9IlRvQ29uY2VwdCIgeHNpOnR5cGU9IkZ1bmN0aW9uUmVmIj48b3BlcmFuZCBhc1R5cGU9ImZoaXI6Q29kZWFibGVDb25jZXB0IiBsb2NhbElkPSIyNDkiIHhzaTp0eXBlPSJBcyI+PG9wZXJhbmQgbG9jYWxJZD0iMjQ1IiBsb2NhdG9yPSIzMDoxMS0zMDoyMyIgcGF0aD0ibWVkaWNhdGlvbiIgc2NvcGU9Ik1SIiB4c2k6dHlwZT0iUHJvcGVydHkiLz48L29wZXJhbmQ+PC9jb2RlPjx2YWx1ZXNldCBsaWJyYXJ5TmFtZT0iQ29uY2VwdHMiIGxvY2FsSWQ9IjI0NyIgbG9jYXRvcj0iMzA6MjgtMzA6NjUiIG5hbWU9IlNlYXNvbmFsIGluZmx1ZW56YSB2YWNjaW5lcyIgcHJlc2VydmU9InRydWUiLz48L3doZXJlPjwvZXhwcmVzc2lvbj48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjI1NSIgbG9jYXRvcj0iMzg6MS0zOTo2MiIgbmFtZT0iVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnQgbmFtZT0iaW5wdXQiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIvPjxhOnQgbmFtZT0icHNldWRvY29kZSIgdmFsdWU9IiYjMzQ7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJiMzNDsgPSAmIzM0O0hpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyYjMzQ7Ii8+PGE6dCBuYW1lPSJjb2RlIiB2YWx1ZT0iVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMtNjciLz48YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iSU1NWi5ENS5EVC5TZWFzb25hbCBpbmZsdWVuemEgY29udHJhaW5kaWNhdGlvbnMiLz48YTpzIHI9IjI1NSI+PGE6cz4vKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJIaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucy02NwpAZGVjaXNpb246IElNTVouRDUuRFQuU2Vhc29uYWwgaW5mbHVlbnphIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiOgogIDwvYTpzPjxhOnMgcj0iMjU3Ij48YTpzIHI9IjI1NiI+PGE6cz5FbmNvdW50ZXI8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI1NyI+PGE6cz4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRW5jb3VudGVyIiBsb2NhbElkPSIyNTciIGxvY2F0b3I9IjM5OjMtMzk6NjIiIG5hbWU9IlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjI2MCIgbG9jYXRvcj0iNDc6MS00ODo2NSIgbmFtZT0iVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMgYWZ0ZXIgYSBwcmV2aW91cyBkb3NlIG9yIHRvIGEgdmFjY2luZSBjb21wb25lbnQiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnQgbmFtZT0iaW5wdXQiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyBhZnRlciBhIHByZXZpb3VzIGRvc2Ugb3IgdG8gYSB2YWNjaW5lIGNvbXBvbmVudCIvPjxhOnQgbmFtZT0icHNldWRvY29kZSIgdmFsdWU9IiYjMzQ7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJiMzNDsgPSAmIzM0O1NldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMmIzM0OyIvPjxhOnQgbmFtZT0iY29kZSIgdmFsdWU9IlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIGFmdGVyIGEgcHJldmlvdXMgZG9zZSBvciB0byBhIHZhY2NpbmUgY29tcG9uZW50LTU5Ii8+PGE6dCBuYW1lPSJkZWNpc2lvbiIgdmFsdWU9IklNTVouRDUuRFQuU2Vhc29uYWwgaW5mbHVlbnphIGNvbnRyYWluZGljYXRpb25zIi8+PGE6cyByPSIyNjAiPjxhOnM+LyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyBhZnRlciBhIHByZXZpb3VzIGRvc2Ugb3IgdG8gYSB2YWNjaW5lIGNvbXBvbmVudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIGFmdGVyIGEgcHJldmlvdXMgZG9zZSBvciB0byBhIHZhY2NpbmUgY29tcG9uZW50LTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5TZWFzb25hbCBpbmZsdWVuemEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyBhZnRlciBhIHByZXZpb3VzIGRvc2Ugb3IgdG8gYSB2YWNjaW5lIGNvbXBvbmVudCI6CiAgPC9hOnM+PGE6cyByPSIyNjIiPjxhOnMgcj0iMjYxIj48YTpzPkVuY291bnRlcjwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjYyIj48YTpzPiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiPC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxleHByZXNzaW9uIGxpYnJhcnlOYW1lPSJFbmNvdW50ZXIiIGxvY2FsSWQ9IjI2MiIgbG9jYXRvcj0iNDg6My00ODo2NSIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPjwvZGVmPjwvc3RhdGVtZW50cz48L2xpYnJhcnk+"
  }]
}

```
