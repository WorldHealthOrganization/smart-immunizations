# IMMZD5DTJEElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTJEElements**

## Library: IMMZD5DTJEElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTJEElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:IMMZD5DTJEElements |

 
This library defines context-independent elements for JE used throughout the Immunization CPG 

* * **Content: **application/elm+xml: ````Encoded data (9960 characters)````: **Id: **
  * ?: IMMZD5DTJEElements
* * **Content: **application/elm+xml: ````Encoded data (9960 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (9960 characters)````: **Url: **
  * ?: [IMMZD5DTJEElements](Library-IMMZD5DTJEElements.md)
* * **Content: **application/elm+xml: ````Encoded data (9960 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (9960 characters)````: **Date: **
  * ?: 2026-11-19 08:10:32+0000
* * **Content: **application/elm+xml: ````Encoded data (9960 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (9960 characters)````: **Description: **
  * ?: This library defines context-independent elements for JE used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTJEElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTJEElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTJEElements",
  "title" : "IMMZD5DTJEElements",
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
  "description" : "This library defines context-independent elements for JE used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for JE dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client is immunocomprised",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is currently pregnant",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEpFRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUSkVFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSkUgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSkUgZG9zZSI6CiAgRWxlbWVudHMuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkpFIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vY29tcHJvbWlzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZC01MQpAZGVjaXNpb246IElNTVouRDUuRFQuSkUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgaW1tdW5vY29tcHJvbWlzZWQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJDdXJyZW50bHkgcHJlZ25hbnQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudC01MgpAZGVjaXNpb246IElNTVouRDUuRFQuSkUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCg=="
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyNDkiPjxhOnM+LyoKICAqIExpYnJhcnk6IElNTVpENURUSkVFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRKRUVsZW1lbnRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxpZGVudGlmaWVyIGlkPSJJTU1aRDVEVEpFRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSI3OjEtNzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI4OjEtODozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IldIT0NvbmNlcHRzIiBsb2NhdG9yPSIxMDoxLTEwOjE5IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0NvbmNlcHRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxMCI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5XSE9Db25jZXB0czwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYWxJZGVudGlmaWVyPSJXQyIgbG9jYXRvcj0iMTE6MS0xMToyNyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBXQzwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxNCIgbG9jYWxJZGVudGlmaWVyPSJXRSIgbG9jYXRvcj0iMTI6MS0xMjoyOSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9FbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTQiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPRWxlbWVudHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgV0U8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTYiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE2Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpDb21tb248L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29tbW9uPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSIxNToxLTE1OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTgiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIENvbmNlcHRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjIwIiBsb2NhbElkZW50aWZpZXI9IkVsZW1lbnRzIiBsb2NhdG9yPSIxNjoxLTE2OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpFbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMjAiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkVsZW1lbnRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIEVsZW1lbnRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjwvaW5jbHVkZXM+PGNvbnRleHRzPjxkZWYgbG9jYWxJZD0iMjI1IiBsb2NhdG9yPSIxOToxLTE5OjE1IiBuYW1lPSJQYXRpZW50Ii8+PC9jb250ZXh0cz48c3RhdGVtZW50cz48ZGVmIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjIyMyIgbG9jYXRvcj0iMTk6MS0xOToxNSIgbmFtZT0iUGF0aWVudCI+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjI0IiB4c2k6dHlwZT0iU2luZ2xldG9uRnJvbSI+PG9wZXJhbmQgZGF0YVR5cGU9ImZoaXI6UGF0aWVudCIgbG9jYWxJZD0iMjIyIiBsb2NhdG9yPSIxOToxLTE5OjE1IiB0ZW1wbGF0ZUlkPSJodHRwOi8vaGw3Lm9yZy9maGlyL1N0cnVjdHVyZURlZmluaXRpb24vUGF0aWVudCIgeHNpOnR5cGU9IlJldHJpZXZlIi8+PC9leHByZXNzaW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjI4IiBsb2NhdG9yPSIyNDoxLTI2OjQ5IiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEpFIGRvc2UiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnQgbmFtZT0iaW50ZXJuYWwiIHZhbHVlPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEpFIGRvc2UiLz48YTpzIHI9IjIyOCI+PGE6cz4vKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSkUgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSkUgZG9zZSI6CiAgPC9hOnM+PGE6cyByPSIyNDEiPjxhOnM+PGE6cyByPSIyMjkiPjxhOnMgcj0iMjMxIj48YTpzPjxhOnM+RWxlbWVudHMuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCI8L2E6cz48L2E6cz48L2E6cz48YTpzPiBNUjwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+CiAgICA8L2E6cz48YTpzIHI9IjIzNyI+PGE6cz53aGVyZSA8L2E6cz48YTpzIHI9IjIzNyI+PGE6cyByPSIyMzQiPjxhOnMgcj0iMjMzIj48YTpzPk1SPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyMzQiPjxhOnM+bWVkaWNhdGlvbjwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+IGluIDwvYTpzPjxhOnMgcj0iMjM2Ij48YTpzIHI9IjIzNSI+PGE6cz5Db25jZXB0czwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjM2Ij48YTpzPiJKRSB2YWNjaW5lcyI8L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjQxIiBsb2NhdG9yPSIyNTozLTI2OjQ5IiB4c2k6dHlwZT0iUXVlcnkiPjxzb3VyY2UgYWxpYXM9Ik1SIiBsb2NhbElkPSIyMjkiIGxvY2F0b3I9IjI1OjMtMjU6NTIiPjxleHByZXNzaW9uIGxpYnJhcnlOYW1lPSJFbGVtZW50cyIgbG9jYWxJZD0iMjMxIiBsb2NhdG9yPSIyNTozLTI1OjQ5IiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+PC9zb3VyY2U+PHdoZXJlIGxvY2FsSWQ9IjIzNyIgbG9jYXRvcj0iMjY6NS0yNjo0OSIgeHNpOnR5cGU9IkluVmFsdWVTZXQiPjxzaWduYXR1cmUgbG9jYWxJZD0iMjQwIiBuYW1lPSJ0OkNvbmNlcHQiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz48Y29kZSBsaWJyYXJ5TmFtZT0iRkhJUkhlbHBlcnMiIGxvY2FsSWQ9IjIzOSIgbmFtZT0iVG9Db25jZXB0IiB4c2k6dHlwZT0iRnVuY3Rpb25SZWYiPjxvcGVyYW5kIGFzVHlwZT0iZmhpcjpDb2RlYWJsZUNvbmNlcHQiIGxvY2FsSWQ9IjIzOCIgeHNpOnR5cGU9IkFzIj48b3BlcmFuZCBsb2NhbElkPSIyMzQiIGxvY2F0b3I9IjI2OjExLTI2OjIzIiBwYXRoPSJtZWRpY2F0aW9uIiBzY29wZT0iTVIiIHhzaTp0eXBlPSJQcm9wZXJ0eSIvPjwvb3BlcmFuZD48L2NvZGU+PHZhbHVlc2V0IGxpYnJhcnlOYW1lPSJDb25jZXB0cyIgbG9jYWxJZD0iMjM2IiBsb2NhdG9yPSIyNjoyOC0yNjo0OSIgbmFtZT0iSkUgdmFjY2luZXMiIHByZXNlcnZlPSJ0cnVlIi8+PC93aGVyZT48L2V4cHJlc3Npb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyNDQiIGxvY2F0b3I9IjM0OjEtMzU6NDQiIG5hbWU9IlRoZSBjbGllbnQgaXMgaW1tdW5vY29tcHJpc2VkIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImlucHV0IiB2YWx1ZT0iVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcmlzZWQiLz48YTp0IG5hbWU9InBzZXVkb2NvZGUiIHZhbHVlPSImIzM0O1BvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyYjMzQ7ID0gJiMzNDtJbW11bm9jb21wcm9taXNlZCYjMzQ7Ii8+PGE6dCBuYW1lPSJjb2RlIiB2YWx1ZT0iVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcmlzZWQtNTEiLz48YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iSU1NWi5ENS5EVC5KRSBjb250cmFpbmRpY2F0aW9ucyIvPjxhOnMgcj0iMjQ0Ij48YTpzPi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcmlzZWQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkltbXVub2NvbXByb21pc2VkIgpAY29kZTogVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcmlzZWQtNTEKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkpFIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcmlzZWQiOgogIDwvYTpzPjxhOnMgcj0iMjQ2Ij48YTpzIHI9IjI0NSI+PGE6cz5FbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjQ2Ij48YTpzPiJUaGUgY2xpZW50IGlzIGltbXVub2NvbXByb21pc2VkIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIGxvY2FsSWQ9IjI0NiIgbG9jYXRvcj0iMzU6My0zNTo0NCIgbmFtZT0iVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZCIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjI0OSIgbG9jYXRvcj0iNDM6MS00NDozNSIgbmFtZT0iVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnQgbmFtZT0iaW5wdXQiIHZhbHVlPSJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCIvPjxhOnQgbmFtZT0icHNldWRvY29kZSIgdmFsdWU9IiYjMzQ7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJiMzNDsgPSAmIzM0O0N1cnJlbnRseSBwcmVnbmFudCYjMzQ7Ii8+PGE6dCBuYW1lPSJjb2RlIiB2YWx1ZT0iVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIiLz48YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iSU1NWi5ENS5EVC5KRSBjb250cmFpbmRpY2F0aW9ucyIvPjxhOnMgcj0iMjQ5Ij48YTpzPi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkN1cnJlbnRseSBwcmVnbmFudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50LTUyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5KRSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50IjoKICA8L2E6cz48YTpzIHI9IjI1MSI+PGE6cyByPSIyNTAiPjxhOnM+RWxlbWVudHM8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI1MSI+PGE6cz4iVGhlIGNsaWVudCBpcyBwcmVnbmFudCI8L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGV4cHJlc3Npb24gbGlicmFyeU5hbWU9IkVsZW1lbnRzIiBsb2NhbElkPSIyNTEiIGxvY2F0b3I9IjQ0OjMtNDQ6MzUiIG5hbWU9IlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+PC9kZWY+PC9zdGF0ZW1lbnRzPjwvbGlicmFyeT4="
  }]
}

```
