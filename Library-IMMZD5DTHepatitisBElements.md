# IMMZD5DTHepatitisBElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHepatitisBElements**

## Library: IMMZD5DTHepatitisBElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisBElements | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD5DTHepatitisBElements |

 
This library defines context-independent elements for Hepatitis B used throughout the Immunization CPG 

* * **Content:**application/elm+xml: ````Encoded data (13024 characters)````: **Id:**
  * ?: IMMZD5DTHepatitisBElements
* * **Content:**application/elm+xml: ````Encoded data (13024 characters)````: **Version:**
  * ?: 0.2.0
* * **Content:**application/elm+xml: ````Encoded data (13024 characters)````: **Url:**
  * ?: [IMMZD5DTHepatitisBElements](Library-IMMZD5DTHepatitisBElements.md)
* * **Content:**application/elm+xml: ````Encoded data (13024 characters)````: **Status:**
  * ?: draft
* * **Content:**application/elm+xml: ````Encoded data (13024 characters)````: **Date:**
  * ?: 2025-11-25 19:41:02+0000
* * **Content:**application/elm+xml: ````Encoded data (13024 characters)````: **Publisher:**
  * ?: WHO
* * **Content:**application/elm+xml: ````Encoded data (13024 characters)````: **Description:**
  * ?: This library defines context-independent elements for Hepatitis B used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHepatitisBElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisBElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTHepatitisBElements",
  "title" : "IMMZD5DTHepatitisBElements",
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
  "description" : "This library defines context-independent elements for Hepatitis B used throughout the Immunization CPG",
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
      "name" : "Draft Medication Request for Hepatitis B dose",
      "use" : "out",
      "min" : 0,
      "max" : "*",
      "type" : "MedicationRequest"
    },
    {
      "name" : "The client has history of severe allergic reactions",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    }
  ],
  "content" : [
    {
      "contentType" : "text/cql",
      "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEhlcGF0aXRpc0JFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRIZXBhdGl0aXNCRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhlcGF0aXRpcyBCIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhlcGF0aXRpcyBCIGRvc2UiOgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SCiAgICB3aGVyZSBNUi5tZWRpY2F0aW9uIGluIENvbmNlcHRzLiJIZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkhlcGF0aXRpcyBCIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgo="
    },
    {
      "contentType" : "application/elm+xml",
      "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGxpYnJhcnkgeG1sbnM9InVybjpobDctb3JnOmVsbTpyMSIgeG1sbnM6dD0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczpmaGlyPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB4bWxuczpxZG00Mz0idXJuOmhlYWx0aGl0LWdvdjpxZG06djRfMyIgeG1sbnM6cWRtNTM9InVybjpoZWFsdGhpdC1nb3Y6cWRtOnY1XzMiIHhtbG5zOmE9InVybjpobDctb3JnOmNxbC1hbm5vdGF0aW9uczpyMSIgbG9jYWxJZD0iMCI+CiAgIDxhbm5vdGF0aW9uIHRyYW5zbGF0b3JPcHRpb25zPSJFbmFibGVBbm5vdGF0aW9ucyxFbmFibGVMb2NhdG9ycyxEaXNhYmxlTGlzdERlbW90aW9uLERpc2FibGVMaXN0UHJvbW90aW9uIiBzaWduYXR1cmVMZXZlbD0iT3ZlcmxvYWRzIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUluZm8iLz4KICAgPGFubm90YXRpb24gbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiBlcnJvclR5cGU9InNlbWFudGljIiBlcnJvclNldmVyaXR5PSJ3YXJuaW5nIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+CiAgIDxhbm5vdGF0aW9uIG1lc3NhZ2U9IkFuIG9wZXJhbmQgaWRlbnRpZmllciByZWZlcmVuY2UgaXMgaGlkaW5nIGFub3RoZXIgaWRlbnRpZmllciBvZiB0aGUgc2FtZSBuYW1lLiIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgZXJyb3JTZXZlcml0eT0id2FybmluZyIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1FcnJvciIvPgogICA8YW5ub3RhdGlvbiBtZXNzYWdlPSJBbiBvcGVyYW5kIGlkZW50aWZpZXIgcmVmZXJlbmNlIGlzIGhpZGluZyBhbm90aGVyIGlkZW50aWZpZXIgb2YgdGhlIHNhbWUgbmFtZS4iIGVycm9yVHlwZT0ic2VtYW50aWMiIGVycm9yU2V2ZXJpdHk9Indhcm5pbmciIHhzaTp0eXBlPSJhOkNxbFRvRWxtRXJyb3IiLz4KICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgIDxhOnMgcj0iMjQ0Ij4KICAgICAgICAgPGE6cz4vKgogICogTGlicmFyeTogSU1NWkQ1RFRIZXBhdGl0aXNCRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUSGVwYXRpdGlzQkVsZW1lbnRzPC9hOnM+CiAgICAgIDwvYTpzPgogICA8L2Fubm90YXRpb24+CiAgIDxpZGVudGlmaWVyIGlkPSJJTU1aRDVEVEhlcGF0aXRpc0JFbGVtZW50cyIgc3lzdGVtPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zIi8+CiAgIDxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+CiAgIDx1c2luZ3M+CiAgICAgIDxkZWYgbG9jYWxJZD0iMSIgbG9jYWxJZGVudGlmaWVyPSJTeXN0ZW0iIHVyaT0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIi8+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA2IiBsb2NhdG9yPSI3OjEtNzoyNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiB1cmk9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHZlcnNpb249IjQuMC4xIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjA2Ij4KICAgICAgICAgICAgICAgPGE6cz51c2luZyA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5GSElSPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgIDwvdXNpbmdzPgogICA8aW5jbHVkZXM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhdG9yPSI4OjEtODozNSIgbG9jYWxJZGVudGlmaWVyPSJGSElSSGVscGVycyIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMDgiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+RkhJUkhlbHBlcnM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IHZlcnNpb24gJzQuMC4xJzwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMTAiIGxvY2F0b3I9IjEwOjEtMTA6MTkiIGxvY2FsSWRlbnRpZmllcj0iV0hPQ29uY2VwdHMiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvV0hPQ29uY2VwdHMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTAiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYXRvcj0iMTE6MS0xMToyNyIgbG9jYWxJZGVudGlmaWVyPSJXQyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTIiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29tbW9uPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0M8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE0IiBsb2NhdG9yPSIxMjoxLTEyOjI5IiBsb2NhbElkZW50aWZpZXI9IldFIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0VsZW1lbnRzIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE0Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPldIT0VsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0U8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE2IiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBsb2NhbElkZW50aWZpZXI9IkNvbW1vbiIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aQ29tbW9uIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE2Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPklNTVpDb21tb248L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb21tb248L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhdG9yPSIxNToxLTE1OjM2IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIxOCI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb25jZXB0czwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjAiIGxvY2F0b3I9IjE2OjEtMTY6MzYiIGxvY2FsSWRlbnRpZmllcj0iRWxlbWVudHMiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvSU1NWkVsZW1lbnRzIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjIwIj4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPklNTVpFbGVtZW50czwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gY2FsbGVkIEVsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICA8L2luY2x1ZGVzPgogICA8Y29udGV4dHM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjI1IiBsb2NhdG9yPSIxOToxLTE5OjE1IiBuYW1lPSJQYXRpZW50Ii8+CiAgIDwvY29udGV4dHM+CiAgIDxzdGF0ZW1lbnRzPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIyMyIgbG9jYXRvcj0iMTk6MS0xOToxNSIgbmFtZT0iUGF0aWVudCIgY29udGV4dD0iUGF0aWVudCI+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjIyNCIgeHNpOnR5cGU9IlNpbmdsZXRvbkZyb20iPgogICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyMjIiIGxvY2F0b3I9IjE5OjEtMTk6MTUiIGRhdGFUeXBlPSJmaGlyOlBhdGllbnQiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9QYXRpZW50IiB4c2k6dHlwZT0iUmV0cmlldmUiLz4KICAgICAgICAgPC9leHByZXNzaW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjgiIGxvY2F0b3I9IjI0OjEtMjY6NjkiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGVwYXRpdGlzIEIgZG9zZSIgY29udGV4dD0iUGF0aWVudCIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTp0IG5hbWU9ImludGVybmFsIiB2YWx1ZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIZXBhdGl0aXMgQiBkb3NlIi8+CiAgICAgICAgICAgIDxhOnMgcj0iMjI4Ij4KICAgICAgICAgICAgICAgPGE6cz4vKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGVwYXRpdGlzIEIgZG9zZQoqLwpkZWZpbmUgJnF1b3Q7RHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIZXBhdGl0aXMgQiBkb3NlJnF1b3Q7OgogIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjI0MSI+CiAgICAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjI5Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyMzEiPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPkVsZW1lbnRzLiZxdW90O0RyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCZxdW90OzwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+IE1SPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgPGE6cz4KICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzNyI+CiAgICAgICAgICAgICAgICAgICAgIDxhOnM+d2hlcmUgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM3Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyMzQiPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzMyI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+TVI8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+LjwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+bWVkaWNhdGlvbjwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+IGluIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM1Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz5Db25jZXB0czwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4uPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM2Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4mcXVvdDtIZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmVzJnF1b3Q7PC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgICAgPGV4cHJlc3Npb24gbG9jYWxJZD0iMjQxIiBsb2NhdG9yPSIyNTozLTI2OjY5IiB4c2k6dHlwZT0iUXVlcnkiPgogICAgICAgICAgICA8c291cmNlIGxvY2FsSWQ9IjIyOSIgbG9jYXRvcj0iMjU6My0yNTo1MiIgYWxpYXM9Ik1SIj4KICAgICAgICAgICAgICAgPGV4cHJlc3Npb24gbG9jYWxJZD0iMjMxIiBsb2NhdG9yPSIyNTozLTI1OjQ5IiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIGxpYnJhcnlOYW1lPSJFbGVtZW50cyIgeHNpOnR5cGU9IkV4cHJlc3Npb25SZWYiLz4KICAgICAgICAgICAgPC9zb3VyY2U+CiAgICAgICAgICAgIDx3aGVyZSBsb2NhbElkPSIyMzciIGxvY2F0b3I9IjI2OjUtMjY6NjkiIHhzaTp0eXBlPSJJblZhbHVlU2V0Ij4KICAgICAgICAgICAgICAgPHNpZ25hdHVyZSBsb2NhbElkPSIyNDAiIG5hbWU9InQ6Q29uY2VwdCIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPgogICAgICAgICAgICAgICA8Y29kZSBsb2NhbElkPSIyMzkiIG5hbWU9IlRvQ29uY2VwdCIgbGlicmFyeU5hbWU9IkZISVJIZWxwZXJzIiB4c2k6dHlwZT0iRnVuY3Rpb25SZWYiPgogICAgICAgICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyMzgiIGFzVHlwZT0iZmhpcjpDb2RlYWJsZUNvbmNlcHQiIHhzaTp0eXBlPSJBcyI+CiAgICAgICAgICAgICAgICAgICAgIDxvcGVyYW5kIGxvY2FsSWQ9IjIzNCIgbG9jYXRvcj0iMjY6MTEtMjY6MjMiIHBhdGg9Im1lZGljYXRpb24iIHNjb3BlPSJNUiIgeHNpOnR5cGU9IlByb3BlcnR5Ii8+CiAgICAgICAgICAgICAgICAgIDwvb3BlcmFuZD4KICAgICAgICAgICAgICAgPC9jb2RlPgogICAgICAgICAgICAgICA8dmFsdWVzZXQgbG9jYWxJZD0iMjM2IiBsb2NhdG9yPSIyNjoyOC0yNjo2OSIgbmFtZT0iSGVwYXRpdGlzIEItY29udGFpbmluZyB2YWNjaW5lcyIgbGlicmFyeU5hbWU9IkNvbmNlcHRzIiBwcmVzZXJ2ZT0idHJ1ZSIvPgogICAgICAgICAgICA8L3doZXJlPgogICAgICAgICA8L2V4cHJlc3Npb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjI0NCIgbG9jYXRvcj0iMzQ6MS0zNTo2NCIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIiBjb250ZXh0PSJQYXRpZW50IiBhY2Nlc3NMZXZlbD0iUHVibGljIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnQgbmFtZT0iaW5wdXQiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiLz4KICAgICAgICAgICAgPGE6dCBuYW1lPSJwc2V1ZG9jb2RlIiB2YWx1ZT0iJnF1b3Q7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJnF1b3Q7ID0gJnF1b3Q7U2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OyIvPgogICAgICAgICAgICA8YTp0IG5hbWU9ImNvZGUiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkiLz4KICAgICAgICAgICAgPGE6dCBuYW1lPSJkZWNpc2lvbiIgdmFsdWU9IklNTVouRDUuRFQuSGVwYXRpdGlzIEIgY29udHJhaW5kaWNhdGlvbnMiLz4KICAgICAgICAgICAgPGE6cyByPSIyNDQiPgogICAgICAgICAgICAgICA8YTpzPi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAmcXVvdDtQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMmcXVvdDsgPSAmcXVvdDtTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zJnF1b3Q7CkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkhlcGF0aXRpcyBCIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAmcXVvdDtUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMmcXVvdDs6CiAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ2Ij4KICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDUiPgogICAgICAgICAgICAgICAgICAgICA8YTpzPkVsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8YTpzPi48L2E6cz4KICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDYiPgogICAgICAgICAgICAgICAgICAgICA8YTpzPiZxdW90O1RoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OzwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjI0NiIgbG9jYXRvcj0iMzU6My0zNTo2NCIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+CiAgICAgIDwvZGVmPgogICA8L3N0YXRlbWVudHM+CjwvbGlicmFyeT4K"
    }
  ]
}

```
