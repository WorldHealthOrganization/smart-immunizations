# WHOElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHOElements**

## Library: WHOElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/WHOElements | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:WHOElements |

 
This library defines context-independent elements used throughout WHO SMART Guidelines content 

* * **Content: **application/elm+xml: ````Encoded data (8544 characters)````: **Id: **
  * ?: WHOElements
* * **Content: **application/elm+xml: ````Encoded data (8544 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (8544 characters)````: **Url: **
  * ?: [WHOElements](Library-WHOElements.md)
* * **Content: **application/elm+xml: ````Encoded data (8544 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (8544 characters)````: **Date: **
  * ?: 2026-11-19 08:10:32+0000
* * **Content: **application/elm+xml: ````Encoded data (8544 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (8544 characters)````: **Description: **
  * ?: This library defines context-independent elements used throughout WHO SMART Guidelines content



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "WHOElements",
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
  "url" : "http://smart.who.int/immunizations/Library/WHOElements",
  "version" : "0.2.0",
  "name" : "WHOElements",
  "title" : "WHOElements",
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
  "description" : "This library defines context-independent elements used throughout WHO SMART Guidelines content",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Concepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library Common",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  }],
  "parameter" : [{
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Pregnancy Status Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
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
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "mustSupport" : ["code", "status"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "82810-3",
        "display" : "Pregnancy status"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "mustSupport" : ["code", "status", "value"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "82810-3",
        "display" : "Pregnancy status"
      }]
    }]
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "bGlicmFyeSBXSE9FbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgQ29tbW9uCgpjb250ZXh0IFBhdGllbnQKCmRlZmluZSAiUHJlZ25hbmN5IFN0YXR1cyBPYnNlcnZhdGlvbiI6CiAgW09ic2VydmF0aW9uOiBDb25jZXB0cy4iUHJlZ25hbmN5IHN0YXR1cyJdIE8KICAgIHdoZXJlIE8uc3RhdHVzIGluIHsgJ2ZpbmFsJywgJ2FtZW5kZWQnLCAnY29ycmVjdGVkJyB9CgpkZWZpbmUgIlByZWduYW50IE9ic2VydmF0aW9uIjoKICAiUHJlZ25hbmN5IFN0YXR1cyBPYnNlcnZhdGlvbiIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJQcmVnbmFudCIKCg=="
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOmZoaXI9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHhtbG5zOnQ9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgbG9jYWxJZD0iMCI+PGFubm90YXRpb24gc2lnbmF0dXJlTGV2ZWw9Ik92ZXJsb2FkcyIgdHJhbnNsYXRvck9wdGlvbnM9IkVuYWJsZUFubm90YXRpb25zLEVuYWJsZUxvY2F0b3JzLERpc2FibGVMaXN0RGVtb3Rpb24sRGlzYWJsZUxpc3RQcm9tb3Rpb24iIHRyYW5zbGF0b3JWZXJzaW9uPSI0LjkuMCIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1JbmZvIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24gZXJyb3JTZXZlcml0eT0id2FybmluZyIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyNTAiPjxhOnM+bGlicmFyeSBXSE9FbGVtZW50czwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48aWRlbnRpZmllciBpZD0iV0hPRWxlbWVudHMiIHN5c3RlbT0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucyIvPjxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+PHVzaW5ncz48ZGVmIGxvY2FsSWQ9IjEiIGxvY2FsSWRlbnRpZmllcj0iU3lzdGVtIiB1cmk9InVybjpobDctb3JnOmVsbS10eXBlczpyMSIgdmVyc2lvbj0iMS4wLjAiLz48ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiBsb2NhdG9yPSIzOjEtMzoyNiIgdXJpPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB2ZXJzaW9uPSI0LjAuMSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMDYiPjxhOnM+dXNpbmcgPC9hOnM+PGE6cz48YTpzPkZISVI8L2E6cz48L2E6cz48YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC91c2luZ3M+PGluY2x1ZGVzPjxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhbElkZW50aWZpZXI9IkZISVJIZWxwZXJzIiBsb2NhdG9yPSI1OjEtNTozNSIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjA4Ij48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPkZISVJIZWxwZXJzPC9hOnM+PC9hOnM+PGE6cz4gdmVyc2lvbiAnNC4wLjEnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgbG9jYWxJZD0iMjEwIiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBsb2NhdG9yPSI3OjEtNzozNSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db25jZXB0cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTAiPjxhOnM+aW5jbHVkZSA8L2E6cz48YTpzPjxhOnM+V0hPQ29uY2VwdHM8L2E6cz48L2E6cz48YTpzPiBjYWxsZWQgQ29uY2VwdHM8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBsb2NhbElkPSIyMTIiIGxvY2FsSWRlbnRpZmllcj0iQ29tbW9uIiBsb2NhdG9yPSI4OjEtODozMSIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEyIj48YTpzPmluY2x1ZGUgPC9hOnM+PGE6cz48YTpzPldIT0NvbW1vbjwvYTpzPjwvYTpzPjxhOnM+IGNhbGxlZCBDb21tb248L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC9pbmNsdWRlcz48Y29udGV4dHM+PGRlZiBsb2NhbElkPSIyMTciIGxvY2F0b3I9IjEwOjEtMTA6MTUiIG5hbWU9IlBhdGllbnQiLz48L2NvbnRleHRzPjxzdGF0ZW1lbnRzPjxkZWYgY29udGV4dD0iUGF0aWVudCIgbG9jYWxJZD0iMjE1IiBsb2NhdG9yPSIxMDoxLTEwOjE1IiBuYW1lPSJQYXRpZW50Ij48ZXhwcmVzc2lvbiBsb2NhbElkPSIyMTYiIHhzaTp0eXBlPSJTaW5nbGV0b25Gcm9tIj48b3BlcmFuZCBkYXRhVHlwZT0iZmhpcjpQYXRpZW50IiBsb2NhbElkPSIyMTQiIGxvY2F0b3I9IjEwOjEtMTA6MTUiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9QYXRpZW50IiB4c2k6dHlwZT0iUmV0cmlldmUiLz48L2V4cHJlc3Npb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBjb250ZXh0PSJQYXRpZW50IiBsb2NhbElkPSIyMjAiIGxvY2F0b3I9IjEyOjEtMTQ6NTciIG5hbWU9IlByZWduYW5jeSBTdGF0dXMgT2JzZXJ2YXRpb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjIwIj48YTpzPmRlZmluZSAiUHJlZ25hbmN5IFN0YXR1cyBPYnNlcnZhdGlvbiI6CiAgPC9hOnM+PGE6cyByPSIyNDciPjxhOnM+PGE6cyByPSIyMjEiPjxhOnMgcj0iMjI1Ij48YTpzIHI9IjIyNSI+PGE6cz5bT2JzZXJ2YXRpb246IDwvYTpzPjxhOnM+PGE6cz5Db25jZXB0cy4iUHJlZ25hbmN5IHN0YXR1cyI8L2E6cz48L2E6cz48YTpzPl08L2E6cz48L2E6cz48L2E6cz48YTpzPiBPPC9hOnM+PC9hOnM+PC9hOnM+PGE6cz4KICAgIDwvYTpzPjxhOnMgcj0iMjQ0Ij48YTpzPndoZXJlIDwvYTpzPjxhOnMgcj0iMjQ0Ij48YTpzIHI9IjIzNiI+PGE6cyByPSIyMzUiPjxhOnM+TzwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjM2Ij48YTpzPnN0YXR1czwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+IGluIDwvYTpzPjxhOnMgcj0iMjM3Ij48YTpzPnsgPC9hOnM+PGE6cyByPSIyMzgiPjxhOnM+J2ZpbmFsJzwvYTpzPjwvYTpzPjxhOnM+LCA8L2E6cz48YTpzIHI9IjI0MCI+PGE6cz4nYW1lbmRlZCc8L2E6cz48L2E6cz48YTpzPiwgPC9hOnM+PGE6cyByPSIyNDIiPjxhOnM+J2NvcnJlY3RlZCc8L2E6cz48L2E6cz48YTpzPiB9PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxleHByZXNzaW9uIGxvY2FsSWQ9IjI0NyIgbG9jYXRvcj0iMTM6My0xNDo1NyIgeHNpOnR5cGU9IlF1ZXJ5Ij48c291cmNlIGFsaWFzPSJPIiBsb2NhbElkPSIyMjEiIGxvY2F0b3I9IjEzOjMtMTM6NDYiPjxleHByZXNzaW9uIGNvZGVDb21wYXJhdG9yPSJ+IiBjb2RlUHJvcGVydHk9ImNvZGUiIGRhdGFUeXBlPSJmaGlyOk9ic2VydmF0aW9uIiBsb2NhbElkPSIyMjUiIGxvY2F0b3I9IjEzOjMtMTM6NDQiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9PYnNlcnZhdGlvbiIgeHNpOnR5cGU9IlJldHJpZXZlIj48Y29kZXMgbG9jYWxJZD0iMjMzIiB4c2k6dHlwZT0iVG9MaXN0Ij48b3BlcmFuZCBsaWJyYXJ5TmFtZT0iQ29uY2VwdHMiIGxvY2FsSWQ9IjIyNCIgbG9jYXRvcj0iMTM6MTctMTM6NDMiIG5hbWU9IlByZWduYW5jeSBzdGF0dXMiIHhzaTp0eXBlPSJDb2RlUmVmIi8+PC9jb2Rlcz48L2V4cHJlc3Npb24+PC9zb3VyY2U+PHdoZXJlIGxvY2FsSWQ9IjI0NCIgbG9jYXRvcj0iMTQ6NS0xNDo1NyIgeHNpOnR5cGU9IkluIj48b3BlcmFuZCBsaWJyYXJ5TmFtZT0iRkhJUkhlbHBlcnMiIGxvY2FsSWQ9IjI0NSIgbmFtZT0iVG9TdHJpbmciIHhzaTp0eXBlPSJGdW5jdGlvblJlZiI+PHNpZ25hdHVyZSBsb2NhbElkPSIyNDYiIG5hbWU9ImZoaXI6T2JzZXJ2YXRpb25TdGF0dXMiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz48b3BlcmFuZCBsb2NhbElkPSIyMzYiIGxvY2F0b3I9IjE0OjExLTE0OjE4IiBwYXRoPSJzdGF0dXMiIHNjb3BlPSJPIiB4c2k6dHlwZT0iUHJvcGVydHkiLz48L29wZXJhbmQ+PG9wZXJhbmQgbG9jYWxJZD0iMjM3IiBsb2NhdG9yPSIxNDoyMy0xNDo1NyIgeHNpOnR5cGU9Ikxpc3QiPjxlbGVtZW50IGxvY2FsSWQ9IjIzOCIgbG9jYXRvcj0iMTQ6MjUtMTQ6MzEiIHZhbHVlPSJmaW5hbCIgdmFsdWVUeXBlPSJ0OlN0cmluZyIgeHNpOnR5cGU9IkxpdGVyYWwiLz48ZWxlbWVudCBsb2NhbElkPSIyNDAiIGxvY2F0b3I9IjE0OjM0LTE0OjQyIiB2YWx1ZT0iYW1lbmRlZCIgdmFsdWVUeXBlPSJ0OlN0cmluZyIgeHNpOnR5cGU9IkxpdGVyYWwiLz48ZWxlbWVudCBsb2NhbElkPSIyNDIiIGxvY2F0b3I9IjE0OjQ1LTE0OjU1IiB2YWx1ZT0iY29ycmVjdGVkIiB2YWx1ZVR5cGU9InQ6U3RyaW5nIiB4c2k6dHlwZT0iTGl0ZXJhbCIvPjwvb3BlcmFuZD48L3doZXJlPjwvZXhwcmVzc2lvbj48L2RlZj48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGNvbnRleHQ9IlBhdGllbnQiIGxvY2FsSWQ9IjI1MCIgbG9jYXRvcj0iMTY6MS0xODozOSIgbmFtZT0iUHJlZ25hbnQgT2JzZXJ2YXRpb24iPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjUwIj48YTpzPmRlZmluZSAiUHJlZ25hbnQgT2JzZXJ2YXRpb24iOgogIDwvYTpzPjxhOnMgcj0iMjY2Ij48YTpzPjxhOnMgcj0iMjUxIj48YTpzIHI9IjI1MiI+PGE6cz48YTpzPiJQcmVnbmFuY3kgU3RhdHVzIE9ic2VydmF0aW9uIjwvYTpzPjwvYTpzPjwvYTpzPjxhOnM+IE88L2E6cz48L2E6cz48L2E6cz48YTpzPgogICAgPC9hOnM+PGE6cyByPSIyNTQiPjxhOnM+d2hlcmUgPC9hOnM+PGE6cyByPSIyNTQiPjxhOnMgcj0iMjU2Ij48YTpzIHI9IjI1NSI+PGE6cz5PPC9hOnM+PC9hOnM+PGE6cz4uPC9hOnM+PGE6cyByPSIyNTYiPjxhOnM+dmFsdWU8L2E6cz48L2E6cz48L2E6cz48YTpzPiB+IDwvYTpzPjxhOnMgcj0iMjU4Ij48YTpzIHI9IjI1NyI+PGE6cz5Db25jZXB0czwvYTpzPjwvYTpzPjxhOnM+LjwvYTpzPjxhOnMgcj0iMjU4Ij48YTpzPiJQcmVnbmFudCI8L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjY2IiBsb2NhdG9yPSIxNzozLTE4OjM5IiB4c2k6dHlwZT0iUXVlcnkiPjxzb3VyY2UgYWxpYXM9Ik8iIGxvY2FsSWQ9IjI1MSIgbG9jYXRvcj0iMTc6My0xNzozNCI+PGV4cHJlc3Npb24gbG9jYWxJZD0iMjUyIiBsb2NhdG9yPSIxNzozLTE3OjMyIiBuYW1lPSJQcmVnbmFuY3kgU3RhdHVzIE9ic2VydmF0aW9uIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPjwvc291cmNlPjx3aGVyZSBsb2NhbElkPSIyNTQiIGxvY2F0b3I9IjE4OjUtMTg6MzkiIHhzaTp0eXBlPSJFcXVpdmFsZW50Ij48c2lnbmF0dXJlIGxvY2FsSWQ9IjI2NCIgbmFtZT0idDpDb25jZXB0IiB4c2k6dHlwZT0iTmFtZWRUeXBlU3BlY2lmaWVyIi8+PHNpZ25hdHVyZSBsb2NhbElkPSIyNjUiIG5hbWU9InQ6Q29uY2VwdCIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPjxvcGVyYW5kIGxpYnJhcnlOYW1lPSJGSElSSGVscGVycyIgbG9jYWxJZD0iMjYwIiBuYW1lPSJUb0NvbmNlcHQiIHhzaTp0eXBlPSJGdW5jdGlvblJlZiI+PG9wZXJhbmQgYXNUeXBlPSJmaGlyOkNvZGVhYmxlQ29uY2VwdCIgbG9jYWxJZD0iMjU5IiB4c2k6dHlwZT0iQXMiPjxvcGVyYW5kIGxvY2FsSWQ9IjI1NiIgbG9jYXRvcj0iMTg6MTEtMTg6MTciIHBhdGg9InZhbHVlIiBzY29wZT0iTyIgeHNpOnR5cGU9IlByb3BlcnR5Ii8+PC9vcGVyYW5kPjwvb3BlcmFuZD48b3BlcmFuZCBsb2NhbElkPSIyNjIiIHhzaTp0eXBlPSJUb0NvbmNlcHQiPjxzaWduYXR1cmUgbG9jYWxJZD0iMjYzIiBuYW1lPSJ0OkNvZGUiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz48b3BlcmFuZCBsaWJyYXJ5TmFtZT0iQ29uY2VwdHMiIGxvY2FsSWQ9IjI1OCIgbG9jYXRvcj0iMTg6MjEtMTg6MzkiIG5hbWU9IlByZWduYW50IiB4c2k6dHlwZT0iQ29kZVJlZiIvPjwvb3BlcmFuZD48L3doZXJlPjwvZXhwcmVzc2lvbj48L2RlZj48L3N0YXRlbWVudHM+PC9saWJyYXJ5Pg=="
  }]
}

```
