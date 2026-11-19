# WHOEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHOEncounterElements**

## Library: WHOEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/WHOEncounterElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:WHOEncounterElements |

 
This library defines encounter-based elements used throughout WHO SMART Guidelines content 

* * **Content: **application/elm+xml: ````Encoded data (8916 characters)````: **Id: **
  * ?: WHOEncounterElements
* * **Content: **application/elm+xml: ````Encoded data (8916 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (8916 characters)````: **Url: **
  * ?: [WHOEncounterElements](Library-WHOEncounterElements.md)
* * **Content: **application/elm+xml: ````Encoded data (8916 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (8916 characters)````: **Date: **
  * ?: 2026-11-19 08:43:48+0000
* * **Content: **application/elm+xml: ````Encoded data (8916 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (8916 characters)````: **Description: **
  * ?: This library defines encounter-based elements used throughout WHO SMART Guidelines content



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "WHOEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/WHOEncounterElements",
  "version" : "0.2.0",
  "name" : "WHOEncounterElements",
  "title" : "WHOEncounterElements",
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
  "description" : "This library defines encounter-based elements used throughout WHO SMART Guidelines content",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Concepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library Common",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library Elements",
    "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
  }],
  "parameter" : [{
    "name" : "AsOf",
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
    "name" : "Pregnant Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  }],
  "dataRequirement" : [{
    "type" : "Patient",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "bGlicmFyeSBXSE9FbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgpwYXJhbWV0ZXIgQXNPZiBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCmRlZmluZSAiUHJlZ25hbnQgT2JzZXJ2YXRpb24iOgogIEVsZW1lbnRzLiJQcmVnbmFudCBPYnNlcnZhdGlvbiIgTwogICAgd2hlcmUgTy5lbmNvdW50ZXIucmVmZXJlbmNlcyhFbmNvdW50ZXJJZCkKICAgICAgb3IgTy5lZmZlY3RpdmUudG9JbnRlcnZhbCgpIHN0YXJ0cyBzYW1lIGRheSBvciBhZnRlciBBc09mIC0gOSBtb250aHMK"
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMzEiPjxhOnM+bGlicmFyeSBXSE9FbmNvdW50ZXJFbGVtZW50czwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48aWRlbnRpZmllciBpZD0iV0hPRW5jb3VudGVyRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSIzOjEtMzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI1OjEtNTozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSI3OjEtNzozNSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTAiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPQ29uY2VwdHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29uY2VwdHM8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTIiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSI4OjEtODozMSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBDb21tb248L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTQiIGxvY2FsSWRlbnRpZmllcj0iRWxlbWVudHMiIGxvY2F0b3I9Ijk6MS05OjM1IiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0VsZW1lbnRzIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxNCI+PGE6cz5pbmNsdWRlIDwvYTpzPjxhOnM+PGE6cz5XSE9FbGVtZW50czwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBFbGVtZW50czwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48L2RlZj48L2luY2x1ZGVzPjxwYXJhbWV0ZXJzPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgbG9jYWxJZD0iMjE2IiBsb2NhdG9yPSIxMToxLTExOjM1IiBuYW1lPSJBc09mIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIxNiI+PGE6cz5wYXJhbWV0ZXIgQXNPZiA8L2E6cz48YTpzIHI9IjIyMCI+PGE6cz5EYXRlPC9hOnM+PC9hOnM+PGE6cz4gZGVmYXVsdCA8L2E6cz48YTpzIHI9IjIxOSI+PGE6cz5Ub2RheSgpPC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxkZWZhdWx0IGxvY2FsSWQ9IjIxOSIgbG9jYXRvcj0iMTE6MjktMTE6MzUiIHhzaTp0eXBlPSJUb2RheSIvPjxwYXJhbWV0ZXJUeXBlU3BlY2lmaWVyIGxvY2FsSWQ9IjIyMCIgbG9jYXRvcj0iMTE6MTYtMTE6MTkiIG5hbWU9InQ6RGF0ZSIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgbG9jYWxJZD0iMjIyIiBsb2NhdG9yPSIxMjoxLTEyOjI4IiBuYW1lPSJFbmNvdW50ZXJJZCI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMjIiPjxhOnM+cGFyYW1ldGVyIEVuY291bnRlcklkIDwvYTpzPjxhOnMgcj0iMjIzIj48YTpzPlN0cmluZzwvYTpzPjwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48cGFyYW1ldGVyVHlwZVNwZWNpZmllciBsb2NhbElkPSIyMjMiIGxvY2F0b3I9IjEyOjIzLTEyOjI4IiBuYW1lPSJ0OlN0cmluZyIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjwvZGVmPjwvcGFyYW1ldGVycz48Y29udGV4dHM+PGRlZiBsb2NhbElkPSIyMjgiIGxvY2F0b3I9IjE0OjEtMTQ6MTUiIG5hbWU9IlBhdGllbnQiLz48L2NvbnRleHRzPjxzdGF0ZW1lbnRzPjxkZWYgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjI2IiBsb2NhdG9yPSIxNDoxLTE0OjE1IiBuYW1lPSJQYXRpZW50Ij48ZXhwcmVzc2lvbiBsb2NhbElkPSIyMjciIHhzaTp0eXBlPSJTaW5nbGV0b25Gcm9tIj48b3BlcmFuZCBkYXRhVHlwZT0iZmhpcjpQYXRpZW50IiBsb2NhbElkPSIyMjUiIGxvY2F0b3I9IjE0OjEtMTQ6MTUiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9QYXRpZW50IiB4c2k6dHlwZT0iUmV0cmlldmUiLz48L2V4cHJlc3Npb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyMzEiIGxvY2F0b3I9IjE2OjEtMTk6NzQiIG5hbWU9IlByZWduYW50IE9ic2VydmF0aW9uIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIzMSI+PGE6cz5kZWZpbmUgIlByZWduYW50IE9ic2VydmF0aW9uIjoKICA8L2E6cz48YTpzIHI9IjI1OCI+PGE6cz48YTpzIHI9IjIzMiI+PGE6cyByPSIyMzQiPjxhOnM+PGE6cz5FbGVtZW50cy4iUHJlZ25hbnQgT2JzZXJ2YXRpb24iPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4gTzwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+CiAgICA8L2E6cz48YTpzIHI9IjIzNiI+PGE6cz53aGVyZSA8L2E6cz48YTpzIHI9IjIzNiI+PGE6cyByPSIyNDAiPjxhOnMgcj0iMjM4Ij48YTpzIHI9IjIzNyI+PGE6cz5PPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyMzgiPjxhOnM+ZW5jb3VudGVyPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyNDAiPjxhOnM+cmVmZXJlbmNlcyg8L2E6cz48YTpzIHI9IjIzOSI+PGE6cz5FbmNvdW50ZXJJZDwvYTpzPjwvYTpzPjxhOnM+KTwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+CiAgICAgIG9yIDwvYTpzPjxhOnMgcj0iMjUyIj48YTpzIHI9IjI0NSI+PGE6cyByPSIyNDQiPjxhOnMgcj0iMjQzIj48YTpzPk88L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI0NCI+PGE6cz5lZmZlY3RpdmU8L2E6cz48L2E6cz48L2E6cz48YTpzPi48L2E6cz48YTpzIHI9IjI0NSI+PGE6cz50b0ludGVydmFsKCk8L2E6cz48L2E6cz48L2E6cz48YTpzIHI9IjI1MiI+IHN0YXJ0cyBzYW1lIGRheSBvciBhZnRlciA8L2E6cz48YTpzIHI9IjI0NiI+PGE6cyByPSIyNDciPjxhOnM+QXNPZjwvYTpzPjwvYTpzPjxhOnM+IC0gPC9hOnM+PGE6cyByPSIyNDgiPjxhOnM+OSBtb250aHM8L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjU4IiBsb2NhdG9yPSIxNzozLTE5Ojc0IiB4c2k6dHlwZT0iUXVlcnkiPjxzb3VyY2UgYWxpYXM9Ik8iIGxvY2FsSWQ9IjIzMiIgbG9jYXRvcj0iMTc6My0xNzozNSI+PGV4cHJlc3Npb24gbGlicmFyeU5hbWU9IkVsZW1lbnRzIiBsb2NhbElkPSIyMzQiIGxvY2F0b3I9IjE3OjMtMTc6MzMiIG5hbWU9IlByZWduYW50IE9ic2VydmF0aW9uIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPjwvc291cmNlPjx3aGVyZSBsb2NhbElkPSIyMzYiIGxvY2F0b3I9IjE4OjUtMTk6NzQiIHhzaTp0eXBlPSJPciI+PG9wZXJhbmQgbGlicmFyeU5hbWU9IkNvbW1vbiIgbG9jYWxJZD0iMjQwIiBsb2NhdG9yPSIxODoxMS0xODo0NSIgbmFtZT0icmVmZXJlbmNlcyIgeHNpOnR5cGU9IkZ1bmN0aW9uUmVmIj48c2lnbmF0dXJlIGxvY2FsSWQ9IjI0MSIgbmFtZT0iZmhpcjpSZWZlcmVuY2UiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz48c2lnbmF0dXJlIGxvY2FsSWQ9IjI0MiIgbmFtZT0idDpTdHJpbmciIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz48b3BlcmFuZCBsb2NhbElkPSIyMzgiIGxvY2F0b3I9IjE4OjExLTE4OjIxIiBwYXRoPSJlbmNvdW50ZXIiIHNjb3BlPSJPIiB4c2k6dHlwZT0iUHJvcGVydHkiLz48b3BlcmFuZCBsb2NhbElkPSIyMzkiIGxvY2F0b3I9IjE4OjM0LTE4OjQ0IiBuYW1lPSJFbmNvdW50ZXJJZCIgeHNpOnR5cGU9IlBhcmFtZXRlclJlZiIvPjwvb3BlcmFuZD48b3BlcmFuZCBsb2NhbElkPSIyNTIiIGxvY2F0b3I9IjE5OjEwLTE5Ojc0IiBwcmVjaXNpb249IkRheSIgeHNpOnR5cGU9IlNhbWVPckFmdGVyIj48c2lnbmF0dXJlIGxvY2FsSWQ9IjI1NiIgbmFtZT0idDpEYXRlVGltZSIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjxzaWduYXR1cmUgbG9jYWxJZD0iMjU3IiBuYW1lPSJ0OkRhdGVUaW1lIiB4c2k6dHlwZT0iTmFtZWRUeXBlU3BlY2lmaWVyIi8+PG9wZXJhbmQgbG9jYWxJZD0iMjUxIiBsb2NhdG9yPSIxOTozNS0xOTo0MCIgeHNpOnR5cGU9IlN0YXJ0Ij48b3BlcmFuZCBsaWJyYXJ5TmFtZT0iQ29tbW9uIiBsb2NhbElkPSIyNDUiIGxvY2F0b3I9IjE5OjEwLTE5OjMzIiBuYW1lPSJ0b0ludGVydmFsIiB4c2k6dHlwZT0iRnVuY3Rpb25SZWYiPjxvcGVyYW5kIGxvY2FsSWQ9IjI0NCIgbG9jYXRvcj0iMTk6MTAtMTk6MjAiIHBhdGg9ImVmZmVjdGl2ZSIgc2NvcGU9Ik8iIHhzaTp0eXBlPSJQcm9wZXJ0eSIvPjwvb3BlcmFuZD48L29wZXJhbmQ+PG9wZXJhbmQgbG9jYWxJZD0iMjU0IiB4c2k6dHlwZT0iVG9EYXRlVGltZSI+PHNpZ25hdHVyZSBsb2NhbElkPSIyNTUiIG5hbWU9InQ6RGF0ZSIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjxvcGVyYW5kIGxvY2FsSWQ9IjI0NiIgbG9jYXRvcj0iMTk6NjAtMTk6NzQiIHhzaTp0eXBlPSJTdWJ0cmFjdCI+PHNpZ25hdHVyZSBsb2NhbElkPSIyNDkiIG5hbWU9InQ6RGF0ZSIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjxzaWduYXR1cmUgbG9jYWxJZD0iMjUwIiBuYW1lPSJ0OlF1YW50aXR5IiB4c2k6dHlwZT0iTmFtZWRUeXBlU3BlY2lmaWVyIi8+PG9wZXJhbmQgbG9jYWxJZD0iMjQ3IiBsb2NhdG9yPSIxOTo2MC0xOTo2MyIgbmFtZT0iQXNPZiIgeHNpOnR5cGU9IlBhcmFtZXRlclJlZiIvPjxvcGVyYW5kIGxvY2FsSWQ9IjI0OCIgbG9jYXRvcj0iMTk6NjctMTk6NzQiIHVuaXQ9Im1vbnRocyIgdmFsdWU9IjkiIHhzaTp0eXBlPSJRdWFudGl0eSIvPjwvb3BlcmFuZD48L29wZXJhbmQ+PC9vcGVyYW5kPjwvd2hlcmU+PC9leHByZXNzaW9uPjwvZGVmPjwvc3RhdGVtZW50cz48L2xpYnJhcnk+"
  }]
}

```
