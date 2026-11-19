# IMMZD5DTHibEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHibEncounterElements**

## Library: IMMZD5DTHibEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHibEncounterElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:IMMZD5DTHibEncounterElements |

 
This library defines encounter-based elements for Hib used throughout the Immunization CPG 

* * **Content: **application/elm+xml: ````Encoded data (10480 characters)````: **Id: **
  * ?: IMMZD5DTHibEncounterElements
* * **Content: **application/elm+xml: ````Encoded data (10480 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (10480 characters)````: **Url: **
  * ?: [IMMZD5DTHibEncounterElements](Library-IMMZD5DTHibEncounterElements.md)
* * **Content: **application/elm+xml: ````Encoded data (10480 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (10480 characters)````: **Date: **
  * ?: 2026-11-19 08:43:48+0000
* * **Content: **application/elm+xml: ````Encoded data (10480 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (10480 characters)````: **Description: **
  * ?: This library defines encounter-based elements for Hib used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHibEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHibEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTHibEncounterElements",
  "title" : "IMMZD5DTHibEncounterElements",
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
  "description" : "This library defines encounter-based elements for Hib used throughout the Immunization CPG",
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
    "display" : "Library HibElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTHibElements"
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
    "name" : "Draft Medication Request for Hib dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has a history of severe allergic reactions",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEhpYkVuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVEhpYkVuY291bnRlckVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgppbmNsdWRlIElNTVpENURUSGliRWxlbWVudHMgY2FsbGVkIEhpYkVsZW1lbnRzCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKcGFyYW1ldGVyIEVuY291bnRlcklkIFN0cmluZwoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGliIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhpYiBkb3NlIjoKCiAgRW5jb3VudGVyLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SIAogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iSGliLWNvbnRhaW5pbmcgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkhpYiBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIK"
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyNTUiPjxhOnM+LyoKICAqIExpYnJhcnk6IElNTVpENURUSGliRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUSGliRW5jb3VudGVyRWxlbWVudHM8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGlkZW50aWZpZXIgaWQ9IklNTVpENURUSGliRW5jb3VudGVyRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSI3OjEtNzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI4OjEtODozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IldIT0NvbmNlcHRzIiBsb2NhdG9yPSIxMDoxLTEwOjE5IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0NvbmNlcHRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxMCI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5XSE9Db25jZXB0czwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYWxJZGVudGlmaWVyPSJXQyIgbG9jYXRvcj0iMTE6MS0xMToyNyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBXQzwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxNCIgbG9jYWxJZGVudGlmaWVyPSJXRSIgbG9jYXRvcj0iMTI6MS0xMjoyOSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9FbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTQiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPRWxlbWVudHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgV0U8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTYiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE2Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpDb21tb248L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29tbW9uPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSIxNToxLTE1OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTgiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIENvbmNlcHRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjIwIiBsb2NhbElkZW50aWZpZXI9IkVuY291bnRlciIgbG9jYXRvcj0iMTY6MS0xNjo0NiIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aRW5jb3VudGVyRWxlbWVudHMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjIwIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpFbmNvdW50ZXJFbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBFbmNvdW50ZXI8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMjIiIGxvY2FsSWRlbnRpZmllcj0iSGliRWxlbWVudHMiIGxvY2F0b3I9IjE4OjEtMTg6NDYiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvSU1NWkQ1RFRIaWJFbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMjIiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkQ1RFRIaWJFbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBIaWJFbGVtZW50czwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48L2luY2x1ZGVzPjxwYXJhbWV0ZXJzPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgbG9jYWxJZD0iMjI0IiBsb2NhdG9yPSIyMDoxLTIwOjM2IiBuYW1lPSJUb2RheSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMjQiPjxhOnM+cGFyYW1ldGVyIFRvZGF5IDwvYTpzPjxhOnMgcj0iMjI4Ij48YTpzPkRhdGU8L2E6cz48L2E6cz48YTpzPiBkZWZhdWx0IDwvYTpzPjxhOnMgcj0iMjI3Ij48YTpzPlRvZGF5KCk8L2E6cz48L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGRlZmF1bHQgbG9jYWxJZD0iMjI3IiBsb2NhdG9yPSIyMDozMC0yMDozNiIgeHNpOnR5cGU9IlRvZGF5Ii8+PHBhcmFtZXRlclR5cGVTcGVjaWZpZXIgbG9jYWxJZD0iMjI4IiBsb2NhdG9yPSIyMDoxNy0yMDoyMCIgbmFtZT0idDpEYXRlIiB4c2k6dHlwZT0iTmFtZWRUeXBlU3BlY2lmaWVyIi8+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBsb2NhbElkPSIyMzAiIGxvY2F0b3I9IjIxOjEtMjE6MjgiIG5hbWU9IkVuY291bnRlcklkIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIzMCI+PGE6cz5wYXJhbWV0ZXIgRW5jb3VudGVySWQgPC9hOnM+PGE6cyByPSIyMzEiPjxhOnM+U3RyaW5nPC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxwYXJhbWV0ZXJUeXBlU3BlY2lmaWVyIGxvY2FsSWQ9IjIzMSIgbG9jYXRvcj0iMjE6MjMtMjE6MjgiIG5hbWU9InQ6U3RyaW5nIiB4c2k6dHlwZT0iTmFtZWRUeXBlU3BlY2lmaWVyIi8+PC9kZWY+PC9wYXJhbWV0ZXJzPjxjb250ZXh0cz48ZGVmIGxvY2FsSWQ9IjIzNiIgbG9jYXRvcj0iMjM6MS0yMzoxNSIgbmFtZT0iUGF0aWVudCIvPjwvY29udGV4dHM+PHN0YXRlbWVudHM+PGRlZiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyMzQiIGxvY2F0b3I9IjIzOjEtMjM6MTUiIG5hbWU9IlBhdGllbnQiPjxleHByZXNzaW9uIGxvY2FsSWQ9IjIzNSIgeHNpOnR5cGU9IlNpbmdsZXRvbkZyb20iPjxvcGVyYW5kIGRhdGFUeXBlPSJmaGlyOlBhdGllbnQiIGxvY2FsSWQ9IjIzMyIgbG9jYXRvcj0iMjM6MS0yMzoxNSIgdGVtcGxhdGVJZD0iaHR0cDovL2hsNy5vcmcvZmhpci9TdHJ1Y3R1cmVEZWZpbml0aW9uL1BhdGllbnQiIHhzaTp0eXBlPSJSZXRyaWV2ZSIvPjwvZXhwcmVzc2lvbj48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjIzOSIgbG9jYXRvcj0iMjg6MS0zMTo2MSIgbmFtZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIaWIgZG9zZSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6dCBuYW1lPSJpbnRlcm5hbCIgdmFsdWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGliIGRvc2UiLz48YTpzIHI9IjIzOSI+PGE6cz4vKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGliIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhpYiBkb3NlIjoKCiAgPC9hOnM+PGE6cyByPSIyNTIiPjxhOnM+PGE6cyByPSIyNDAiPjxhOnMgcj0iMjQyIj48YTpzPjxhOnM+RW5jb3VudGVyLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gTVI8L2E6cz48L2E6cz48L2E6cz48YTpzPiAKICAgIDwvYTpzPjxhOnMgcj0iMjQ4Ij48YTpzPndoZXJlIDwvYTpzPjxhOnMgcj0iMjQ4Ij48YTpzIHI9IjI0NSI+PGE6cyByPSIyNDQiPjxhOnM+TVI8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI0NSI+PGE6cz5tZWRpY2F0aW9uPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gaW4gPC9hOnM+PGE6cyByPSIyNDciPjxhOnMgcj0iMjQ2Ij48YTpzPkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyNDciPjxhOnM+IkhpYi1jb250YWluaW5nIHZhY2NpbmVzIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsb2NhbElkPSIyNTIiIGxvY2F0b3I9IjMwOjMtMzE6NjEiIHhzaTp0eXBlPSJRdWVyeSI+PHNvdXJjZSBhbGlhcz0iTVIiIGxvY2FsSWQ9IjI0MCIgbG9jYXRvcj0iMzA6My0zMDo1MyI+PGV4cHJlc3Npb24gbGlicmFyeU5hbWU9IkVuY291bnRlciIgbG9jYWxJZD0iMjQyIiBsb2NhdG9yPSIzMDozLTMwOjUwIiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+PC9zb3VyY2U+PHdoZXJlIGxvY2FsSWQ9IjI0OCIgbG9jYXRvcj0iMzE6NS0zMTo2MSIgeHNpOnR5cGU9IkluVmFsdWVTZXQiPjxzaWduYXR1cmUgbG9jYWxJZD0iMjUxIiBuYW1lPSJ0OkNvbmNlcHQiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz48Y29kZSBsaWJyYXJ5TmFtZT0iRkhJUkhlbHBlcnMiIGxvY2FsSWQ9IjI1MCIgbmFtZT0iVG9Db25jZXB0IiB4c2k6dHlwZT0iRnVuY3Rpb25SZWYiPjxvcGVyYW5kIGFzVHlwZT0iZmhpcjpDb2RlYWJsZUNvbmNlcHQiIGxvY2FsSWQ9IjI0OSIgeHNpOnR5cGU9IkFzIj48b3BlcmFuZCBsb2NhbElkPSIyNDUiIGxvY2F0b3I9IjMxOjExLTMxOjIzIiBwYXRoPSJtZWRpY2F0aW9uIiBzY29wZT0iTVIiIHhzaTp0eXBlPSJQcm9wZXJ0eSIvPjwvb3BlcmFuZD48L2NvZGU+PHZhbHVlc2V0IGxpYnJhcnlOYW1lPSJDb25jZXB0cyIgbG9jYWxJZD0iMjQ3IiBsb2NhdG9yPSIzMToyOC0zMTo2MSIgbmFtZT0iSGliLWNvbnRhaW5pbmcgdmFjY2luZXMiIHByZXNlcnZlPSJ0cnVlIi8+PC93aGVyZT48L2V4cHJlc3Npb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyNTUiIGxvY2F0b3I9IjM5OjEtNDA6NjUiIG5hbWU9IlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImlucHV0IiB2YWx1ZT0iVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiLz48YTp0IG5hbWU9InBzZXVkb2NvZGUiIHZhbHVlPSImIzM0O1BvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyYjMzQ7ID0gJiMzNDtTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zJiMzNDsiLz48YTp0IG5hbWU9ImNvZGUiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OSIvPjxhOnQgbmFtZT0iZGVjaXNpb24iIHZhbHVlPSJJTU1aLkQ1LkRULkhpYiBjb250cmFpbmRpY2F0aW9ucyIvPjxhOnMgcj0iMjU1Ij48YTpzPi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OQpAZGVjaXNpb246IElNTVouRDUuRFQuSGliIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiOgogIDwvYTpzPjxhOnMgcj0iMjU3Ij48YTpzIHI9IjI1NiI+PGE6cz5FbmNvdW50ZXI8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI1NyI+PGE6cz4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRW5jb3VudGVyIiBsb2NhbElkPSIyNTciIGxvY2F0b3I9IjQwOjMtNDA6NjUiIG5hbWU9IlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L2RlZj48L3N0YXRlbWVudHM+PC9saWJyYXJ5Pg=="
  }]
}

```
