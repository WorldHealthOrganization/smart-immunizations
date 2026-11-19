# IMMZD5DTMumpsElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMumpsElements**

## Library: IMMZD5DTMumpsElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMumpsElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:IMMZD5DTMumpsElements |

 
This library defines context-independent elements for Mumps used throughout the Immunization CPG 

* * **Content: **application/elm+xml: ````Encoded data (13064 characters)````: **Id: **
  * ?: IMMZD5DTMumpsElements
* * **Content: **application/elm+xml: ````Encoded data (13064 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (13064 characters)````: **Url: **
  * ?: [IMMZD5DTMumpsElements](Library-IMMZD5DTMumpsElements.md)
* * **Content: **application/elm+xml: ````Encoded data (13064 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (13064 characters)````: **Date: **
  * ?: 2026-11-19 08:43:48+0000
* * **Content: **application/elm+xml: ````Encoded data (13064 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (13064 characters)````: **Description: **
  * ?: This library defines context-independent elements for Mumps used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMumpsElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMumpsElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMumpsElements",
  "title" : "IMMZD5DTMumpsElements",
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
  "description" : "This library defines context-independent elements for Mumps used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Mumps dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client is currently pregnant",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has allergy to vaccine components",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has immune deficiency",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is severely immunosuppressed",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE11bXBzRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUTXVtcHNFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTXVtcHMgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTXVtcHMgZG9zZSI6CiAgRWxlbWVudHMuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIk11bXBzLWNvbnRhaW5pbmcgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJDdXJyZW50bHkgcHJlZ25hbnQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudC01MgpAZGVjaXNpb246IElNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzCkBwc2V1ZG9jb2RlOiAnIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NdW1wcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeQpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeS02MApAZGVjaXNpb246IElNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeSI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZWx5IGltbXVub3N1cHByZXNzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULk11bXBzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIgo="
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyNTkiPjxhOnM+LyoKICAqIExpYnJhcnk6IElNTVpENURUTXVtcHNFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRNdW1wc0VsZW1lbnRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxpZGVudGlmaWVyIGlkPSJJTU1aRDVEVE11bXBzRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSI3OjEtNzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI4OjEtODozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IldIT0NvbmNlcHRzIiBsb2NhdG9yPSIxMDoxLTEwOjE5IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0NvbmNlcHRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxMCI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5XSE9Db25jZXB0czwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYWxJZGVudGlmaWVyPSJXQyIgbG9jYXRvcj0iMTE6MS0xMToyNyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBXQzwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48ZGVmIGxvY2FsSWQ9IjIxNCIgbG9jYWxJZGVudGlmaWVyPSJXRSIgbG9jYXRvcj0iMTI6MS0xMjoyOSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9FbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTQiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPRWxlbWVudHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgV0U8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTYiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE2Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPklNTVpDb21tb248L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29tbW9uPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSIxNToxLTE1OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTgiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkNvbmNlcHRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIENvbmNlcHRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjIwIiBsb2NhbElkZW50aWZpZXI9IkVsZW1lbnRzIiBsb2NhdG9yPSIxNjoxLTE2OjM2IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpFbGVtZW50cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMjAiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+SU1NWkVsZW1lbnRzPC9hOnM+PC9hOnM+PGE6cz4gY2FsbGVkIEVsZW1lbnRzPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjwvaW5jbHVkZXM+PGNvbnRleHRzPjxkZWYgbG9jYWxJZD0iMjI1IiBsb2NhdG9yPSIxOToxLTE5OjE1IiBuYW1lPSJQYXRpZW50Ii8+PC9jb250ZXh0cz48c3RhdGVtZW50cz48ZGVmIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjIyMyIgbG9jYXRvcj0iMTk6MS0xOToxNSIgbmFtZT0iUGF0aWVudCI+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjI0IiB4c2k6dHlwZT0iU2luZ2xldG9uRnJvbSI+PG9wZXJhbmQgZGF0YVR5cGU9ImZoaXI6UGF0aWVudCIgbG9jYWxJZD0iMjIyIiBsb2NhdG9yPSIxOToxLTE5OjE1IiB0ZW1wbGF0ZUlkPSJodHRwOi8vaGw3Lm9yZy9maGlyL1N0cnVjdHVyZURlZmluaXRpb24vUGF0aWVudCIgeHNpOnR5cGU9IlJldHJpZXZlIi8+PC9leHByZXNzaW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjI4IiBsb2NhdG9yPSIyNDoxLTI2OjYzIiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE11bXBzIGRvc2UiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnQgbmFtZT0iaW50ZXJuYWwiIHZhbHVlPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE11bXBzIGRvc2UiLz48YTpzIHI9IjIyOCI+PGE6cz4vKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTXVtcHMgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTXVtcHMgZG9zZSI6CiAgPC9hOnM+PGE6cyByPSIyNDEiPjxhOnM+PGE6cyByPSIyMjkiPjxhOnMgcj0iMjMxIj48YTpzPjxhOnM+RWxlbWVudHMuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCI8L2E6cz48L2E6cz48L2E6cz48YTpzPiBNUjwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+CiAgICA8L2E6cz48YTpzIHI9IjIzNyI+PGE6cz53aGVyZSA8L2E6cz48YTpzIHI9IjIzNyI+PGE6cyByPSIyMzQiPjxhOnMgcj0iMjMzIj48YTpzPk1SPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyMzQiPjxhOnM+bWVkaWNhdGlvbjwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+IGluIDwvYTpzPjxhOnMgcj0iMjM2Ij48YTpzIHI9IjIzNSI+PGE6cz5Db25jZXB0czwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjM2Ij48YTpzPiJNdW1wcy1jb250YWluaW5nIHZhY2NpbmVzIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsb2NhbElkPSIyNDEiIGxvY2F0b3I9IjI1OjMtMjY6NjMiIHhzaTp0eXBlPSJRdWVyeSI+PHNvdXJjZSBhbGlhcz0iTVIiIGxvY2FsSWQ9IjIyOSIgbG9jYXRvcj0iMjU6My0yNTo1MiI+PGV4cHJlc3Npb24gbGlicmFyeU5hbWU9IkVsZW1lbnRzIiBsb2NhbElkPSIyMzEiIGxvY2F0b3I9IjI1OjMtMjU6NDkiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L3NvdXJjZT48d2hlcmUgbG9jYWxJZD0iMjM3IiBsb2NhdG9yPSIyNjo1LTI2OjYzIiB4c2k6dHlwZT0iSW5WYWx1ZVNldCI+PHNpZ25hdHVyZSBsb2NhbElkPSIyNDAiIG5hbWU9InQ6Q29uY2VwdCIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjxjb2RlIGxpYnJhcnlOYW1lPSJGSElSSGVscGVycyIgbG9jYWxJZD0iMjM5IiBuYW1lPSJUb0NvbmNlcHQiIHhzaTp0eXBlPSJGdW5jdGlvblJlZiI+PG9wZXJhbmQgYXNUeXBlPSJmaGlyOkNvZGVhYmxlQ29uY2VwdCIgbG9jYWxJZD0iMjM4IiB4c2k6dHlwZT0iQXMiPjxvcGVyYW5kIGxvY2FsSWQ9IjIzNCIgbG9jYXRvcj0iMjY6MTEtMjY6MjMiIHBhdGg9Im1lZGljYXRpb24iIHNjb3BlPSJNUiIgeHNpOnR5cGU9IlByb3BlcnR5Ii8+PC9vcGVyYW5kPjwvY29kZT48dmFsdWVzZXQgbGlicmFyeU5hbWU9IkNvbmNlcHRzIiBsb2NhbElkPSIyMzYiIGxvY2F0b3I9IjI2OjI4LTI2OjYzIiBuYW1lPSJNdW1wcy1jb250YWluaW5nIHZhY2NpbmVzIiBwcmVzZXJ2ZT0idHJ1ZSIvPjwvd2hlcmU+PC9leHByZXNzaW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjQ0IiBsb2NhdG9yPSIzNDoxLTM1OjM1IiBuYW1lPSJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6dCBuYW1lPSJpbnB1dCIgdmFsdWU9IlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50Ii8+PGE6dCBuYW1lPSJwc2V1ZG9jb2RlIiB2YWx1ZT0iJiMzNDtQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMmIzM0OyA9ICYjMzQ7Q3VycmVudGx5IHByZWduYW50JiMzNDsiLz48YTp0IG5hbWU9ImNvZGUiIHZhbHVlPSJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudC01MiIvPjxhOnQgbmFtZT0iZGVjaXNpb24iIHZhbHVlPSJJTU1aLkQ1LkRULk11bXBzIGNvbnRyYWluZGljYXRpb25zIi8+PGE6cyByPSIyNDQiPjxhOnM+LyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULk11bXBzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQiOgogIDwvYTpzPjxhOnMgcj0iMjQ2Ij48YTpzIHI9IjI0NSI+PGE6cz5FbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjQ2Ij48YTpzPiJUaGUgY2xpZW50IGlzIHByZWduYW50IjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIGxvY2FsSWQ9IjI0NiIgbG9jYXRvcj0iMzU6My0zNTozNSIgbmFtZT0iVGhlIGNsaWVudCBpcyBwcmVnbmFudCIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjI0OSIgbG9jYXRvcj0iNDM6MS00NDo2NCIgbmFtZT0iVGhlIGNsaWVudCBoYXMgYWxsZXJneSB0byB2YWNjaW5lIGNvbXBvbmVudHMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnQgbmFtZT0iaW5wdXQiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBhbGxlcmd5IHRvIHZhY2NpbmUgY29tcG9uZW50cyIvPjxhOnQgbmFtZT0icHNldWRvY29kZSIgdmFsdWU9IiYjMzQ7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJiMzNDsgPSAmIzM0O1NldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMmIzM0OyIvPjxhOnQgbmFtZT0iY29kZSIgdmFsdWU9IlRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzLTYwIi8+PGE6dCBuYW1lPSJkZWNpc2lvbiIgdmFsdWU9IklNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMiLz48YTpzIHI9IjI0OSI+PGE6cz4vKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzCkBwc2V1ZG9jb2RlOiAnIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NdW1wcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzIjoKICA8L2E6cz48YTpzIHI9IjI1MSI+PGE6cyByPSIyNTAiPjxhOnM+RWxlbWVudHM8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI1MSI+PGE6cz4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjwvYTpzPjwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48ZXhwcmVzc2lvbiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIGxvY2FsSWQ9IjI1MSIgbG9jYXRvcj0iNDQ6My00NDo2NCIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjU0IiBsb2NhdG9yPSI1MjoxLTUzOjU0IiBuYW1lPSJUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6dCBuYW1lPSJpbnB1dCIgdmFsdWU9IlRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5Ii8+PGE6dCBuYW1lPSJwc2V1ZG9jb2RlIiB2YWx1ZT0iJiMzNDtQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMmIzM0OyA9ICYjMzQ7SW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMmIzM0OyIvPjxhOnQgbmFtZT0iY29kZSIgdmFsdWU9IlRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5LTYwIi8+PGE6dCBuYW1lPSJkZWNpc2lvbiIgdmFsdWU9IklNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMiLz48YTpzIHI9IjI1NCI+PGE6cz4vKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJJbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5LTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NdW1wcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5IjoKICA8L2E6cz48YTpzIHI9IjI1NiI+PGE6cyByPSIyNTUiPjxhOnM+RWxlbWVudHM8L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI1NiI+PGE6cz4iVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiPC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxleHByZXNzaW9uIGxpYnJhcnlOYW1lPSJFbGVtZW50cyIgbG9jYWxJZD0iMjU2IiBsb2NhdG9yPSI1MzozLTUzOjU0IiBuYW1lPSJUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjI1OSIgbG9jYXRvcj0iNjE6MS02Mjo1MiIgbmFtZT0iVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTp0IG5hbWU9ImlucHV0IiB2YWx1ZT0iVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIi8+PGE6dCBuYW1lPSJwc2V1ZG9jb2RlIiB2YWx1ZT0iJiMzNDtQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMmIzM0OyA9ICYjMzQ7U2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCYjMzQ7Ii8+PGE6dCBuYW1lPSJjb2RlIiB2YWx1ZT0iVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkLTU5Ii8+PGE6dCBuYW1lPSJkZWNpc2lvbiIgdmFsdWU9IklNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMiLz48YTpzIHI9IjI1OSI+PGE6cz4vKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZC01OQpAZGVjaXNpb246IElNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQiOgogIDwvYTpzPjxhOnMgcj0iMjYxIj48YTpzIHI9IjI2MCI+PGE6cz5FbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjYxIj48YTpzPiJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQiPC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxleHByZXNzaW9uIGxpYnJhcnlOYW1lPSJFbGVtZW50cyIgbG9jYWxJZD0iMjYxIiBsb2NhdG9yPSI2MjozLTYyOjUyIiBuYW1lPSJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+PC9kZWY+PC9zdGF0ZW1lbnRzPjwvbGlicmFyeT4="
  }]
}

```
