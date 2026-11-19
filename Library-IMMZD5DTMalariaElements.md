# IMMZD5DTMalariaElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMalariaElements**

## Library: IMMZD5DTMalariaElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMalariaElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:IMMZD5DTMalariaElements |

 
This library defines context-independent elements for Malaria used throughout the Immunization CPG 

* * **Content: **application/elm+xml: ````Encoded data (9144 characters)````: **Id: **
  * ?: IMMZD5DTMalariaElements
* * **Content: **application/elm+xml: ````Encoded data (9144 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (9144 characters)````: **Url: **
  * ?: [IMMZD5DTMalariaElements](Library-IMMZD5DTMalariaElements.md)
* * **Content: **application/elm+xml: ````Encoded data (9144 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (9144 characters)````: **Date: **
  * ?: 2026-11-19 08:43:48+0000
* * **Content: **application/elm+xml: ````Encoded data (9144 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (9144 characters)````: **Description: **
  * ?: This library defines context-independent elements for Malaria used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMalariaElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMalariaElements",
  "title" : "IMMZD5DTMalariaElements",
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
  "description" : "This library defines context-independent elements for Malaria used throughout the Immunization CPG",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE1hbGFyaWFFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRNYWxhcmlhRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1hbGFyaWEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlIjoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iTWFsYXJpYSB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSHlwZXJzZW5zaXRpdml0eSB0byB2YWNjaW5lIGNvbXBvbmVudHMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzLTcyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NYWxhcmlhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZSIK"
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyNDQiPjxhOnM+LyoKICAqIExpYnJhcnk6IElNTVpENURUTWFsYXJpYUVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVE1hbGFyaWFFbGVtZW50czwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48aWRlbnRpZmllciBpZD0iSU1NWkQ1RFRNYWxhcmlhRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSI3OjEtNzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI4OjEtODozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IldIT0NvbmNlcHRzIiBsb2NhdG9yPSIxMDoxLTEwOjE5IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0NvbmNlcHRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxMCI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5XSE9Db25jZXB0czwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYWxJZGVudGlmaWVyPSJXQyIgbG9jYXRvcj0iMTE6MS0xMToyNyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBXQzwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxNCIgbG9jYWxJZGVudGlmaWVyPSJXRSIgbG9jYXRvcj0iMTI6MS0xMjoyOSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9FbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTQiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPRWxlbWVudHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgV0U8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTYiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE2Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpDb21tb248L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29tbW9uPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSIxNToxLTE1OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTgiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIENvbmNlcHRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjIwIiBsb2NhbElkZW50aWZpZXI9IkVsZW1lbnRzIiBsb2NhdG9yPSIxNjoxLTE2OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpFbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMjAiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkVsZW1lbnRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIEVsZW1lbnRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjwvaW5jbHVkZXM+PGNvbnRleHRzPjxkZWYgbG9jYWxJZD0iMjI1IiBsb2NhdG9yPSIxOToxLTE5OjE1IiBuYW1lPSJQYXRpZW50Ii8+PC9jb250ZXh0cz48c3RhdGVtZW50cz48ZGVmIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjIyMyIgbG9jYXRvcj0iMTk6MS0xOToxNSIgbmFtZT0iUGF0aWVudCI+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjI0IiB4c2k6dHlwZT0iU2luZ2xldG9uRnJvbSI+PG9wZXJhbmQgZGF0YVR5cGU9ImZoaXI6UGF0aWVudCIgbG9jYWxJZD0iMjIyIiBsb2NhdG9yPSIxOToxLTE5OjE1IiB0ZW1wbGF0ZUlkPSJodHRwOi8vaGw3Lm9yZy9maGlyL1N0cnVjdHVyZURlZmluaXRpb24vUGF0aWVudCIgeHNpOnR5cGU9IlJldHJpZXZlIi8+PC9leHByZXNzaW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjI4IiBsb2NhdG9yPSIyNDoxLTI2OjU0IiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1hbGFyaWEgZG9zZSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6dCBuYW1lPSJpbnRlcm5hbCIgdmFsdWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlIi8+PGE6cyByPSIyMjgiPjxhOnM+LyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1hbGFyaWEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlIjoKICA8L2E6cz48YTpzIHI9IjI0MSI+PGE6cz48YTpzIHI9IjIyOSI+PGE6cyByPSIyMzEiPjxhOnM+PGE6cz5FbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IjwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+IE1SPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4KICAgIDwvYTpzPjxhOnMgcj0iMjM3Ij48YTpzPndoZXJlIDwvYTpzPjxhOnMgcj0iMjM3Ij48YTpzIHI9IjIzNCI+PGE6cyByPSIyMzMiPjxhOnM+TVI8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjIzNCI+PGE6cz5tZWRpY2F0aW9uPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gaW4gPC9hOnM+PGE6cyByPSIyMzYiPjxhOnMgcj0iMjM1Ij48YTpzPkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyMzYiPjxhOnM+Ik1hbGFyaWEgdmFjY2luZXMiPC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxleHByZXNzaW9uIGxvY2FsSWQ9IjI0MSIgbG9jYXRvcj0iMjU6My0yNjo1NCIgeHNpOnR5cGU9IlF1ZXJ5Ij48c291cmNlIGFsaWFzPSJNUiIgbG9jYWxJZD0iMjI5IiBsb2NhdG9yPSIyNTozLTI1OjUyIj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIGxvY2FsSWQ9IjIzMSIgbG9jYXRvcj0iMjU6My0yNTo0OSIgbmFtZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPjwvc291cmNlPjx3aGVyZSBsb2NhbElkPSIyMzciIGxvY2F0b3I9IjI2OjUtMjY6NTQiIHhzaTp0eXBlPSJJblZhbHVlU2V0Ij48c2lnbmF0dXJlIGxvY2FsSWQ9IjI0MCIgbmFtZT0idDpDb25jZXB0IiB4c2k6dHlwZT0iTmFtZWRUeXBlU3BlY2lmaWVyIi8+PGNvZGUgbGlicmFyeU5hbWU9IkZISVJIZWxwZXJzIiBsb2NhbElkPSIyMzkiIG5hbWU9IlRvQ29uY2VwdCIgeHNpOnR5cGU9IkZ1bmN0aW9uUmVmIj48b3BlcmFuZCBhc1R5cGU9ImZoaXI6Q29kZWFibGVDb25jZXB0IiBsb2NhbElkPSIyMzgiIHhzaTp0eXBlPSJBcyI+PG9wZXJhbmQgbG9jYWxJZD0iMjM0IiBsb2NhdG9yPSIyNjoxMS0yNjoyMyIgcGF0aD0ibWVkaWNhdGlvbiIgc2NvcGU9Ik1SIiB4c2k6dHlwZT0iUHJvcGVydHkiLz48L29wZXJhbmQ+PC9jb2RlPjx2YWx1ZXNldCBsaWJyYXJ5TmFtZT0iQ29uY2VwdHMiIGxvY2FsSWQ9IjIzNiIgbG9jYXRvcj0iMjY6MjgtMjY6NTQiIG5hbWU9Ik1hbGFyaWEgdmFjY2luZXMiIHByZXNlcnZlPSJ0cnVlIi8+PC93aGVyZT48L2V4cHJlc3Npb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyNDQiIGxvY2F0b3I9IjM0OjEtMzU6NzYiIG5hbWU9IlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnQgbmFtZT0iaW5wdXQiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzIi8+PGE6dCBuYW1lPSJwc2V1ZG9jb2RlIiB2YWx1ZT0iJiMzNDtQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMmIzM0OyA9ICYjMzQ7SHlwZXJzZW5zaXRpdml0eSB0byB2YWNjaW5lIGNvbXBvbmVudHMmIzM0OyIvPjxhOnQgbmFtZT0iY29kZSIgdmFsdWU9IlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMtNzIiLz48YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iSU1NWi5ENS5EVC5NYWxhcmlhIGNvbnRyYWluZGljYXRpb25zIi8+PGE6cyByPSIyNDQiPjxhOnM+LyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJIeXBlcnNlbnNpdGl2aXR5IHRvIHZhY2NpbmUgY29tcG9uZW50cyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMtNzIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULk1hbGFyaWEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzIjoKICA8L2E6cz48YTpzIHI9IjI0NiI+PGE6cyByPSIyNDUiPjxhOnM+RWxlbWVudHM8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI0NiI+PGE6cz4iVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgY29tcG9uZW50IG9mIHRoZSB2YWNjaW5lIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIGxvY2FsSWQ9IjI0NiIgbG9jYXRvcj0iMzU6My0zNTo3NiIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgY29tcG9uZW50IG9mIHRoZSB2YWNjaW5lIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPjwvZGVmPjwvc3RhdGVtZW50cz48L2xpYnJhcnk+"
  }]
}

```
