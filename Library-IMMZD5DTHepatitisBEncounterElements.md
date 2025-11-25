# IMMZD5DTHepatitisBEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHepatitisBEncounterElements**

## Library: IMMZD5DTHepatitisBEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisBEncounterElements | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD5DTHepatitisBEncounterElements |

 
This library defines encounter-based elements for Hepatitis B used throughout the Immunization CPG 

* * **Content:**application/elm+xml: ````Encoded data (15248 characters)````: **Id:**
  * ?: IMMZD5DTHepatitisBEncounterElements
* * **Content:**application/elm+xml: ````Encoded data (15248 characters)````: **Version:**
  * ?: 0.2.0
* * **Content:**application/elm+xml: ````Encoded data (15248 characters)````: **Url:**
  * ?: [IMMZD5DTHepatitisBEncounterElements](Library-IMMZD5DTHepatitisBEncounterElements.md)
* * **Content:**application/elm+xml: ````Encoded data (15248 characters)````: **Status:**
  * ?: draft
* * **Content:**application/elm+xml: ````Encoded data (15248 characters)````: **Date:**
  * ?: 2025-11-25 19:41:02+0000
* * **Content:**application/elm+xml: ````Encoded data (15248 characters)````: **Publisher:**
  * ?: WHO
* * **Content:**application/elm+xml: ````Encoded data (15248 characters)````: **Description:**
  * ?: This library defines encounter-based elements for Hepatitis B used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHepatitisBEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisBEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTHepatitisBEncounterElements",
  "title" : "IMMZD5DTHepatitisBEncounterElements",
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
  "description" : "This library defines encounter-based elements for Hepatitis B used throughout the Immunization CPG",
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
      "display" : "Library HepatitisBElements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisBElements"
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
      "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEhlcGF0aXRpc0JFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRIZXBhdGl0aXNCRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRIZXBhdGl0aXNCRWxlbWVudHMgY2FsbGVkIEhlcGF0aXRpc0JFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhlcGF0aXRpcyBCIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhlcGF0aXRpcyBCIGRvc2UiOgogIEVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iSGVwYXRpdGlzIEItY29udGFpbmluZyB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5IZXBhdGl0aXMgQiBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCg=="
    },
    {
      "contentType" : "application/elm+xml",
      "data" : "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGxpYnJhcnkgeG1sbnM9InVybjpobDctb3JnOmVsbTpyMSIgeG1sbnM6dD0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczpmaGlyPSJodHRwOi8vaGw3Lm9yZy9maGlyIiB4bWxuczpxZG00Mz0idXJuOmhlYWx0aGl0LWdvdjpxZG06djRfMyIgeG1sbnM6cWRtNTM9InVybjpoZWFsdGhpdC1nb3Y6cWRtOnY1XzMiIHhtbG5zOmE9InVybjpobDctb3JnOmNxbC1hbm5vdGF0aW9uczpyMSIgbG9jYWxJZD0iMCI+CiAgIDxhbm5vdGF0aW9uIHRyYW5zbGF0b3JPcHRpb25zPSJFbmFibGVBbm5vdGF0aW9ucyxFbmFibGVMb2NhdG9ycyxEaXNhYmxlTGlzdERlbW90aW9uLERpc2FibGVMaXN0UHJvbW90aW9uIiBzaWduYXR1cmVMZXZlbD0iT3ZlcmxvYWRzIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUluZm8iLz4KICAgPGFubm90YXRpb24gbWVzc2FnZT0iQW4gb3BlcmFuZCBpZGVudGlmaWVyIHJlZmVyZW5jZSBpcyBoaWRpbmcgYW5vdGhlciBpZGVudGlmaWVyIG9mIHRoZSBzYW1lIG5hbWUuIiBlcnJvclR5cGU9InNlbWFudGljIiBlcnJvclNldmVyaXR5PSJ3YXJuaW5nIiB4c2k6dHlwZT0iYTpDcWxUb0VsbUVycm9yIi8+CiAgIDxhbm5vdGF0aW9uIG1lc3NhZ2U9IkFuIG9wZXJhbmQgaWRlbnRpZmllciByZWZlcmVuY2UgaXMgaGlkaW5nIGFub3RoZXIgaWRlbnRpZmllciBvZiB0aGUgc2FtZSBuYW1lLiIgZXJyb3JUeXBlPSJzZW1hbnRpYyIgZXJyb3JTZXZlcml0eT0id2FybmluZyIgeHNpOnR5cGU9ImE6Q3FsVG9FbG1FcnJvciIvPgogICA8YW5ub3RhdGlvbiBtZXNzYWdlPSJBbiBvcGVyYW5kIGlkZW50aWZpZXIgcmVmZXJlbmNlIGlzIGhpZGluZyBhbm90aGVyIGlkZW50aWZpZXIgb2YgdGhlIHNhbWUgbmFtZS4iIGVycm9yVHlwZT0ic2VtYW50aWMiIGVycm9yU2V2ZXJpdHk9Indhcm5pbmciIHhzaTp0eXBlPSJhOkNxbFRvRWxtRXJyb3IiLz4KICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgIDxhOnMgcj0iMjU1Ij4KICAgICAgICAgPGE6cz4vKgogICogTGlicmFyeTogSU1NWkQ1RFRIZXBhdGl0aXNCRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUSGVwYXRpdGlzQkVuY291bnRlckVsZW1lbnRzPC9hOnM+CiAgICAgIDwvYTpzPgogICA8L2Fubm90YXRpb24+CiAgIDxpZGVudGlmaWVyIGlkPSJJTU1aRDVEVEhlcGF0aXRpc0JFbmNvdW50ZXJFbGVtZW50cyIgc3lzdGVtPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zIi8+CiAgIDxzY2hlbWFJZGVudGlmaWVyIGlkPSJ1cm46aGw3LW9yZzplbG0iIHZlcnNpb249InIxIi8+CiAgIDx1c2luZ3M+CiAgICAgIDxkZWYgbG9jYWxJZD0iMSIgbG9jYWxJZGVudGlmaWVyPSJTeXN0ZW0iIHVyaT0idXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIi8+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA2IiBsb2NhdG9yPSI3OjEtNzoyNiIgbG9jYWxJZGVudGlmaWVyPSJGSElSIiB1cmk9Imh0dHA6Ly9obDcub3JnL2ZoaXIiIHZlcnNpb249IjQuMC4xIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjA2Ij4KICAgICAgICAgICAgICAgPGE6cz51c2luZyA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5GSElSPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiB2ZXJzaW9uICc0LjAuMSc8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgIDwvdXNpbmdzPgogICA8aW5jbHVkZXM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjA4IiBsb2NhdG9yPSI4OjEtODozNSIgbG9jYWxJZGVudGlmaWVyPSJGSElSSGVscGVycyIgcGF0aD0iaHR0cDovL2hsNy5vcmcvZmhpci9GSElSSGVscGVycyIgdmVyc2lvbj0iNC4wLjEiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMDgiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+RkhJUkhlbHBlcnM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IHZlcnNpb24gJzQuMC4xJzwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMTAiIGxvY2F0b3I9IjEwOjEtMTA6MTkiIGxvY2FsSWRlbnRpZmllcj0iV0hPQ29uY2VwdHMiIHBhdGg9Imh0dHA6Ly9zbWFydC53aG8uaW50L2ltbXVuaXphdGlvbnMvV0hPQ29uY2VwdHMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTAiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgIDwvZGVmPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIxMiIgbG9jYXRvcj0iMTE6MS0xMToyNyIgbG9jYWxJZGVudGlmaWVyPSJXQyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9XSE9Db21tb24iPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6cyByPSIyMTIiPgogICAgICAgICAgICAgICA8YTpzPmluY2x1ZGUgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+V0hPQ29tbW9uPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0M8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE0IiBsb2NhdG9yPSIxMjoxLTEyOjI5IiBsb2NhbElkZW50aWZpZXI9IldFIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL1dIT0VsZW1lbnRzIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE0Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPldIT0VsZW1lbnRzPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPiBjYWxsZWQgV0U8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE2IiBsb2NhdG9yPSIxNDoxLTE0OjMyIiBsb2NhbElkZW50aWZpZXI9IkNvbW1vbiIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aQ29tbW9uIj4KICAgICAgICAgPGFubm90YXRpb24geHNpOnR5cGU9ImE6QW5ub3RhdGlvbiI+CiAgICAgICAgICAgIDxhOnMgcj0iMjE2Ij4KICAgICAgICAgICAgICAgPGE6cz5pbmNsdWRlIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICA8YTpzPklNTVpDb21tb248L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb21tb248L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjE4IiBsb2NhdG9yPSIxNToxLTE1OjM2IiBsb2NhbElkZW50aWZpZXI9IkNvbmNlcHRzIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpDb25jZXB0cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIxOCI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aQ29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBDb25jZXB0czwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMjAiIGxvY2F0b3I9IjE2OjEtMTY6NDYiIGxvY2FsSWRlbnRpZmllcj0iRW5jb3VudGVyIiBwYXRoPSJodHRwOi8vc21hcnQud2hvLmludC9pbW11bml6YXRpb25zL0lNTVpFbmNvdW50ZXJFbGVtZW50cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIyMCI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aRW5jb3VudGVyRWxlbWVudHM8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgIDxhOnM+IGNhbGxlZCBFbmNvdW50ZXI8L2E6cz4KICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgIDwvYW5ub3RhdGlvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjIyIiBsb2NhdG9yPSIxODoxLTE4OjYwIiBsb2NhbElkZW50aWZpZXI9IkhlcGF0aXRpc0JFbGVtZW50cyIgcGF0aD0iaHR0cDovL3NtYXJ0Lndoby5pbnQvaW1tdW5pemF0aW9ucy9JTU1aRDVEVEhlcGF0aXRpc0JFbGVtZW50cyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIyMiI+CiAgICAgICAgICAgICAgIDxhOnM+aW5jbHVkZSA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4KICAgICAgICAgICAgICAgICAgPGE6cz5JTU1aRDVEVEhlcGF0aXRpc0JFbGVtZW50czwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gY2FsbGVkIEhlcGF0aXRpc0JFbGVtZW50czwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICA8L2RlZj4KICAgPC9pbmNsdWRlcz4KICAgPHBhcmFtZXRlcnM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjI0IiBsb2NhdG9yPSIyMDoxLTIwOjM2IiBuYW1lPSJUb2RheSIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIyNCI+CiAgICAgICAgICAgICAgIDxhOnM+cGFyYW1ldGVyIFRvZGF5IDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjIyOCI+CiAgICAgICAgICAgICAgICAgIDxhOnM+RGF0ZTwvYTpzPgogICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cz4gZGVmYXVsdCA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cyByPSIyMjciPgogICAgICAgICAgICAgICAgICA8YTpzPlRvZGF5KCk8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxkZWZhdWx0IGxvY2FsSWQ9IjIyNyIgbG9jYXRvcj0iMjA6MzAtMjA6MzYiIHhzaTp0eXBlPSJUb2RheSIvPgogICAgICAgICA8cGFyYW1ldGVyVHlwZVNwZWNpZmllciBsb2NhbElkPSIyMjgiIGxvY2F0b3I9IjIwOjE3LTIwOjIwIiBuYW1lPSJ0OkRhdGUiIHhzaTp0eXBlPSJOYW1lZFR5cGVTcGVjaWZpZXIiLz4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjMwIiBsb2NhdG9yPSIyMToxLTIxOjI4IiBuYW1lPSJFbmNvdW50ZXJJZCIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTpzIHI9IjIzMCI+CiAgICAgICAgICAgICAgIDxhOnM+cGFyYW1ldGVyIEVuY291bnRlcklkIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjIzMSI+CiAgICAgICAgICAgICAgICAgIDxhOnM+U3RyaW5nPC9hOnM+CiAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICA8L2E6cz4KICAgICAgICAgPC9hbm5vdGF0aW9uPgogICAgICAgICA8cGFyYW1ldGVyVHlwZVNwZWNpZmllciBsb2NhbElkPSIyMzEiIGxvY2F0b3I9IjIxOjIzLTIxOjI4IiBuYW1lPSJ0OlN0cmluZyIgeHNpOnR5cGU9Ik5hbWVkVHlwZVNwZWNpZmllciIvPgogICAgICA8L2RlZj4KICAgPC9wYXJhbWV0ZXJzPgogICA8Y29udGV4dHM+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjM2IiBsb2NhdG9yPSIyMzoxLTIzOjE1IiBuYW1lPSJQYXRpZW50Ii8+CiAgIDwvY29udGV4dHM+CiAgIDxzdGF0ZW1lbnRzPgogICAgICA8ZGVmIGxvY2FsSWQ9IjIzNCIgbG9jYXRvcj0iMjM6MS0yMzoxNSIgbmFtZT0iUGF0aWVudCIgY29udGV4dD0iUGF0aWVudCI+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjIzNSIgeHNpOnR5cGU9IlNpbmdsZXRvbkZyb20iPgogICAgICAgICAgICA8b3BlcmFuZCBsb2NhbElkPSIyMzMiIGxvY2F0b3I9IjIzOjEtMjM6MTUiIGRhdGFUeXBlPSJmaGlyOlBhdGllbnQiIHRlbXBsYXRlSWQ9Imh0dHA6Ly9obDcub3JnL2ZoaXIvU3RydWN0dXJlRGVmaW5pdGlvbi9QYXRpZW50IiB4c2k6dHlwZT0iUmV0cmlldmUiLz4KICAgICAgICAgPC9leHByZXNzaW9uPgogICAgICA8L2RlZj4KICAgICAgPGRlZiBsb2NhbElkPSIyMzkiIGxvY2F0b3I9IjI4OjEtMzA6NjkiIG5hbWU9IkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGVwYXRpdGlzIEIgZG9zZSIgY29udGV4dD0iUGF0aWVudCIgYWNjZXNzTGV2ZWw9IlB1YmxpYyI+CiAgICAgICAgIDxhbm5vdGF0aW9uIHhzaTp0eXBlPSJhOkFubm90YXRpb24iPgogICAgICAgICAgICA8YTp0IG5hbWU9ImludGVybmFsIiB2YWx1ZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIZXBhdGl0aXMgQiBkb3NlIi8+CiAgICAgICAgICAgIDxhOnMgcj0iMjM5Ij4KICAgICAgICAgICAgICAgPGE6cz4vKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGVwYXRpdGlzIEIgZG9zZQoqLwpkZWZpbmUgJnF1b3Q7RHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIZXBhdGl0aXMgQiBkb3NlJnF1b3Q7OgogIDwvYTpzPgogICAgICAgICAgICAgICA8YTpzIHI9IjI1MiI+CiAgICAgICAgICAgICAgICAgIDxhOnM+CiAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQwIj4KICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDIiPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPkVuY291bnRlci4mcXVvdDtEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQmcXVvdDs8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzPiBNUjwvYTpzPgogICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgIDxhOnM+CiAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDgiPgogICAgICAgICAgICAgICAgICAgICA8YTpzPndoZXJlIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjI0OCI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhOnMgcj0iMjQ1Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDQiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPk1SPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPi48L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDUiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzPm1lZGljYXRpb248L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICA8YTpzPiBpbiA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNDciPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjI0NiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+Q29uY2VwdHM8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+LjwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8YTpzIHI9IjI0NyI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhOnM+JnF1b3Q7SGVwYXRpdGlzIEItY29udGFpbmluZyB2YWNjaW5lcyZxdW90OzwvYTpzPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjI1MiIgbG9jYXRvcj0iMjk6My0zMDo2OSIgeHNpOnR5cGU9IlF1ZXJ5Ij4KICAgICAgICAgICAgPHNvdXJjZSBsb2NhbElkPSIyNDAiIGxvY2F0b3I9IjI5OjMtMjk6NTMiIGFsaWFzPSJNUiI+CiAgICAgICAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjI0MiIgbG9jYXRvcj0iMjk6My0yOTo1MCIgbmFtZT0iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBsaWJyYXJ5TmFtZT0iRW5jb3VudGVyIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPgogICAgICAgICAgICA8L3NvdXJjZT4KICAgICAgICAgICAgPHdoZXJlIGxvY2FsSWQ9IjI0OCIgbG9jYXRvcj0iMzA6NS0zMDo2OSIgeHNpOnR5cGU9IkluVmFsdWVTZXQiPgogICAgICAgICAgICAgICA8c2lnbmF0dXJlIGxvY2FsSWQ9IjI1MSIgbmFtZT0idDpDb25jZXB0IiB4c2k6dHlwZT0iTmFtZWRUeXBlU3BlY2lmaWVyIi8+CiAgICAgICAgICAgICAgIDxjb2RlIGxvY2FsSWQ9IjI1MCIgbmFtZT0iVG9Db25jZXB0IiBsaWJyYXJ5TmFtZT0iRkhJUkhlbHBlcnMiIHhzaTp0eXBlPSJGdW5jdGlvblJlZiI+CiAgICAgICAgICAgICAgICAgIDxvcGVyYW5kIGxvY2FsSWQ9IjI0OSIgYXNUeXBlPSJmaGlyOkNvZGVhYmxlQ29uY2VwdCIgeHNpOnR5cGU9IkFzIj4KICAgICAgICAgICAgICAgICAgICAgPG9wZXJhbmQgbG9jYWxJZD0iMjQ1IiBsb2NhdG9yPSIzMDoxMS0zMDoyMyIgcGF0aD0ibWVkaWNhdGlvbiIgc2NvcGU9Ik1SIiB4c2k6dHlwZT0iUHJvcGVydHkiLz4KICAgICAgICAgICAgICAgICAgPC9vcGVyYW5kPgogICAgICAgICAgICAgICA8L2NvZGU+CiAgICAgICAgICAgICAgIDx2YWx1ZXNldCBsb2NhbElkPSIyNDciIGxvY2F0b3I9IjMwOjI4LTMwOjY5IiBuYW1lPSJIZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmVzIiBsaWJyYXJ5TmFtZT0iQ29uY2VwdHMiIHByZXNlcnZlPSJ0cnVlIi8+CiAgICAgICAgICAgIDwvd2hlcmU+CiAgICAgICAgIDwvZXhwcmVzc2lvbj4KICAgICAgPC9kZWY+CiAgICAgIDxkZWYgbG9jYWxJZD0iMjU1IiBsb2NhdG9yPSIzODoxLTM5OjY1IiBuYW1lPSJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiIGNvbnRleHQ9IlBhdGllbnQiIGFjY2Vzc0xldmVsPSJQdWJsaWMiPgogICAgICAgICA8YW5ub3RhdGlvbiB4c2k6dHlwZT0iYTpBbm5vdGF0aW9uIj4KICAgICAgICAgICAgPGE6dCBuYW1lPSJpbnB1dCIgdmFsdWU9IlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIvPgogICAgICAgICAgICA8YTp0IG5hbWU9InBzZXVkb2NvZGUiIHZhbHVlPSImcXVvdDtQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMmcXVvdDsgPSAmcXVvdDtTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zJnF1b3Q7Ii8+CiAgICAgICAgICAgIDxhOnQgbmFtZT0iY29kZSIgdmFsdWU9IlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OSIvPgogICAgICAgICAgICA8YTp0IG5hbWU9ImRlY2lzaW9uIiB2YWx1ZT0iSU1NWi5ENS5EVC5IZXBhdGl0aXMgQiBjb250cmFpbmRpY2F0aW9ucyIvPgogICAgICAgICAgICA8YTpzIHI9IjI1NSI+CiAgICAgICAgICAgICAgIDxhOnM+LyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICZxdW90O1BvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyZxdW90OyA9ICZxdW90O1NldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMmcXVvdDsKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OQpAZGVjaXNpb246IElNTVouRDUuRFQuSGVwYXRpdGlzIEIgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICZxdW90O1RoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OzoKICA8L2E6cz4KICAgICAgICAgICAgICAgPGE6cyByPSIyNTciPgogICAgICAgICAgICAgICAgICA8YTpzIHI9IjI1NiI+CiAgICAgICAgICAgICAgICAgICAgIDxhOnM+RW5jb3VudGVyPC9hOnM+CiAgICAgICAgICAgICAgICAgIDwvYTpzPgogICAgICAgICAgICAgICAgICA8YTpzPi48L2E6cz4KICAgICAgICAgICAgICAgICAgPGE6cyByPSIyNTciPgogICAgICAgICAgICAgICAgICAgICA8YTpzPiZxdW90O1RoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyZxdW90OzwvYTpzPgogICAgICAgICAgICAgICAgICA8L2E6cz4KICAgICAgICAgICAgICAgPC9hOnM+CiAgICAgICAgICAgIDwvYTpzPgogICAgICAgICA8L2Fubm90YXRpb24+CiAgICAgICAgIDxleHByZXNzaW9uIGxvY2FsSWQ9IjI1NyIgbG9jYXRvcj0iMzk6My0zOTo2NSIgbmFtZT0iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIiBsaWJyYXJ5TmFtZT0iRW5jb3VudGVyIiB4c2k6dHlwZT0iRXhwcmVzc2lvblJlZiIvPgogICAgICA8L2RlZj4KICAgPC9zdGF0ZW1lbnRzPgo8L2xpYnJhcnk+Cg=="
    }
  ]
}

```
