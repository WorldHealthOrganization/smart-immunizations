# IMMZD5DTMeningococcalEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMeningococcalEncounterElements**

## Library: IMMZD5DTMeningococcalEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalEncounterElements | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD5DTMeningococcalEncounterElements |

 
This library defines encounter-based elements for Meningococcal used throughout the Immunization CPG 

* * **Content:**application/elm+xml: ````Encoded data (15268 characters)````: **Id:**
  * ?: IMMZD5DTMeningococcalEncounterElements
* * **Content:**application/elm+xml: ````Encoded data (15268 characters)````: **Version:**
  * ?: 0.2.0
* * **Content:**application/elm+xml: ````Encoded data (15268 characters)````: **Url:**
  * ?: [IMMZD5DTMeningococcalEncounterElements](Library-IMMZD5DTMeningococcalEncounterElements.md)
* * **Content:**application/elm+xml: ````Encoded data (15268 characters)````: **Status:**
  * ?: draft
* * **Content:**application/elm+xml: ````Encoded data (15268 characters)````: **Date:**
  * ?: 2025-11-25 19:41:02+0000
* * **Content:**application/elm+xml: ````Encoded data (15268 characters)````: **Publisher:**
  * ?: WHO
* * **Content:**application/elm+xml: ````Encoded data (15268 characters)````: **Description:**
  * ?: This library defines encounter-based elements for Meningococcal used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMeningococcalEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMeningococcalEncounterElements",
  "title" : "IMMZD5DTMeningococcalEncounterElements",
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
  "description" : "This library defines encounter-based elements for Meningococcal used throughout the Immunization CPG",
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
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library MeningococcalElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalElements"
    }
  ],
  "parameter" : [
    {
      "name" : "Today",
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
      "name" : "Draft Medication Request for Meningococcal dose",
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
      "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE1lbmluZ29jb2NjYWxFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRNZW5pbmdvY29jY2FsRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRNZW5pbmdvY29jY2FsRWxlbWVudHMgY2FsbGVkIE1lbmluZ29jb2NjYWxFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1lbmluZ29jb2NjYWwgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWVuaW5nb2NvY2NhbCBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIk1lbmluZ29jb2NjYWwgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OQpAZGVjaXNpb246IElNTVouRDUuRFQuTWVuaW5nb2NvY2NhbCBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCg=="
    },
    {
      "contentType" : "application/elm+xml",
      "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGxpYnJhcnkgeG1sbnM9InVybjpobDctb3JnOmVsbTpyMSIgeG1sbnM6dD0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczpmaGlyPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB4bWxuczpxZG00Mz0idXJuOmhlYWx0aGl0LWdvdjpxZG06djRfMyIgeG1sbnM6cWRtNTM9InVybjpoZWFsdGhpdC1nb3Y6cWRtOnY1XzMiIHhtbG5zOmE9InVybjpobDctb3JnOmNxbC1hbm5vdGF0aW9uczpyMSIgbG9jYWxJZD0iMCI+CiAgIDxhbm5vdGF0aW9uIHRyYW5zbGF0b3JPcHRpb25zPSJFbmFibGVBbm5vdGF0aW9ucyxFbmFibGVMb2NhdG9ycyxEaXNhYmxlTGlzdERlbW90aW9uLERpc2FibGVMaXN0UHJvbW90aW9uIiBzaWduYXR1cmVMZXZlbD0iT3ZlcmxvYWRzIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUluZm8iLz4KICAgPGFubm90YXRpb24gbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiBlcnJvclR5cGU9InNlbWFudGljIiBlcnJvclNldmVyaXR5PSJ3YXJuaW5nIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+CiAgIDxhbm5vdGF0aW9uIG1lc3NhZ2U9IkFuIG9wZXJhbmQgaWRlbnRpZmllciByZWZlcmVuY2UgaXMgaGlkaW5nIGFub3RoZXIgaWRlbnRpZmllciBvZiB0aGUgc2FtZSBuYW1lLiIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgZXJyb3JTZXZlcml0eT0id2FybmluZyIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1FcnJvciIvPgogICA8YW5ub3RhdGlvbiBtZXNzYWdlPSJBbiBvcGVyYW5kIGlkZW50aWZpZXIgcmVmZXJlbmNlIGlzIGhpZGluZyBhbm90aGVyIGlkZW50aWZpZXIgb2YgdGhlIHNhbWUgbmFtZS4iIGVycm9yVHlwZT0ic2VtYW50aWMiIGVycm9yU2V2ZXJpdHk9Indhcm5pbmciIHhzaTp0eXBlPSJhOkNxbFRvRWxtRXJyb3IiLz4KICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgIDxhOnMgcj0iMjU1Ij4KICAgICAgICAgPGE6cz4vKgogICogTGlicmFyeTogSU1NWkQ1RFRNZW5pbmdvY29jY2FsRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUTWVuaW5nb2NvY2NhbEVuY291bnRlckVsZW1lbnRzPC9hOnM+CiAgICAgIDwvYTpzPgogICA8L2Fubm90YXRpb24+CiAgIDxpZGVudGlmaWVyIGlkPSJJTU1aRDVEVE1lbmluZ29jb2NjYWxFbmNvdW50ZXJFbGVtZW50cyIgc3lzdGVtPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zIi8+CiAgIDxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+CiAgIDx1c2luZ3M+CiAgICAgIDxkZWYgbG9jYWxJZD0iMSIgbG9jYWxJZGVudGlmaWVyPSJTeXN0ZW0iIHVyaT0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIi8+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA2IiBsb2NhdG9yPSI3OjEtNzoyNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiB1cmk9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHZlcnNpb249IjQuMC4xIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjA2Ij4KICAgICAgICAgICAgICAgPGE6cz51c2luZyA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5GSElSPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgIDwvdXNpbmdzPgogICA8aW5jbHVkZXM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhdG9yPSI4OjEtODozNSIgbG9jYWxJZGVudGlmaWVyPSJGSElSSGVscGVycyIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMDgiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+RkhJUkhlbHBlcnM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IHZlcnNpb24gJzQuMC4xJzwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMTAiIGxvY2F0b3I9IjEwOjEtMTA6MTkiIGxvY2FsSWRlbnRpZmllcj0iV0hPQ29uY2VwdHMiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvV0hPQ29uY2VwdHMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTAiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYXRvcj0iMTE6MS0xMToyNyIgbG9jYWxJZGVudGlmaWVyPSJXQyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTIiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29tbW9uPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0M8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE0IiBsb2NhdG9yPSIxMjoxLTEyOjI5IiBsb2NhbElkZW50aWZpZXI9IldFIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0VsZW1lbnRzIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE0Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPldIT0VsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0U8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE2IiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBsb2NhbElkZW50aWZpZXI9IkNvbW1vbiIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aQ29tbW9uIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE2Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPklNTVpDb21tb248L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb21tb248L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhdG9yPSIxNToxLTE1OjM2IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIxOCI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb25jZXB0czwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjAiIGxvY2F0b3I9IjE2OjEtMTY6NDYiIGxvY2FsSWRlbnRpZmllcj0iRW5jb3VudGVyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpFbmNvdW50ZXJFbGVtZW50cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIyMCI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aRW5jb3VudGVyRWxlbWVudHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBFbmNvdW50ZXI8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjIyIiBsb2NhdG9yPSIxODoxLTE4OjY2IiBsb2NhbElkZW50aWZpZXI9Ik1lbmluZ29jb2NjYWxFbGVtZW50cyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aRDVEVE1lbmluZ29jb2NjYWxFbGVtZW50cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIyMiI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aRDVEVE1lbmluZ29jb2NjYWxFbGVtZW50czwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gY2FsbGVkIE1lbmluZ29jb2NjYWxFbGVtZW50czwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgPC9pbmNsdWRlcz4KICAgPHBhcmFtZXRlcnM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjI0IiBsb2NhdG9yPSIyMDoxLTIwOjM2IiBuYW1lPSJUb2RheSIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIyNCI+CiAgICAgICAgICAgICAgIDxhOnM+cGFyYW1ldGVyIFRvZGF5IDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjIyOCI+CiAgICAgICAgICAgICAgICAgIDxhOnM+RGF0ZTwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gZGVmYXVsdCA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cyByPSIyMjciPgogICAgICAgICAgICAgICAgICA8YTpzPlRvZGF5KCk8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxkZWZhdWx0IGxvY2FsSWQ9IjIyNyIgbG9jYXRvcj0iMjA6MzAtMjA6MzYiIHhzaTp0eXBlPSJUb2RheSIvPgogICAgICAgICA8cGFyYW1ldGVyVHlwZVNwZWNpZmllciBsb2NhbElkPSIyMjgiIGxvY2F0b3I9IjIwOjE3LTIwOjIwIiBuYW1lPSJ0OkRhdGUiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjMwIiBsb2NhdG9yPSIyMToxLTIxOjI4IiBuYW1lPSJFbmNvdW50ZXJJZCIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIzMCI+CiAgICAgICAgICAgICAgIDxhOnM+cGFyYW1ldGVyIEVuY291bnRlcklkIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjIzMSI+CiAgICAgICAgICAgICAgICAgIDxhOnM+U3RyaW5nPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICAgICA8cGFyYW1ldGVyVHlwZVNwZWNpZmllciBsb2NhbElkPSIyMzEiIGxvY2F0b3I9IjIxOjIzLTIxOjI4IiBuYW1lPSJ0OlN0cmluZyIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPgogICAgICA8L2RlZj4KICAgPC9wYXJhbWV0ZXJzPgogICA8Y29udGV4dHM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjM2IiBsb2NhdG9yPSIyMzoxLTIzOjE1IiBuYW1lPSJQYXRpZW50Ii8+CiAgIDwvY29udGV4dHM+CiAgIDxzdGF0ZW1lbnRzPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIzNCIgbG9jYXRvcj0iMjM6MS0yMzoxNSIgbmFtZT0iUGF0aWVudCIgY29udGV4dD0iUGF0aWVudCI+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjIzNSIgeHNpOnR5cGU9IlNpbmdsZXRvbkZyb20iPgogICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyMzMiIGxvY2F0b3I9IjIzOjEtMjM6MTUiIGRhdGFUeXBlPSJmaGlyOlBhdGllbnQiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9QYXRpZW50IiB4c2k6dHlwZT0iUmV0cmlldmUiLz4KICAgICAgICAgPC9leHByZXNzaW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMzkiIGxvY2F0b3I9IjI4OjEtMzA6NjAiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWVuaW5nb2NvY2NhbCBkb3NlIiBjb250ZXh0PSJQYXRpZW50IiBhY2Nlc3NMZXZlbD0iUHVibGljIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnQgbmFtZT0iaW50ZXJuYWwiIHZhbHVlPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1lbmluZ29jb2NjYWwgZG9zZSIvPgogICAgICAgICAgICA8YTpzIHI9IjIzOSI+CiAgICAgICAgICAgICAgIDxhOnM+LyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1lbmluZ29jb2NjYWwgZG9zZQoqLwpkZWZpbmUgJnF1b3Q7RHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBNZW5pbmdvY29jY2FsIGRvc2UmcXVvdDs6CiAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnMgcj0iMjUyIj4KICAgICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDAiPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjI0MiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+RW5jb3VudGVyLiZxdW90O0RyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCZxdW90OzwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+IE1SPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgPGE6cz4KICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8YTpzIHI9IjI0OCI+CiAgICAgICAgICAgICAgICAgICAgIDxhOnM+d2hlcmUgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ4Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDUiPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjI0NCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+TVI8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+LjwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjI0NSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+bWVkaWNhdGlvbjwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+IGluIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjI0NyI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ2Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz5Db25jZXB0czwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4uPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ3Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cz4mcXVvdDtNZW5pbmdvY29jY2FsIHZhY2NpbmVzJnF1b3Q7PC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgICAgPGV4cHJlc3Npb24gbG9jYWxJZD0iMjUyIiBsb2NhdG9yPSIyOTozLTMwOjYwIiB4c2k6dHlwZT0iUXVlcnkiPgogICAgICAgICAgICA8c291cmNlIGxvY2FsSWQ9IjI0MCIgbG9jYXRvcj0iMjk6My0yOTo1MyIgYWxpYXM9Ik1SIj4KICAgICAgICAgICAgICAgPGV4cHJlc3Npb24gbG9jYWxJZD0iMjQyIiBsb2NhdG9yPSIyOTozLTI5OjUwIiBuYW1lPSJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIGxpYnJhcnlOYW1lPSJFbmNvdW50ZXIiIHhzaTp0eXBlPSJFeHByZXNzaW9uUmVmIi8+CiAgICAgICAgICAgIDwvc291cmNlPgogICAgICAgICAgICA8d2hlcmUgbG9jYWxJZD0iMjQ4IiBsb2NhdG9yPSIzMDo1LTMwOjYwIiB4c2k6dHlwZT0iSW5WYWx1ZVNldCI+CiAgICAgICAgICAgICAgIDxzaWduYXR1cmUgbG9jYWxJZD0iMjUxIiBuYW1lPSJ0OkNvbmNlcHQiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz4KICAgICAgICAgICAgICAgPGNvZGUgbG9jYWxJZD0iMjUwIiBuYW1lPSJUb0NvbmNlcHQiIGxpYnJhcnlOYW1lPSJGSElSSGVscGVycyIgeHNpOnR5cGU9IkZ1bmN0aW9uUmVmIj4KICAgICAgICAgICAgICAgICAgPG9wZXJhbmQgbG9jYWxJZD0iMjQ5IiBhc1R5cGU9ImZoaXI6Q29kZWFibGVDb25jZXB0IiB4c2k6dHlwZT0iQXMiPgogICAgICAgICAgICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyNDUiIGxvY2F0b3I9IjMwOjExLTMwOjIzIiBwYXRoPSJtZWRpY2F0aW9uIiBzY29wZT0iTVIiIHhzaTp0eXBlPSJQcm9wZXJ0eSIvPgogICAgICAgICAgICAgICAgICA8L29wZXJhbmQ+CiAgICAgICAgICAgICAgIDwvY29kZT4KICAgICAgICAgICAgICAgPHZhbHVlc2V0IGxvY2FsSWQ9IjI0NyIgbG9jYXRvcj0iMzA6MjgtMzA6NjAiIG5hbWU9Ik1lbmluZ29jb2NjYWwgdmFjY2luZXMiIGxpYnJhcnlOYW1lPSJDb25jZXB0cyIgcHJlc2VydmU9InRydWUiLz4KICAgICAgICAgICAgPC93aGVyZT4KICAgICAgICAgPC9leHByZXNzaW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyNTUiIGxvY2F0b3I9IjM4OjEtMzk6NjUiIG5hbWU9IlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIgY29udGV4dD0iUGF0aWVudCIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTp0IG5hbWU9ImlucHV0IiB2YWx1ZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIi8+CiAgICAgICAgICAgIDxhOnQgbmFtZT0icHNldWRvY29kZSIgdmFsdWU9IiZxdW90O1BvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyZxdW90OyA9ICZxdW90O1NldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMmcXVvdDsiLz4KICAgICAgICAgICAgPGE6dCBuYW1lPSJjb2RlIiB2YWx1ZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5Ii8+CiAgICAgICAgICAgIDxhOnQgbmFtZT0iZGVjaXNpb24iIHZhbHVlPSJJTU1aLkQ1LkRULk1lbmluZ29jb2NjYWwgY29udHJhaW5kaWNhdGlvbnMiLz4KICAgICAgICAgICAgPGE6cyByPSIyNTUiPgogICAgICAgICAgICAgICA8YTpzPi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAmcXVvdDtQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMmcXVvdDsgPSAmcXVvdDtTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zJnF1b3Q7CkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULk1lbmluZ29jb2NjYWwgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICZxdW90O1RoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OzoKICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cyByPSIyNTciPgogICAgICAgICAgICAgICAgICA8YTpzIHI9IjI1NiI+CiAgICAgICAgICAgICAgICAgICAgIDxhOnM+RW5jb3VudGVyPC9hOnM+CiAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8YTpzPi48L2E6cz4KICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNTciPgogICAgICAgICAgICAgICAgICAgICA8YTpzPiZxdW90O1RoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OzwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjI1NyIgbG9jYXRvcj0iMzk6My0zOTo2NSIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIiBsaWJyYXJ5TmFtZT0iRW5jb3VudGVyIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPgogICAgICA8L2RlZj4KICAgPC9zdGF0ZW1lbnRzPgo8L2xpYnJhcnk+Cg=="
    }
  ]
}

```
