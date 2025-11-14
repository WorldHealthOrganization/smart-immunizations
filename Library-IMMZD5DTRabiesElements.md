# IMMZD5DTRabiesElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTRabiesElements**

## Library: IMMZD5DTRabiesElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTRabiesElements | *Version*:0.2.0 |
| Draft as of 2025-11-14 | *Computable Name*:IMMZD5DTRabiesElements |

 
This library defines context-independent elements for Rabies used throughout the Immunization CPG 

* * **Content:**application/elm+xml: ````Encoded data (12700 characters)````: **Id:**
  * ?: IMMZD5DTRabiesElements
* * **Content:**application/elm+xml: ````Encoded data (12700 characters)````: **Version:**
  * ?: 0.2.0
* * **Content:**application/elm+xml: ````Encoded data (12700 characters)````: **Url:**
  * ?: [IMMZD5DTRabiesElements](Library-IMMZD5DTRabiesElements.md)
* * **Content:**application/elm+xml: ````Encoded data (12700 characters)````: **Status:**
  * ?: draft
* * **Content:**application/elm+xml: ````Encoded data (12700 characters)````: **Date:**
  * ?: 2025-11-14 22:57:55+0000
* * **Content:**application/elm+xml: ````Encoded data (12700 characters)````: **Publisher:**
  * ?: WHO
* * **Content:**application/elm+xml: ````Encoded data (12700 characters)````: **Description:**
  * ?: This library defines context-independent elements for Rabies used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTRabiesElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTRabiesElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTRabiesElements",
  "title" : "IMMZD5DTRabiesElements",
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
  "date" : "2025-11-14T22:57:55+00:00",
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
  "description" : "This library defines context-independent elements for Rabies used throughout the Immunization CPG",
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
      "name" : "Draft Medication Request for Rabies dose",
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
      "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFJhYmllc0VsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVFJhYmllc0VsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFJhYmllcyBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBSYWJpZXMgZG9zZSI6CiAgRWxlbWVudHMuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIgCiAgICB3aGVyZSBNUi5tZWRpY2F0aW9uIGluIENvbmNlcHRzLiJSYWJpZXMgdmFjY2luZXMiCgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBkZWNpc2lvbjogUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoK"
    },
    {
      "contentType" : "application/elm+xml",
      "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGxpYnJhcnkgeG1sbnM9InVybjpobDctb3JnOmVsbTpyMSIgeG1sbnM6dD0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczpmaGlyPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB4bWxuczpxZG00Mz0idXJuOmhlYWx0aGl0LWdvdjpxZG06djRfMyIgeG1sbnM6cWRtNTM9InVybjpoZWFsdGhpdC1nb3Y6cWRtOnY1XzMiIHhtbG5zOmE9InVybjpobDctb3JnOmNxbC1hbm5vdGF0aW9uczpyMSIgbG9jYWxJZD0iMCI+CiAgIDxhbm5vdGF0aW9uIHRyYW5zbGF0b3JPcHRpb25zPSJFbmFibGVBbm5vdGF0aW9ucyxFbmFibGVMb2NhdG9ycyxEaXNhYmxlTGlzdERlbW90aW9uLERpc2FibGVMaXN0UHJvbW90aW9uIiBzaWduYXR1cmVMZXZlbD0iT3ZlcmxvYWRzIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUluZm8iLz4KICAgPGFubm90YXRpb24gbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiBlcnJvclR5cGU9InNlbWFudGljIiBlcnJvclNldmVyaXR5PSJ3YXJuaW5nIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+CiAgIDxhbm5vdGF0aW9uIG1lc3NhZ2U9IkFuIG9wZXJhbmQgaWRlbnRpZmllciByZWZlcmVuY2UgaXMgaGlkaW5nIGFub3RoZXIgaWRlbnRpZmllciBvZiB0aGUgc2FtZSBuYW1lLiIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgZXJyb3JTZXZlcml0eT0id2FybmluZyIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1FcnJvciIvPgogICA8YW5ub3RhdGlvbiBtZXNzYWdlPSJBbiBvcGVyYW5kIGlkZW50aWZpZXIgcmVmZXJlbmNlIGlzIGhpZGluZyBhbm90aGVyIGlkZW50aWZpZXIgb2YgdGhlIHNhbWUgbmFtZS4iIGVycm9yVHlwZT0ic2VtYW50aWMiIGVycm9yU2V2ZXJpdHk9Indhcm5pbmciIHhzaTp0eXBlPSJhOkNxbFRvRWxtRXJyb3IiLz4KICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgIDxhOnMgcj0iMjQ0Ij4KICAgICAgICAgPGE6cz4vKgogICogTGlicmFyeTogSU1NWkQ1RFRSYWJpZXNFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRSYWJpZXNFbGVtZW50czwvYTpzPgogICAgICA8L2E6cz4KICAgPC9hbm5vdGF0aW9uPgogICA8aWRlbnRpZmllciBpZD0iSU1NWkQ1RFRSYWJpZXNFbGVtZW50cyIgc3lzdGVtPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zIi8+CiAgIDxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+CiAgIDx1c2luZ3M+CiAgICAgIDxkZWYgbG9jYWxJZD0iMSIgbG9jYWxJZGVudGlmaWVyPSJTeXN0ZW0iIHVyaT0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIi8+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA2IiBsb2NhdG9yPSI3OjEtNzoyNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiB1cmk9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHZlcnNpb249IjQuMC4xIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjA2Ij4KICAgICAgICAgICAgICAgPGE6cz51c2luZyA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5GSElSPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgIDwvdXNpbmdzPgogICA8aW5jbHVkZXM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhdG9yPSI4OjEtODozNSIgbG9jYWxJZGVudGlmaWVyPSJGSElSSGVscGVycyIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMDgiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+RkhJUkhlbHBlcnM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IHZlcnNpb24gJzQuMC4xJzwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMTAiIGxvY2F0b3I9IjEwOjEtMTA6MTkiIGxvY2FsSWRlbnRpZmllcj0iV0hPQ29uY2VwdHMiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvV0hPQ29uY2VwdHMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTAiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYXRvcj0iMTE6MS0xMToyNyIgbG9jYWxJZGVudGlmaWVyPSJXQyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTIiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29tbW9uPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0M8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE0IiBsb2NhdG9yPSIxMjoxLTEyOjI5IiBsb2NhbElkZW50aWZpZXI9IldFIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0VsZW1lbnRzIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE0Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPldIT0VsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0U8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE2IiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBsb2NhbElkZW50aWZpZXI9IkNvbW1vbiIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aQ29tbW9uIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE2Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPklNTVpDb21tb248L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb21tb248L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhdG9yPSIxNToxLTE1OjM2IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIxOCI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb25jZXB0czwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjAiIGxvY2F0b3I9IjE2OjEtMTY6MzYiIGxvY2FsSWRlbnRpZmllcj0iRWxlbWVudHMiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvSU1NWkVsZW1lbnRzIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjIwIj4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPklNTVpFbGVtZW50czwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gY2FsbGVkIEVsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICA8L2luY2x1ZGVzPgogICA8Y29udGV4dHM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjI1IiBsb2NhdG9yPSIxODoxLTE4OjE1IiBuYW1lPSJQYXRpZW50Ii8+CiAgIDwvY29udGV4dHM+CiAgIDxzdGF0ZW1lbnRzPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIyMyIgbG9jYXRvcj0iMTg6MS0xODoxNSIgbmFtZT0iUGF0aWVudCIgY29udGV4dD0iUGF0aWVudCI+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjIyNCIgeHNpOnR5cGU9IlNpbmdsZXRvbkZyb20iPgogICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyMjIiIGxvY2F0b3I9IjE4OjEtMTg6MTUiIGRhdGFUeXBlPSJmaGlyOlBhdGllbnQiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9QYXRpZW50IiB4c2k6dHlwZT0iUmV0cmlldmUiLz4KICAgICAgICAgPC9leHByZXNzaW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjgiIGxvY2F0b3I9IjIzOjEtMjU6NTMiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUmFiaWVzIGRvc2UiIGNvbnRleHQ9IlBhdGllbnQiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6dCBuYW1lPSJpbnRlcm5hbCIgdmFsdWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUmFiaWVzIGRvc2UiLz4KICAgICAgICAgICAgPGE6cyByPSIyMjgiPgogICAgICAgICAgICAgICA8YTpzPi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBSYWJpZXMgZG9zZQoqLwpkZWZpbmUgJnF1b3Q7RHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBSYWJpZXMgZG9zZSZxdW90OzoKICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cyByPSIyNDEiPgogICAgICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIyOSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjMxIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz5FbGVtZW50cy4mcXVvdDtEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQmcXVvdDs8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzPiBNUjwvYTpzPgogICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+IAogICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM3Ij4KICAgICAgICAgICAgICAgICAgICAgPGE6cz53aGVyZSA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyMzciPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjIzNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjMzIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz5NUjwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4uPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM0Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz5tZWRpY2F0aW9uPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4gaW4gPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjM2Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyMzUiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPkNvbmNlcHRzPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPi48L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyMzYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPiZxdW90O1JhYmllcyB2YWNjaW5lcyZxdW90OzwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjI0MSIgbG9jYXRvcj0iMjQ6My0yNTo1MyIgeHNpOnR5cGU9IlF1ZXJ5Ij4KICAgICAgICAgICAgPHNvdXJjZSBsb2NhbElkPSIyMjkiIGxvY2F0b3I9IjI0OjMtMjQ6NTIiIGFsaWFzPSJNUiI+CiAgICAgICAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjIzMSIgbG9jYXRvcj0iMjQ6My0yNDo0OSIgbmFtZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBsaWJyYXJ5TmFtZT0iRWxlbWVudHMiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+CiAgICAgICAgICAgIDwvc291cmNlPgogICAgICAgICAgICA8d2hlcmUgbG9jYWxJZD0iMjM3IiBsb2NhdG9yPSIyNTo1LTI1OjUzIiB4c2k6dHlwZT0iSW5WYWx1ZVNldCI+CiAgICAgICAgICAgICAgIDxzaWduYXR1cmUgbG9jYWxJZD0iMjQwIiBuYW1lPSJ0OkNvbmNlcHQiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz4KICAgICAgICAgICAgICAgPGNvZGUgbG9jYWxJZD0iMjM5IiBuYW1lPSJUb0NvbmNlcHQiIGxpYnJhcnlOYW1lPSJGSElSSGVscGVycyIgeHNpOnR5cGU9IkZ1bmN0aW9uUmVmIj4KICAgICAgICAgICAgICAgICAgPG9wZXJhbmQgbG9jYWxJZD0iMjM4IiBhc1R5cGU9ImZoaXI6Q29kZWFibGVDb25jZXB0IiB4c2k6dHlwZT0iQXMiPgogICAgICAgICAgICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyMzQiIGxvY2F0b3I9IjI1OjExLTI1OjIzIiBwYXRoPSJtZWRpY2F0aW9uIiBzY29wZT0iTVIiIHhzaTp0eXBlPSJQcm9wZXJ0eSIvPgogICAgICAgICAgICAgICAgICA8L29wZXJhbmQ+CiAgICAgICAgICAgICAgIDwvY29kZT4KICAgICAgICAgICAgICAgPHZhbHVlc2V0IGxvY2FsSWQ9IjIzNiIgbG9jYXRvcj0iMjU6MjgtMjU6NTMiIG5hbWU9IlJhYmllcyB2YWNjaW5lcyIgbGlicmFyeU5hbWU9IkNvbmNlcHRzIiBwcmVzZXJ2ZT0idHJ1ZSIvPgogICAgICAgICAgICA8L3doZXJlPgogICAgICAgICA8L2V4cHJlc3Npb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjI0NCIgbG9jYXRvcj0iMzM6MS0zNDo2NCIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIiBjb250ZXh0PSJQYXRpZW50IiBhY2Nlc3NMZXZlbD0iUHVibGljIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnQgbmFtZT0iaW5wdXQiIHZhbHVlPSJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiLz4KICAgICAgICAgICAgPGE6dCBuYW1lPSJwc2V1ZG9jb2RlIiB2YWx1ZT0iJnF1b3Q7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJnF1b3Q7ID0gJnF1b3Q7U2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OyIvPgogICAgICAgICAgICA8YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIi8+CiAgICAgICAgICAgIDxhOnMgcj0iMjQ0Ij4KICAgICAgICAgICAgICAgPGE6cz4vKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogJnF1b3Q7UG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zJnF1b3Q7ID0gJnF1b3Q7U2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OwpAZGVjaXNpb246IFBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgJnF1b3Q7VGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zJnF1b3Q7OgogIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjI0NiI+CiAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ1Ij4KICAgICAgICAgICAgICAgICAgICAgPGE6cz5FbGVtZW50czwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgPGE6cz4uPC9hOnM+CiAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ2Ij4KICAgICAgICAgICAgICAgICAgICAgPGE6cz4mcXVvdDtUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMmcXVvdDs8L2E6cz4KICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICAgICA8ZXhwcmVzc2lvbiBsb2NhbElkPSIyNDYiIGxvY2F0b3I9IjM0OjMtMzQ6NjQiIG5hbWU9IlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIgbGlicmFyeU5hbWU9IkVsZW1lbnRzIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPgogICAgICA8L2RlZj4KICAgPC9zdGF0ZW1lbnRzPgo8L2xpYnJhcnk+Cg=="
    }
  ]
}

```
