# WHOConcepts - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHOConcepts**

## Library: WHOConcepts 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/WHOConcepts | *Version*:0.2.0 |
| Draft as of 2026-11-19 | *Computable Name*:WHOConcepts |

 
This library defines common concepts used throughout WHO SMART Guidelines content 

* * **Content: **application/elm+xml: ````Encoded data (6584 characters)````: **Id: **
  * ?: WHOConcepts
* * **Content: **application/elm+xml: ````Encoded data (6584 characters)````: **Version: **
  * ?: 0.2.0
* * **Content: **application/elm+xml: ````Encoded data (6584 characters)````: **Url: **
  * ?: [WHOConcepts](Library-WHOConcepts.md)
* * **Content: **application/elm+xml: ````Encoded data (6584 characters)````: **Status: **
  * ?: draft
* * **Content: **application/elm+xml: ````Encoded data (6584 characters)````: **Date: **
  * ?: 2026-11-19 08:10:32+0000
* * **Content: **application/elm+xml: ````Encoded data (6584 characters)````: **Publisher: **
  * ?: WHO
* * **Content: **application/elm+xml: ````Encoded data (6584 characters)````: **Description: **
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
  "date" : "2026-11-19T08:10:32+00:00",
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
    "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48bGlicmFyeSB4bWxucz0idXJuOmhsNy1vcmc6ZWxtOnIxIiB4bWxuczphPSJ1cm46aGw3LW9yZzpjcWwtYW5ub3RhdGlvbnM6cjEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIGxvY2FsSWQ9IjAiPjxhbm5vdGF0aW9uIHNpZ25hdHVyZUxldmVsPSJPdmVybG9hZHMiIHRyYW5zbGF0b3JPcHRpb25zPSJFbmFibGVBbm5vdGF0aW9ucyxFbmFibGVMb2NhdG9ycyxEaXNhYmxlTGlzdERlbW90aW9uLERpc2FibGVMaXN0UHJvbW90aW9uIiB0cmFuc2xhdG9yVmVyc2lvbj0iNC45LjAiIHhzaTp0eXBlPSJhOkNxbFRvRWxtSW5mbyIvPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjM1Ij48YTpzPmxpYnJhcnkgV0hPQ29uY2VwdHM8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGlkZW50aWZpZXIgaWQ9IldIT0NvbmNlcHRzIiBzeXN0ZW09Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMiLz48c2NoZW1hSWRlbnRpZmllciBpZD0idXJuOmhsNy1vcmc6ZWxtIiB2ZXJzaW9uPSJyMSIvPjx1c2luZ3M+PGRlZiBsb2NhbElkPSIxIiBsb2NhbElkZW50aWZpZXI9IlN5c3RlbSIgdXJpPSJ1cm46aGw3LW9yZzplbG0tdHlwZXM6cjEiIHZlcnNpb249IjEuMC4wIi8+PC91c2luZ3M+PGNvZGVTeXN0ZW1zPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgaWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvc2lkL2ljZC0xMCIgbG9jYWxJZD0iMjA2IiBsb2NhdG9yPSI0OjEtNDo1MyIgbmFtZT0iSUNELTEwIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIwNiI+PGE6cz4vLyBDb2RlIFN5c3RlbXMKY29kZXN5c3RlbSAiSUNELTEwIjogJ2h0dHA6Ly9obDcub3JnL2ZoaXIvc2lkL2ljZC0xMCc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBpZD0iaHR0cDovL3Nub21lZC5pbmZvL3NjdCIgbG9jYWxJZD0iMjA4IiBsb2NhdG9yPSI1OjEtNTo0OCIgbmFtZT0iU05PTUVELUNUIj48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIwOCI+PGE6cz5jb2Rlc3lzdGVtICJTTk9NRUQtQ1QiOiAnaHR0cDovL3Nub21lZC5pbmZvL3NjdCc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBpZD0iaHR0cDovL2xvaW5jLm9yZyIgbG9jYWxJZD0iMjEwIiBsb2NhdG9yPSI2OjEtNjozOCIgbmFtZT0iTE9JTkMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjEwIj48YTpzPmNvZGVzeXN0ZW0gIkxPSU5DIjogJ2h0dHA6Ly9sb2luYy5vcmcnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgaWQ9Imh0dHA6Ly93d3cubmxtLm5paC5nb3YvcmVzZWFyY2gvdW1scy9yeG5vcm0iIGxvY2FsSWQ9IjIxMiIgbG9jYXRvcj0iNzoxLTc6NjYiIG5hbWU9IlJ4Tm9ybSI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMTIiPjxhOnM+Y29kZXN5c3RlbSAiUnhOb3JtIjogJ2h0dHA6Ly93d3cubmxtLm5paC5nb3YvcmVzZWFyY2gvdW1scy9yeG5vcm0nPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgaWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvc2lkL2NpZWwiIGxvY2FsSWQ9IjIxNCIgbG9jYXRvcj0iODoxLTg6NDkiIG5hbWU9IkNJRUwiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE0Ij48YTpzPmNvZGVzeXN0ZW0gIkNJRUwiOiAnaHR0cDovL2hsNy5vcmcvZmhpci9zaWQvY2llbCc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBpZD0iaHR0cDovL2lkLndoby5pbnQvaWNkL3JlbGVhc2UvMTEvbW1zIiBsb2NhbElkPSIyMTYiIGxvY2F0b3I9Ijk6MS05OjU5IiBuYW1lPSJJQ0QtMTEiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE2Ij48YTpzPmNvZGVzeXN0ZW0gIklDRC0xMSI6ICdodHRwOi8vaWQud2hvLmludC9pY2QvcmVsZWFzZS8xMS9tbXMnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgaWQ9Imh0dHBzOi8vbWl0ZWwuZGltaS51bml1ZC5pdC9pY2hpLyNodHRwOi8vaWQud2hvLmludC9pY2hpIiBsb2NhbElkPSIyMTgiIGxvY2F0b3I9IjEwOjEtMTA6NzciIG5hbWU9IklDSEkiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjE4Ij48YTpzPmNvZGVzeXN0ZW0gIklDSEkiOiAnaHR0cHM6Ly9taXRlbC5kaW1pLnVuaXVkLml0L2ljaGkvI2h0dHA6Ly9pZC53aG8uaW50L2ljaGknPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgaWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvc2lkL2ljZi1ubCIgbG9jYWxJZD0iMjIwIiBsb2NhdG9yPSIxMToxLTExOjUwIiBuYW1lPSJJQ0YiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjIwIj48YTpzPmNvZGVzeXN0ZW0gIklDRiI6ICdodHRwOi8vaGw3Lm9yZy9maGlyL3NpZC9pY2YtbmwnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjwvZGVmPjwvY29kZVN5c3RlbXM+PHZhbHVlU2V0cz48ZGVmIGFjY2Vzc0xldmVsPSJQdWJsaWMiIGlkPSJodHRwOi8vZmhpci5vcmcvZ3VpZGVzL3doby9jb3JlL1ZhbHVlU2V0L3ByZWduYW5jeXN0YXR1cy12YWx1ZXMiIGxvY2FsSWQ9IjIyMiIgbG9jYXRvcj0iMTQ6MS0xNDoxMDMiIG5hbWU9IlByZWduYW5jeSBTdGF0dXMgUHJlZ25hbnQiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjIyIj48YTpzPi8vIFZhbHVTZXRzCnZhbHVlc2V0ICJQcmVnbmFuY3kgU3RhdHVzIFByZWduYW50IjogJ2h0dHA6Ly9maGlyLm9yZy9ndWlkZXMvd2hvL2NvcmUvVmFsdWVTZXQvcHJlZ25hbmN5c3RhdHVzLXZhbHVlcyc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBpZD0iaHR0cDovL2hsNy5vcmcvZmhpci9WYWx1ZVNldC9hZHZlcnNlLWV2ZW50LXR5cGUiIGxvY2FsSWQ9IjIyNCIgbG9jYXRvcj0iMTU6MS0xNTo3NiIgbmFtZT0iQWR2ZXJzZSBFdmVudHMiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjI0Ij48YTpzPnZhbHVlc2V0ICJBZHZlcnNlIEV2ZW50cyI6ICdodHRwOi8vaGw3Lm9yZy9maGlyL1ZhbHVlU2V0L2FkdmVyc2UtZXZlbnQtdHlwZSc8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PC9kZWY+PC92YWx1ZVNldHM+PGNvZGVzPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgZGlzcGxheT0iUHJlZ25hbmN5IHN0YXR1cyIgaWQ9IjgyODEwLTMiIGxvY2FsSWQ9IjIyNiIgbG9jYXRvcj0iMTc6MS0xNzo3NCIgbmFtZT0iUHJlZ25hbmN5IHN0YXR1cyI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMjYiPjxhOnM+Y29kZSAiUHJlZ25hbmN5IHN0YXR1cyI6ICc4MjgxMC0zJyBmcm9tIDwvYTpzPjxhOnMgcj0iMjI3Ij48YTpzPiJMT0lOQyI8L2E6cz48L2E6cz48YTpzPiBkaXNwbGF5ICdQcmVnbmFuY3kgc3RhdHVzJzwvYTpzPjwvYTpzPjwvYW5ub3RhdGlvbj48Y29kZVN5c3RlbSBsb2NhbElkPSIyMjciIGxvY2F0b3I9IjE3OjQxLTE3OjQ3IiBuYW1lPSJMT0lOQyIvPjwvZGVmPjxkZWYgYWNjZXNzTGV2ZWw9IlB1YmxpYyIgZGlzcGxheT0iUHJlZ25hbnQiIGlkPSJMQTE1MTczLTAiIGxvY2FsSWQ9IjIyOSIgbG9jYXRvcj0iMTg6MS0xODo2MCIgbmFtZT0iUHJlZ25hbnQiPjxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPjxhOnMgcj0iMjI5Ij48YTpzPmNvZGUgIlByZWduYW50IjogJ0xBMTUxNzMtMCcgZnJvbSA8L2E6cz48YTpzIHI9IjIzMCI+PGE6cz4iTE9JTkMiPC9hOnM+PC9hOnM+PGE6cz4gZGlzcGxheSAnUHJlZ25hbnQnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxjb2RlU3lzdGVtIGxvY2FsSWQ9IjIzMCIgbG9jYXRvcj0iMTg6MzUtMTg6NDEiIG5hbWU9IkxPSU5DIi8+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBkaXNwbGF5PSJOb3QgcHJlZ25hbnQiIGlkPSJMQTI2NjgzLTUiIGxvY2FsSWQ9IjIzMiIgbG9jYXRvcj0iMTk6MS0xOTo2OCIgbmFtZT0iTm90IHByZWduYW50Ij48YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj48YTpzIHI9IjIzMiI+PGE6cz5jb2RlICJOb3QgcHJlZ25hbnQiOiAnTEEyNjY4My01JyBmcm9tIDwvYTpzPjxhOnMgcj0iMjMzIj48YTpzPiJMT0lOQyI8L2E6cz48L2E6cz48YTpzPiBkaXNwbGF5ICdOb3QgcHJlZ25hbnQnPC9hOnM+PC9hOnM+PC9hbm5vdGF0aW9uPjxjb2RlU3lzdGVtIGxvY2FsSWQ9IjIzMyIgbG9jYXRvcj0iMTk6MzktMTk6NDUiIG5hbWU9IkxPSU5DIi8+PC9kZWY+PGRlZiBhY2Nlc3NMZXZlbD0iUHVibGljIiBkaXNwbGF5PSJVbmtub3duIiBpZD0iTEE0NDg5LTYiIGxvY2FsSWQ9IjIzNSIgbG9jYXRvcj0iMjA6MS0yMDo1NyIgbmFtZT0iVW5rbm93biI+PGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+PGE6cyByPSIyMzUiPjxhOnM+Y29kZSAiVW5rbm93biI6ICdMQTQ0ODktNicgZnJvbSA8L2E6cz48YTpzIHI9IjIzNiI+PGE6cz4iTE9JTkMiPC9hOnM+PC9hOnM+PGE6cz4gZGlzcGxheSAnVW5rbm93bic8L2E6cz48L2E6cz48L2Fubm90YXRpb24+PGNvZGVTeXN0ZW0gbG9jYWxJZD0iMjM2IiBsb2NhdG9yPSIyMDozMy0yMDozOSIgbmFtZT0iTE9JTkMiLz48L2RlZj48L2NvZGVzPjwvbGlicmFyeT4="
  }]
}

```
