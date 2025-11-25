# IMMZD5DTHibElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHibElements**

## Library: IMMZD5DTHibElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHibElements | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD5DTHibElements |

 
This library defines context-independent elements for Hib used throughout the Immunization CPG 

* * **Content:**application/elm+xml: ````Encoded data (12932 characters)````: **Id:**
  * ?: IMMZD5DTHibElements
* * **Content:**application/elm+xml: ````Encoded data (12932 characters)````: **Version:**
  * ?: 0.2.0
* * **Content:**application/elm+xml: ````Encoded data (12932 characters)````: **Url:**
  * ?: [IMMZD5DTHibElements](Library-IMMZD5DTHibElements.md)
* * **Content:**application/elm+xml: ````Encoded data (12932 characters)````: **Status:**
  * ?: draft
* * **Content:**application/elm+xml: ````Encoded data (12932 characters)````: **Date:**
  * ?: 2025-11-25 19:41:02+0000
* * **Content:**application/elm+xml: ````Encoded data (12932 characters)````: **Publisher:**
  * ?: WHO
* * **Content:**application/elm+xml: ````Encoded data (12932 characters)````: **Description:**
  * ?: This library defines context-independent elements for Hib used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHibElements",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablelibrary",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablelibrary",
      "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library",
      "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
      "valueCode" : "computable"
    }
  ],
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHibElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTHibElements",
  "title" : "IMMZD5DTHibElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/library-type",
        "code" : "logic-library"
      }
    ]
  },
  "date" : "2025-11-25T19:41:02+00:00",
  "publisher" : "WHO",
  "contact" : [
    {
      "name" : "WHO",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://who.int"
        }
      ]
    }
  ],
  "description" : "This library defines context-independent elements for Hib used throughout the Immunization CPG",
  "relatedArtifact" : [
    {
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
    }
  ],
  "parameter" : [
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
    }
  ],
  "content" : [
    {
      "contentType" : "text/cql",
      "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEhpYkVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVEhpYkVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIaWIgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGliIGRvc2UiOgoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUiAKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkhpYi1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5IaWIgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIK"
    },
    {
      "contentType" : "application/elm+xml",
      "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGxpYnJhcnkgeG1sbnM9InVybjpobDctb3JnOmVsbTpyMSIgeG1sbnM6dD0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczpmaGlyPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB4bWxuczpxZG00Mz0idXJuOmhlYWx0aGl0LWdvdjpxZG06djRfMyIgeG1sbnM6cWRtNTM9InVybjpoZWFsdGhpdC1nb3Y6cWRtOnY1XzMiIHhtbG5zOmE9InVybjpobDctb3JnOmNxbC1hbm5vdGF0aW9uczpyMSIgbG9jYWxJZD0iMCI+CiAgIDxhbm5vdGF0aW9uIHRyYW5zbGF0b3JPcHRpb25zPSJFbmFibGVBbm5vdGF0aW9ucyxFbmFibGVMb2NhdG9ycyxEaXNhYmxlTGlzdERlbW90aW9uLERpc2FibGVMaXN0UHJvbW90aW9uIiBzaWduYXR1cmVMZXZlbD0iT3ZlcmxvYWRzIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUluZm8iLz4KICAgPGFubm90YXRpb24gbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiBlcnJvclR5cGU9InNlbWFudGljIiBlcnJvclNldmVyaXR5PSJ3YXJuaW5nIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+CiAgIDxhbm5vdGF0aW9uIG1lc3NhZ2U9IkFuIG9wZXJhbmQgaWRlbnRpZmllciByZWZlcmVuY2UgaXMgaGlkaW5nIGFub3RoZXIgaWRlbnRpZmllciBvZiB0aGUgc2FtZSBuYW1lLiIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgZXJyb3JTZXZlcml0eT0id2FybmluZyIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1FcnJvciIvPgogICA8YW5ub3RhdGlvbiBtZXNzYWdlPSJBbiBvcGVyYW5kIGlkZW50aWZpZXIgcmVmZXJlbmNlIGlzIGhpZGluZyBhbm90aGVyIGlkZW50aWZpZXIgb2YgdGhlIHNhbWUgbmFtZS4iIGVycm9yVHlwZT0ic2VtYW50aWMiIGVycm9yU2V2ZXJpdHk9Indhcm5pbmciIHhzaTp0eXBlPSJhOkNxbFRvRWxtRXJyb3IiLz4KICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgIDxhOnMgcj0iMjQ0Ij4KICAgICAgICAgPGE6cz4vKgogICogTGlicmFyeTogSU1NWkQ1RFRIaWJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRIaWJFbGVtZW50czwvYTpzPgogICAgICA8L2E6cz4KICAgPC9hbm5vdGF0aW9uPgogICA8aWRlbnRpZmllciBpZD0iSU1NWkQ1RFRIaWJFbGVtZW50cyIgc3lzdGVtPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zIi8+CiAgIDxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+CiAgIDx1c2luZ3M+CiAgICAgIDxkZWYgbG9jYWxJZD0iMSIgbG9jYWxJZGVudGlmaWVyPSJTeXN0ZW0iIHVyaT0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIi8+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA2IiBsb2NhdG9yPSI3OjEtNzoyNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiB1cmk9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHZlcnNpb249IjQuMC4xIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjA2Ij4KICAgICAgICAgICAgICAgPGE6cz51c2luZyA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5GSElSPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgIDwvdXNpbmdzPgogICA8aW5jbHVkZXM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhdG9yPSI4OjEtODozNSIgbG9jYWxJZGVudGlmaWVyPSJGSElSSGVscGVycyIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMDgiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+RkhJUkhlbHBlcnM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IHZlcnNpb24gJzQuMC4xJzwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMTAiIGxvY2F0b3I9IjEwOjEtMTA6MTkiIGxvY2FsSWRlbnRpZmllcj0iV0hPQ29uY2VwdHMiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvV0hPQ29uY2VwdHMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTAiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYXRvcj0iMTE6MS0xMToyNyIgbG9jYWxJZGVudGlmaWVyPSJXQyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTIiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29tbW9uPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0M8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE0IiBsb2NhdG9yPSIxMjoxLTEyOjI5IiBsb2NhbElkZW50aWZpZXI9IldFIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0VsZW1lbnRzIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE0Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPldIT0VsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0U8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE2IiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBsb2NhbElkZW50aWZpZXI9IkNvbW1vbiIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aQ29tbW9uIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE2Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPklNTVpDb21tb248L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb21tb248L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhdG9yPSIxNToxLTE1OjM2IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIxOCI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb25jZXB0czwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjAiIGxvY2F0b3I9IjE2OjEtMTY6MzYiIGxvY2FsSWRlbnRpZmllcj0iRWxlbWVudHMiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvSU1NWkVsZW1lbnRzIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjIwIj4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPklNTVpFbGVtZW50czwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gY2FsbGVkIEVsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICA8L2luY2x1ZGVzPgogICA8Y29udGV4dHM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjI1IiBsb2NhdG9yPSIxOToxLTE5OjE1IiBuYW1lPSJQYXRpZW50Ii8+CiAgIDwvY29udGV4dHM+CiAgIDxzdGF0ZW1lbnRzPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIyMyIgbG9jYXRvcj0iMTk6MS0xOToxNSIgbmFtZT0iUGF0aWVudCIgY29udGV4dD0iUGF0aWVudCI+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjIyNCIgeHNpOnR5cGU9IlNpbmdsZXRvbkZyb20iPgogICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyMjIiIGxvY2F0b3I9IjE5OjEtMTk6MTUiIGRhdGFUeXBlPSJmaGlyOlBhdGllbnQiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9QYXRpZW50IiB4c2k6dHlwZT0iUmV0cmlldmUiLz4KICAgICAgICAgPC9leHByZXNzaW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjgiIGxvY2F0b3I9IjI0OjEtMjc6NjEiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGliIGRvc2UiIGNvbnRleHQ9IlBhdGllbnQiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6dCBuYW1lPSJpbnRlcm5hbCIgdmFsdWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGliIGRvc2UiLz4KICAgICAgICAgICAgPGE6cyByPSIyMjgiPgogICAgICAgICAgICAgICA8YTpzPi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIaWIgZG9zZQoqLwpkZWZpbmUgJnF1b3Q7RHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIaWIgZG9zZSZxdW90OzoKCiAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnMgcj0iMjQxIj4KICAgICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyMjkiPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzMSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+RWxlbWVudHMuJnF1b3Q7RHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50JnF1b3Q7PC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4gTVI8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8YTpzPiAKICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzNyI+CiAgICAgICAgICAgICAgICAgICAgIDxhOnM+d2hlcmUgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM3Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyMzQiPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzMyI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+TVI8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+LjwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+bWVkaWNhdGlvbjwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+IGluIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM1Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz5Db25jZXB0czwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4uPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM2Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4mcXVvdDtIaWItY29udGFpbmluZyB2YWNjaW5lcyZxdW90OzwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjI0MSIgbG9jYXRvcj0iMjY6My0yNzo2MSIgeHNpOnR5cGU9IlF1ZXJ5Ij4KICAgICAgICAgICAgPHNvdXJjZSBsb2NhbElkPSIyMjkiIGxvY2F0b3I9IjI2OjMtMjY6NTIiIGFsaWFzPSJNUiI+CiAgICAgICAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjIzMSIgbG9jYXRvcj0iMjY6My0yNjo0OSIgbmFtZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+CiAgICAgICAgICAgIDwvc291cmNlPgogICAgICAgICAgICA8d2hlcmUgbG9jYWxJZD0iMjM3IiBsb2NhdG9yPSIyNzo1LTI3OjYxIiB4c2k6dHlwZT0iSW5WYWx1ZVNldCI+CiAgICAgICAgICAgICAgIDxzaWduYXR1cmUgbG9jYWxJZD0iMjQwIiBuYW1lPSJ0OkNvbmNlcHQiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz4KICAgICAgICAgICAgICAgPGNvZGUgbG9jYWxJZD0iMjM5IiBuYW1lPSJUb0NvbmNlcHQiIGxpYnJhcnlOYW1lPSJGSElSSGVscGVycyIgeHNpOnR5cGU9IkZ1bmN0aW9uUmVmIj4KICAgICAgICAgICAgICAgICAgPG9wZXJhbmQgbG9jYWxJZD0iMjM4IiBhc1R5cGU9ImZoaXI6Q29kZWFibGVDb25jZXB0IiB4c2k6dHlwZT0iQXMiPgogICAgICAgICAgICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyMzQiIGxvY2F0b3I9IjI3OjExLTI3OjIzIiBwYXRoPSJtZWRpY2F0aW9uIiBzY29wZT0iTVIiIHhzaTp0eXBlPSJQcm9wZXJ0eSIvPgogICAgICAgICAgICAgICAgICA8L29wZXJhbmQ+CiAgICAgICAgICAgICAgIDwvY29kZT4KICAgICAgICAgICAgICAgPHZhbHVlc2V0IGxvY2FsSWQ9IjIzNiIgbG9jYXRvcj0iMjc6MjgtMjc6NjEiIG5hbWU9IkhpYi1jb250YWluaW5nIHZhY2NpbmVzIiBsaWJyYXJ5TmFtZT0iQ29uY2VwdHMiIHByZXNlcnZlPSJ0cnVlIi8+CiAgICAgICAgICAgIDwvd2hlcmU+CiAgICAgICAgIDwvZXhwcmVzc2lvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjQ0IiBsb2NhdG9yPSIzNToxLTM2OjY0IiBuYW1lPSJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIgY29udGV4dD0iUGF0aWVudCIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTp0IG5hbWU9ImlucHV0IiB2YWx1ZT0iVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiLz4KICAgICAgICAgICAgPGE6dCBuYW1lPSJwc2V1ZG9jb2RlIiB2YWx1ZT0iJnF1b3Q7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJnF1b3Q7ID0gJnF1b3Q7U2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OyIvPgogICAgICAgICAgICA8YTp0IG5hbWU9ImNvZGUiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OSIvPgogICAgICAgICAgICA8YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iSU1NWi5ENS5EVC5IaWIgY29udHJhaW5kaWNhdGlvbnMiLz4KICAgICAgICAgICAgPGE6cyByPSIyNDQiPgogICAgICAgICAgICAgICA8YTpzPi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICZxdW90O1BvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyZxdW90OyA9ICZxdW90O1NldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMmcXVvdDsKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5IaWIgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICZxdW90O1RoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zJnF1b3Q7OgogIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjI0NiI+CiAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ1Ij4KICAgICAgICAgICAgICAgICAgICAgPGE6cz5FbGVtZW50czwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgPGE6cz4uPC9hOnM+CiAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ2Ij4KICAgICAgICAgICAgICAgICAgICAgPGE6cz4mcXVvdDtUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMmcXVvdDs8L2E6cz4KICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICAgICA8ZXhwcmVzc2lvbiBsb2NhbElkPSIyNDYiIGxvY2F0b3I9IjM2OjMtMzY6NjQiIG5hbWU9IlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIgbGlicmFyeU5hbWU9IkVsZW1lbnRzIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPgogICAgICA8L2RlZj4KICAgPC9zdGF0ZW1lbnRzPgo8L2xpYnJhcnk+Cg=="
    }
  ]
}

```
