# WHOConcepts - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHOConcepts**

## Library: WHOConcepts 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/WHOConcepts | *Version*:0.2.0 |
| Draft as of 2026-03-24 | *Computable Name*:WHOConcepts |

 
This library defines common concepts used throughout WHO SMART Guidelines content 

* * **Content: **application/elm+xml: ````Encoded data (8992 characters)````: **Id: **
  * ?: WHOConcepts
* * **Content: **application/elm+xml: ````Encoded data (8992 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (8992 characters)````: **Url: **
  * ?: [WHOConcepts](Library-WHOConcepts.md)
* * **Content: **application/elm+xml: ````Encoded data (8992 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (8992 characters)````: **Date: **
  * ?: 2026-03-24 11:36:08+0000
* * **Content: **application/elm+xml: ````Encoded data (8992 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (8992 characters)````: **Description: **
  * ?: This library defines common concepts used throughout WHO SMART Guidelines content



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "WHOConcepts",
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
  "url" : "http://smart.who.int/immunizations/Library/WHOConcepts",
  "version" : "0.2.0",
  "name" : "WHOConcepts",
  "title" : "WHOConcepts",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-24T11:36:08+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines common concepts used throughout WHO SMART Guidelines content",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Code System ICD-10",
    "resource" : "http://hl7.org/fhir/sid/icd-10"
  },
  {
    "type" : "depends-on",
    "display" : "Code System SNOMED-CT",
    "resource" : "http://snomed.info/sct"
  },
  {
    "type" : "depends-on",
    "display" : "Code System LOINC",
    "resource" : "http://loinc.org"
  },
  {
    "type" : "depends-on",
    "display" : "Code System RxNorm",
    "resource" : "http://www.nlm.nih.gov/research/umls/rxnorm"
  },
  {
    "type" : "depends-on",
    "display" : "Code System CIEL",
    "resource" : "http://hl7.org/fhir/sid/ciel"
  },
  {
    "type" : "depends-on",
    "display" : "Code System ICD-11",
    "resource" : "http://id.who.int/icd/release/11/mms"
  },
  {
    "type" : "depends-on",
    "display" : "Code System ICHI",
    "resource" : "https://mitel.dimi.uniud.it/ichi/#http://id.who.int/ichi"
  },
  {
    "type" : "depends-on",
    "display" : "Code System ICF",
    "resource" : "http://hl7.org/fhir/sid/icf-nl"
  },
  {
    "type" : "depends-on",
    "display" : "Value Set Pregnancy Status Pregnant",
    "resource" : "http://fhir.org/guides/who/core/ValueSet/pregnancystatus-values"
  },
  {
    "type" : "depends-on",
    "display" : "Value Set Adverse Events",
    "resource" : "http://hl7.org/fhir/ValueSet/adverse-event-type"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "bGlicmFyeSBXSE9Db25jZXB0cw0KDQovLyBDb2RlIFN5c3RlbXMNCmNvZGVzeXN0ZW0gIklDRC0xMCI6ICdodHRwOi8vaGw3Lm9yZy9maGlyL3NpZC9pY2QtMTAnDQpjb2Rlc3lzdGVtICJTTk9NRUQtQ1QiOiAnaHR0cDovL3Nub21lZC5pbmZvL3NjdCcNCmNvZGVzeXN0ZW0gIkxPSU5DIjogJ2h0dHA6Ly9sb2luYy5vcmcnDQpjb2Rlc3lzdGVtICJSeE5vcm0iOiAnaHR0cDovL3d3dy5ubG0ubmloLmdvdi9yZXNlYXJjaC91bWxzL3J4bm9ybScNCmNvZGVzeXN0ZW0gIkNJRUwiOiAnaHR0cDovL2hsNy5vcmcvZmhpci9zaWQvY2llbCcNCmNvZGVzeXN0ZW0gIklDRC0xMSI6ICdodHRwOi8vaWQud2hvLmludC9pY2QvcmVsZWFzZS8xMS9tbXMnDQpjb2Rlc3lzdGVtICJJQ0hJIjogJ2h0dHBzOi8vbWl0ZWwuZGltaS51bml1ZC5pdC9pY2hpLyNodHRwOi8vaWQud2hvLmludC9pY2hpJw0KY29kZXN5c3RlbSAiSUNGIjogJ2h0dHA6Ly9obDcub3JnL2ZoaXIvc2lkL2ljZi1ubCcNCg0KLy8gVmFsdVNldHMNCnZhbHVlc2V0ICJQcmVnbmFuY3kgU3RhdHVzIFByZWduYW50IjogJ2h0dHA6Ly9maGlyLm9yZy9ndWlkZXMvd2hvL2NvcmUvVmFsdWVTZXQvcHJlZ25hbmN5c3RhdHVzLXZhbHVlcycNCnZhbHVlc2V0ICJBZHZlcnNlIEV2ZW50cyI6ICdodHRwOi8vaGw3Lm9yZy9maGlyL1ZhbHVlU2V0L2FkdmVyc2UtZXZlbnQtdHlwZScNCg0KY29kZSAiUHJlZ25hbmN5IHN0YXR1cyI6ICc4MjgxMC0zJyBmcm9tICJMT0lOQyIgZGlzcGxheSAnUHJlZ25hbmN5IHN0YXR1cycNCmNvZGUgIlByZWduYW50IjogJ0xBMTUxNzMtMCcgZnJvbSAiTE9JTkMiIGRpc3BsYXkgJ1ByZWduYW50Jw0KY29kZSAiTm90IHByZWduYW50IjogJ0xBMjY2ODMtNScgZnJvbSAiTE9JTkMiIGRpc3BsYXkgJ05vdCBwcmVnbmFudCcNCmNvZGUgIlVua25vd24iOiAnTEE0NDg5LTYnIGZyb20gIkxPSU5DIiBkaXNwbGF5ICdVbmtub3duJw0K"
  },
  {
    "contentType" : "application/elm+xml",
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGxpYnJhcnkgeG1sbnM9InVybjpobDctb3JnOmVsbTpyMSIgeG1sbnM6dD0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczpmaGlyPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB4bWxuczpxZG00Mz0idXJuOmhlYWx0aGl0LWdvdjpxZG06djRfMyIgeG1sbnM6cWRtNTM9InVybjpoZWFsdGhpdC1nb3Y6cWRtOnY1XzMiIHhtbG5zOmE9InVybjpobDctb3JnOmNxbC1hbm5vdGF0aW9uczpyMSIgbG9jYWxJZD0iMCI+CiAgIDxhbm5vdGF0aW9uIHRyYW5zbGF0b3JPcHRpb25zPSJFbmFibGVBbm5vdGF0aW9ucyxFbmFibGVMb2NhdG9ycyxEaXNhYmxlTGlzdERlbW90aW9uLERpc2FibGVMaXN0UHJvbW90aW9uIiBzaWduYXR1cmVMZXZlbD0iT3ZlcmxvYWRzIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUluZm8iLz4KICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgIDxhOnMgcj0iMjM1Ij4KICAgICAgICAgPGE6cz5saWJyYXJ5IFdIT0NvbmNlcHRzPC9hOnM+CiAgICAgIDwvYTpzPgogICA8L2Fubm90YXRpb24+CiAgIDxpZGVudGlmaWVyIGlkPSJXSE9Db25jZXB0cyIgc3lzdGVtPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zIi8+CiAgIDxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+CiAgIDx1c2luZ3M+CiAgICAgIDxkZWYgbG9jYWxJZD0iMSIgbG9jYWxJZGVudGlmaWVyPSJTeXN0ZW0iIHVyaT0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIiB2ZXJzaW9uPSIxLjAuMCIvPgogICA8L3VzaW5ncz4KICAgPGNvZGVTeXN0ZW1zPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIwNiIgbG9jYXRvcj0iNDoxLTQ6NTMiIG5hbWU9IklDRC0xMCIgaWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvc2lkL2ljZC0xMCIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIwNiI+CiAgICAgICAgICAgICAgIDxhOnM+Ly8gQ29kZSBTeXN0ZW1zCmNvZGVzeXN0ZW0gJnF1b3Q7SUNELTEwJnF1b3Q7OiAnaHR0cDovL2hsNy5vcmcvZmhpci9zaWQvaWNkLTEwJzwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMDgiIGxvY2F0b3I9IjU6MS01OjQ4IiBuYW1lPSJTTk9NRUQtQ1QiIGlkPSJodHRwOi8vc25vbWVkLmluZm8vc2N0IiBhY2Nlc3NMZXZlbD0iUHVibGljIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjA4Ij4KICAgICAgICAgICAgICAgPGE6cz5jb2Rlc3lzdGVtICZxdW90O1NOT01FRC1DVCZxdW90OzogJ2h0dHA6Ly9zbm9tZWQuaW5mby9zY3QnPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxMCIgbG9jYXRvcj0iNjoxLTY6MzgiIG5hbWU9IkxPSU5DIiBpZD0iaHR0cDovL2xvaW5jLm9yZyIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIxMCI+CiAgICAgICAgICAgICAgIDxhOnM+Y29kZXN5c3RlbSAmcXVvdDtMT0lOQyZxdW90OzogJ2h0dHA6Ly9sb2luYy5vcmcnPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYXRvcj0iNzoxLTc6NjYiIG5hbWU9IlJ4Tm9ybSIgaWQ9Imh0dHA6Ly93d3cubmxtLm5paC5nb3YvcmVzZWFyY2gvdW1scy9yeG5vcm0iIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTIiPgogICAgICAgICAgICAgICA8YTpzPmNvZGVzeXN0ZW0gJnF1b3Q7UnhOb3JtJnF1b3Q7OiAnaHR0cDovL3d3dy5ubG0ubmloLmdvdi9yZXNlYXJjaC91bWxzL3J4bm9ybSc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE0IiBsb2NhdG9yPSI4OjEtODo0OSIgbmFtZT0iQ0lFTCIgaWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvc2lkL2NpZWwiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTQiPgogICAgICAgICAgICAgICA8YTpzPmNvZGVzeXN0ZW0gJnF1b3Q7Q0lFTCZxdW90OzogJ2h0dHA6Ly9obDcub3JnL2ZoaXIvc2lkL2NpZWwnPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxNiIgbG9jYXRvcj0iOToxLTk6NTkiIG5hbWU9IklDRC0xMSIgaWQ9Imh0dHA6Ly9pZC53aG8uaW50L2ljZC9yZWxlYXNlLzExL21tcyIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIxNiI+CiAgICAgICAgICAgICAgIDxhOnM+Y29kZXN5c3RlbSAmcXVvdDtJQ0QtMTEmcXVvdDs6ICdodHRwOi8vaWQud2hvLmludC9pY2QvcmVsZWFzZS8xMS9tbXMnPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxOCIgbG9jYXRvcj0iMTA6MS0xMDo3NyIgbmFtZT0iSUNISSIgaWQ9Imh0dHBzOi8vbWl0ZWwuZGltaS51bml1ZC5pdC9pY2hpLyNodHRwOi8vaWQud2hvLmludC9pY2hpIiBhY2Nlc3NMZXZlbD0iUHVibGljIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE4Ij4KICAgICAgICAgICAgICAgPGE6cz5jb2Rlc3lzdGVtICZxdW90O0lDSEkmcXVvdDs6ICdodHRwczovL21pdGVsLmRpbWkudW5pdWQuaXQvaWNoaS8jaHR0cDovL2lkLndoby5pbnQvaWNoaSc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjIwIiBsb2NhdG9yPSIxMToxLTExOjUwIiBuYW1lPSJJQ0YiIGlkPSJodHRwOi8vaGw3Lm9yZy9maGlyL3NpZC9pY2YtbmwiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMjAiPgogICAgICAgICAgICAgICA8YTpzPmNvZGVzeXN0ZW0gJnF1b3Q7SUNGJnF1b3Q7OiAnaHR0cDovL2hsNy5vcmcvZmhpci9zaWQvaWNmLW5sJzwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgPC9jb2RlU3lzdGVtcz4KICAgPHZhbHVlU2V0cz4KICAgICAgPGRlZiBsb2NhbElkPSIyMjIiIGxvY2F0b3I9IjE0OjEtMTQ6MTAzIiBuYW1lPSJQcmVnbmFuY3kgU3RhdHVzIFByZWduYW50IiBpZD0iaHR0cDovL2ZoaXIub3JnL2d1aWRlcy93aG8vY29yZS9WYWx1ZVNldC9wcmVnbmFuY3lzdGF0dXMtdmFsdWVzIiBhY2Nlc3NMZXZlbD0iUHVibGljIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjIyIj4KICAgICAgICAgICAgICAgPGE6cz4vLyBWYWx1U2V0cwp2YWx1ZXNldCAmcXVvdDtQcmVnbmFuY3kgU3RhdHVzIFByZWduYW50JnF1b3Q7OiAnaHR0cDovL2ZoaXIub3JnL2d1aWRlcy93aG8vY29yZS9WYWx1ZVNldC9wcmVnbmFuY3lzdGF0dXMtdmFsdWVzJzwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjQiIGxvY2F0b3I9IjE1OjEtMTU6NzYiIG5hbWU9IkFkdmVyc2UgRXZlbnRzIiBpZD0iaHR0cDovL2hsNy5vcmcvZmhpci9WYWx1ZVNldC9hZHZlcnNlLWV2ZW50LXR5cGUiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMjQiPgogICAgICAgICAgICAgICA8YTpzPnZhbHVlc2V0ICZxdW90O0FkdmVyc2UgRXZlbnRzJnF1b3Q7OiAnaHR0cDovL2hsNy5vcmcvZmhpci9WYWx1ZVNldC9hZHZlcnNlLWV2ZW50LXR5cGUnPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICA8L3ZhbHVlU2V0cz4KICAgPGNvZGVzPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIyNiIgbG9jYXRvcj0iMTc6MS0xNzo3NCIgbmFtZT0iUHJlZ25hbmN5IHN0YXR1cyIgaWQ9IjgyODEwLTMiIGRpc3BsYXk9IlByZWduYW5jeSBzdGF0dXMiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMjYiPgogICAgICAgICAgICAgICA8YTpzPmNvZGUgJnF1b3Q7UHJlZ25hbmN5IHN0YXR1cyZxdW90OzogJzgyODEwLTMnIGZyb20gPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnMgcj0iMjI3Ij4KICAgICAgICAgICAgICAgICAgPGE6cz4mcXVvdDtMT0lOQyZxdW90OzwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gZGlzcGxheSAnUHJlZ25hbmN5IHN0YXR1cyc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgICAgPGNvZGVTeXN0ZW0gbG9jYWxJZD0iMjI3IiBsb2NhdG9yPSIxNzo0MS0xNzo0NyIgbmFtZT0iTE9JTkMiLz4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjI5IiBsb2NhdG9yPSIxODoxLTE4OjYwIiBuYW1lPSJQcmVnbmFudCIgaWQ9IkxBMTUxNzMtMCIgZGlzcGxheT0iUHJlZ25hbnQiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMjkiPgogICAgICAgICAgICAgICA8YTpzPmNvZGUgJnF1b3Q7UHJlZ25hbnQmcXVvdDs6ICdMQTE1MTczLTAnIGZyb20gPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnMgcj0iMjMwIj4KICAgICAgICAgICAgICAgICAgPGE6cz4mcXVvdDtMT0lOQyZxdW90OzwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gZGlzcGxheSAnUHJlZ25hbnQnPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxjb2RlU3lzdGVtIGxvY2FsSWQ9IjIzMCIgbG9jYXRvcj0iMTg6MzUtMTg6NDEiIG5hbWU9IkxPSU5DIi8+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIzMiIgbG9jYXRvcj0iMTk6MS0xOTo2OCIgbmFtZT0iTm90IHByZWduYW50IiBpZD0iTEEyNjY4My01IiBkaXNwbGF5PSJOb3QgcHJlZ25hbnQiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMzIiPgogICAgICAgICAgICAgICA8YTpzPmNvZGUgJnF1b3Q7Tm90IHByZWduYW50JnF1b3Q7OiAnTEEyNjY4My01JyBmcm9tIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjIzMyI+CiAgICAgICAgICAgICAgICAgIDxhOnM+JnF1b3Q7TE9JTkMmcXVvdDs8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGRpc3BsYXkgJ05vdCBwcmVnbmFudCc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgICAgPGNvZGVTeXN0ZW0gbG9jYWxJZD0iMjMzIiBsb2NhdG9yPSIxOTozOS0xOTo0NSIgbmFtZT0iTE9JTkMiLz4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjM1IiBsb2NhdG9yPSIyMDoxLTIwOjU3IiBuYW1lPSJVbmtub3duIiBpZD0iTEE0NDg5LTYiIGRpc3BsYXk9IlVua25vd24iIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMzUiPgogICAgICAgICAgICAgICA8YTpzPmNvZGUgJnF1b3Q7VW5rbm93biZxdW90OzogJ0xBNDQ4OS02JyBmcm9tIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjIzNiI+CiAgICAgICAgICAgICAgICAgIDxhOnM+JnF1b3Q7TE9JTkMmcXVvdDs8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGRpc3BsYXkgJ1Vua25vd24nPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxjb2RlU3lzdGVtIGxvY2FsSWQ9IjIzNiIgbG9jYXRvcj0iMjA6MzMtMjA6MzkiIG5hbWU9IkxPSU5DIi8+CiAgICAgIDwvZGVmPgogICA8L2NvZGVzPgo8L2xpYnJhcnk+Cg=="
  }]
}

```
