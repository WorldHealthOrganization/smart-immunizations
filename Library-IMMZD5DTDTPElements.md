# IMMZD5DTDTPElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTDTPElements**

## Library: IMMZD5DTDTPElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTDTPElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:IMMZD5DTDTPElements |

 
This library defines context-independent elements for DTP used throughout the Immunization CPG 

* * **Content: **application/elm+xml: ````Encoded data (12692 characters)````: **Id: **
  * ?: IMMZD5DTDTPElements
* * **Content: **application/elm+xml: ````Encoded data (12692 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (12692 characters)````: **Url: **
  * ?: [IMMZD5DTDTPElements](Library-IMMZD5DTDTPElements.md)
* * **Content: **application/elm+xml: ````Encoded data (12692 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (12692 characters)````: **Date: **
  * ?: 2026-11-19 08:43:48+0000
* * **Content: **application/elm+xml: ````Encoded data (12692 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (12692 characters)````: **Description: **
  * ?: This library defines context-independent elements for DTP used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTDTPElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTDTPElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTDTPElements",
  "title" : "IMMZD5DTDTPElements",
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
  "description" : "This library defines context-independent elements for DTP used throughout the Immunization CPG",
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
    "display" : "Library Elements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
  }],
  "parameter" : [{
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Draft Medication Request for DTP dose",
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
    "name" : "The client currently has a severe acute illness",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Draft Medication Request for Tetanus dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  }],
  "dataRequirement" : [{
    "type" : "Patient",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVERUUEVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVERUUEVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBEVFAgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgRFRQIGRvc2UiOgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SIAogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iRFRQLWNvbnRhaW5pbmcgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJIaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucy02NwpAZGVjaXNpb246IElNTVouRDUuRFQuRFRQIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWN1dGUgaWxsbmVzcyIKQGNvZGU6IFRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzLTU0CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5EVFAgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGN1cnJlbnRseSBoYXMgYSBzZXZlcmUgYWN1dGUgaWxsbmVzcyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzIgoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFRldGFudXMgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVGV0YW51cyBkb3NlIjoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iVGV0YW51cy1jb250YWluaW5nIHZhY2NpbmVzIgo="
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyNTQiPjxhOnM+LyoKICAqIExpYnJhcnk6IElNTVpENURURFRQRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURURFRQRWxlbWVudHM8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGlkZW50aWZpZXIgaWQ9IklNTVpENURURFRQRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSI3OjEtNzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI4OjEtODozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IldIT0NvbmNlcHRzIiBsb2NhdG9yPSIxMDoxLTEwOjE5IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0NvbmNlcHRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxMCI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5XSE9Db25jZXB0czwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYWxJZGVudGlmaWVyPSJXQyIgbG9jYXRvcj0iMTE6MS0xMToyNyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBXQzwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxNCIgbG9jYWxJZGVudGlmaWVyPSJXRSIgbG9jYXRvcj0iMTI6MS0xMjoyOSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9FbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTQiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPRWxlbWVudHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgV0U8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTYiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE2Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpDb21tb248L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29tbW9uPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSIxNToxLTE1OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTgiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIENvbmNlcHRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjIwIiBsb2NhbElkZW50aWZpZXI9IkVsZW1lbnRzIiBsb2NhdG9yPSIxNjoxLTE2OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpFbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMjAiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkVsZW1lbnRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIEVsZW1lbnRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjwvaW5jbHVkZXM+PGNvbnRleHRzPjxkZWYgbG9jYWxJZD0iMjI1IiBsb2NhdG9yPSIxOToxLTE5OjE1IiBuYW1lPSJQYXRpZW50Ii8+PC9jb250ZXh0cz48c3RhdGVtZW50cz48ZGVmIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjIyMyIgbG9jYXRvcj0iMTk6MS0xOToxNSIgbmFtZT0iUGF0aWVudCI+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjI0IiB4c2k6dHlwZT0iU2luZ2xldG9uRnJvbSI+PG9wZXJhbmQgZGF0YVR5cGU9ImZoaXI6UGF0aWVudCIgbG9jYWxJZD0iMjIyIiBsb2NhdG9yPSIxOToxLTE5OjE1IiB0ZW1wbGF0ZUlkPSJodHRwOi8vaGw3Lm9yZy9maGlyL1N0cnVjdHVyZURlZmluaXRpb24vUGF0aWVudCIgeHNpOnR5cGU9IlJldHJpZXZlIi8+PC9leHByZXNzaW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjI4IiBsb2NhdG9yPSIyNDoxLTI2OjYxIiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIERUUCBkb3NlIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImludGVybmFsIiB2YWx1ZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBEVFAgZG9zZSIvPjxhOnMgcj0iMjI4Ij48YTpzPi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBEVFAgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgRFRQIGRvc2UiOgogIDwvYTpzPjxhOnMgcj0iMjQxIj48YTpzPjxhOnMgcj0iMjI5Ij48YTpzIHI9IjIzMSI+PGE6cz48YTpzPkVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gTVI8L2E6cz48L2E6cz48L2E6cz48YTpzPiAKICAgIDwvYTpzPjxhOnMgcj0iMjM3Ij48YTpzPndoZXJlIDwvYTpzPjxhOnMgcj0iMjM3Ij48YTpzIHI9IjIzNCI+PGE6cyByPSIyMzMiPjxhOnM+TVI8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjIzNCI+PGE6cz5tZWRpY2F0aW9uPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gaW4gPC9hOnM+PGE6cyByPSIyMzYiPjxhOnMgcj0iMjM1Ij48YTpzPkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyMzYiPjxhOnM+IkRUUC1jb250YWluaW5nIHZhY2NpbmVzIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsb2NhbElkPSIyNDEiIGxvY2F0b3I9IjI1OjMtMjY6NjEiIHhzaTp0eXBlPSJRdWVyeSI+PHNvdXJjZSBhbGlhcz0iTVIiIGxvY2FsSWQ9IjIyOSIgbG9jYXRvcj0iMjU6My0yNTo1MiI+PGV4cHJlc3Npb24gbGlicmFyeU5hbWU9IkVsZW1lbnRzIiBsb2NhbElkPSIyMzEiIGxvY2F0b3I9IjI1OjMtMjU6NDkiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L3NvdXJjZT48d2hlcmUgbG9jYWxJZD0iMjM3IiBsb2NhdG9yPSIyNjo1LTI2OjYxIiB4c2k6dHlwZT0iSW5WYWx1ZVNldCI+PHNpZ25hdHVyZSBsb2NhbElkPSIyNDAiIG5hbWU9InQ6Q29uY2VwdCIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjxjb2RlIGxpYnJhcnlOYW1lPSJGSElSSGVscGVycyIgbG9jYWxJZD0iMjM5IiBuYW1lPSJUb0NvbmNlcHQiIHhzaTp0eXBlPSJGdW5jdGlvblJlZiI+PG9wZXJhbmQgYXNUeXBlPSJmaGlyOkNvZGVhYmxlQ29uY2VwdCIgbG9jYWxJZD0iMjM4IiB4c2k6dHlwZT0iQXMiPjxvcGVyYW5kIGxvY2FsSWQ9IjIzNCIgbG9jYXRvcj0iMjY6MTEtMjY6MjMiIHBhdGg9Im1lZGljYXRpb24iIHNjb3BlPSJNUiIgeHNpOnR5cGU9IlByb3BlcnR5Ii8+PC9vcGVyYW5kPjwvY29kZT48dmFsdWVzZXQgbGlicmFyeU5hbWU9IkNvbmNlcHRzIiBsb2NhbElkPSIyMzYiIGxvY2F0b3I9IjI2OjI4LTI2OjYxIiBuYW1lPSJEVFAtY29udGFpbmluZyB2YWNjaW5lcyIgcHJlc2VydmU9InRydWUiLz48L3doZXJlPjwvZXhwcmVzc2lvbj48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjI0NCIgbG9jYXRvcj0iMzQ6MS0zNTo2MSIgbmFtZT0iVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnQgbmFtZT0iaW5wdXQiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIvPjxhOnQgbmFtZT0icHNldWRvY29kZSIgdmFsdWU9IiYjMzQ7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJiMzNDsgPSAmIzM0O0hpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyYjMzQ7Ii8+PGE6dCBuYW1lPSJjb2RlIiB2YWx1ZT0iVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMtNjciLz48YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iSU1NWi5ENS5EVC5EVFAgY29udHJhaW5kaWNhdGlvbnMiLz48YTpzIHI9IjI0NCI+PGE6cz4vKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJIaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucy02NwpAZGVjaXNpb246IElNTVouRDUuRFQuRFRQIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiOgogIDwvYTpzPjxhOnMgcj0iMjQ2Ij48YTpzIHI9IjI0NSI+PGE6cz5FbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjQ2Ij48YTpzPiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiPC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxleHByZXNzaW9uIGxpYnJhcnlOYW1lPSJFbGVtZW50cyIgbG9jYWxJZD0iMjQ2IiBsb2NhdG9yPSIzNTozLTM1OjYxIiBuYW1lPSJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyNDkiIGxvY2F0b3I9IjQzOjEtNDQ6NjAiIG5hbWU9IlRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImlucHV0IiB2YWx1ZT0iVGhlIGNsaWVudCBjdXJyZW50bHkgaGFzIGEgc2V2ZXJlIGFjdXRlIGlsbG5lc3MiLz48YTp0IG5hbWU9InBzZXVkb2NvZGUiIHZhbHVlPSImIzM0O1BvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyYjMzQ7ID0gJiMzNDtTZXZlcmUgYWN1dGUgaWxsbmVzcyYjMzQ7Ii8+PGE6dCBuYW1lPSJjb2RlIiB2YWx1ZT0iVGhlIGNsaWVudCBjdXJyZW50bHkgaGFzIGEgc2V2ZXJlIGFjdXRlIGlsbG5lc3MtNTQiLz48YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iSU1NWi5ENS5EVC5EVFAgY29udHJhaW5kaWNhdGlvbnMiLz48YTpzIHI9IjI0OSI+PGE6cz4vKgpAaW5wdXQ6IFRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWN1dGUgaWxsbmVzcyIKQGNvZGU6IFRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzLTU0CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5EVFAgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGN1cnJlbnRseSBoYXMgYSBzZXZlcmUgYWN1dGUgaWxsbmVzcyI6CiAgPC9hOnM+PGE6cyByPSIyNTEiPjxhOnMgcj0iMjUwIj48YTpzPkVsZW1lbnRzPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyNTEiPjxhOnM+IlRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIGxvY2FsSWQ9IjI1MSIgbG9jYXRvcj0iNDQ6My00NDo2MCIgbmFtZT0iVGhlIGNsaWVudCBjdXJyZW50bHkgaGFzIGEgc2V2ZXJlIGFjdXRlIGlsbG5lc3MiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyNTQiIGxvY2F0b3I9IjQ5OjEtNTE6NjUiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVGV0YW51cyBkb3NlIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImludGVybmFsIiB2YWx1ZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBUZXRhbnVzIGRvc2UiLz48YTpzIHI9IjI1NCI+PGE6cz4vKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVGV0YW51cyBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBUZXRhbnVzIGRvc2UiOgogIDwvYTpzPjxhOnMgcj0iMjY3Ij48YTpzPjxhOnMgcj0iMjU1Ij48YTpzIHI9IjI1NyI+PGE6cz48YTpzPkVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gTVI8L2E6cz48L2E6cz48L2E6cz48YTpzPgogICAgPC9hOnM+PGE6cyByPSIyNjMiPjxhOnM+d2hlcmUgPC9hOnM+PGE6cyByPSIyNjMiPjxhOnMgcj0iMjYwIj48YTpzIHI9IjI1OSI+PGE6cz5NUjwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjYwIj48YTpzPm1lZGljYXRpb248L2E6cz48L2E6cz48L2E6cz48YTpzPiBpbiA8L2E6cz48YTpzIHI9IjI2MiI+PGE6cyByPSIyNjEiPjxhOnM+Q29uY2VwdHM8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI2MiI+PGE6cz4iVGV0YW51cy1jb250YWluaW5nIHZhY2NpbmVzIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsb2NhbElkPSIyNjciIGxvY2F0b3I9IjUwOjMtNTE6NjUiIHhzaTp0eXBlPSJRdWVyeSI+PHNvdXJjZSBhbGlhcz0iTVIiIGxvY2FsSWQ9IjI1NSIgbG9jYXRvcj0iNTA6My01MDo1MiI+PGV4cHJlc3Npb24gbGlicmFyeU5hbWU9IkVsZW1lbnRzIiBsb2NhbElkPSIyNTciIGxvY2F0b3I9IjUwOjMtNTA6NDkiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L3NvdXJjZT48d2hlcmUgbG9jYWxJZD0iMjYzIiBsb2NhdG9yPSI1MTo1LTUxOjY1IiB4c2k6dHlwZT0iSW5WYWx1ZVNldCI+PHNpZ25hdHVyZSBsb2NhbElkPSIyNjYiIG5hbWU9InQ6Q29uY2VwdCIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjxjb2RlIGxpYnJhcnlOYW1lPSJGSElSSGVscGVycyIgbG9jYWxJZD0iMjY1IiBuYW1lPSJUb0NvbmNlcHQiIHhzaTp0eXBlPSJGdW5jdGlvblJlZiI+PG9wZXJhbmQgYXNUeXBlPSJmaGlyOkNvZGVhYmxlQ29uY2VwdCIgbG9jYWxJZD0iMjY0IiB4c2k6dHlwZT0iQXMiPjxvcGVyYW5kIGxvY2FsSWQ9IjI2MCIgbG9jYXRvcj0iNTE6MTEtNTE6MjMiIHBhdGg9Im1lZGljYXRpb24iIHNjb3BlPSJNUiIgeHNpOnR5cGU9IlByb3BlcnR5Ii8+PC9vcGVyYW5kPjwvY29kZT48dmFsdWVzZXQgbGlicmFyeU5hbWU9IkNvbmNlcHRzIiBsb2NhbElkPSIyNjIiIGxvY2F0b3I9IjUxOjI4LTUxOjY1IiBuYW1lPSJUZXRhbnVzLWNvbnRhaW5pbmcgdmFjY2luZXMiIHByZXNlcnZlPSJ0cnVlIi8+PC93aGVyZT48L2V4cHJlc3Npb24+PC9kZWY+PC9zdGF0ZW1lbnRzPjwvbGlicmFyeT4="
  }]
}

```
