# ConceptMap to and from IMMZ.Z DataElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **ConceptMap to and from IMMZ.Z DataElements**

## ConceptMap: ConceptMap to and from IMMZ.Z DataElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ConceptMap/IMMZ.Z.ConceptMap | *Version*:0.2.0 |
| Active as of 2025-01-08 | *Computable Name*:IMMZ_Z_ConceptMap |

 
Mapping to and from IMMZ.Z Data Dictionary to other codesystems. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "IMMZ.Z.ConceptMap",
  "url" : "http://smart.who.int/immunizations/ConceptMap/IMMZ.Z.ConceptMap",
  "version" : "0.2.0",
  "name" : "IMMZ_Z_ConceptMap",
  "title" : "ConceptMap to and from IMMZ.Z DataElements",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-01-08",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Mapping to and from IMMZ.Z Data Dictionary to other codesystems.",
  "group" : [{
    "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
    "target" : "http://id.who.int/icd/release/11/mms",
    "element" : [{
      "code" : "DE1",
      "target" : [{
        "code" : "XM4639",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE1",
      "target" : [{
        "code" : "XM8142",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "XM29K4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "XM3Z26",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "XM72A0",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "XM1FT6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM8AW3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM9744",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM31Q8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM8AW1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM09Q7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM41N3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM1LX9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM3G68",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM0LT9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM7JP3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM5XP9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM1G86",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM32Q5",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM2CV8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM21E6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM9JP8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM46V1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "XM4039",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "XM11V3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "XM1LX9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "XM01H1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "XM32L7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "XM7JP3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "XM5XP9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "XM21E6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE5",
      "target" : [{
        "code" : "XM6LL6",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE5",
      "target" : [{
        "code" : "XM2A12",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE5",
      "target" : [{
        "code" : "XM3JA6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE5",
      "target" : [{
        "code" : "XM03Y7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "XM9V38",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "XM3G68",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "XM32L7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "XM7JP3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "XM0LT9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "XM5XP9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "XM9QP0",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "XM1821",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "XM9BT4",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "XM5CE9",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE8",
      "target" : [{
        "code" : "XM0LB5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE8",
      "target" : [{
        "code" : "XM47S0",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "XM28X5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "XM8L15",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "XM8TF3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "XM21H2",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "XM4AJ8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "XM9439",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "XM2WV4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "XM92B2",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "XM5LC2",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "XM18Y8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "XM2280",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "XM9GJ1",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "XM1X81",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "XM37L5",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "XM1131",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "XM2340",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "XM8TF3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "XM4AJ8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "XM9439",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "XM3B09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM43M9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM45L8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM62J1",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM2TK2",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM4082",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM2CV8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM1LX9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM7JP3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM41N3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM09Q7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM0LT9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM5XP9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM31Q8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM46V1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM21E6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "XM9JP8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE13",
      "target" : [{
        "code" : "XM9EM7",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE13",
      "target" : [{
        "code" : "XM9G97",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE13",
      "target" : [{
        "code" : "XM2249",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE13",
      "target" : [{
        "code" : "XM91D7",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE13",
      "target" : [{
        "code" : "XM96S7",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE13",
      "target" : [{
        "code" : "XM4R39",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM0N50",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM1LX9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM09Q7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM0LT9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM8AW1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM01H1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM21E6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM9JP8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM5V19",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM79H3",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM0VX8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "XM0KZ1",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE30",
      "target" : [{
        "code" : "XM0VX8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE30",
      "target" : [{
        "code" : "XM79H3",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE30",
      "target" : [{
        "code" : "XM0KZ1",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE31",
      "target" : [{
        "code" : "XM5V19",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE31",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE31",
      "target" : [{
        "code" : "XM21E6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE31",
      "target" : [{
        "code" : "XM9JP8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE15",
      "target" : [{
        "code" : "XM6T09",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE15",
      "target" : [{
        "code" : "XM7BE8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE16",
      "target" : [{
        "code" : "XM1CE0",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE16",
      "target" : [{
        "code" : "XM4GV0",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE16",
      "target" : [{
        "code" : "XM4VG1",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "XM7PP1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "XM9PS9",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "XM3B09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "XM9744",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "XM8TF3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "XM21H2",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "XM4AJ8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE32",
      "target" : [{
        "code" : "XM21H2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE32",
      "target" : [{
        "code" : "XM8TF3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE32",
      "target" : [{
        "code" : "XM4AJ8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "XM1LR5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "XM8857",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "XM5V64",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "XM8MP2",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "XM9E16",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "XM33X8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM5L44",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM31Q8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM1LX9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM7JP3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM5XP9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM41N3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM3G68",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM09Q7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM0LT9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM8AW1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM9744",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM29H5",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM1G86",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM9AK2",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM21E6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM32Q5",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM9JP8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "XM4039",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE20",
      "target" : [{
        "code" : "XM0RC1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE20",
      "target" : [{
        "code" : "XM8MP6",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "XM8BU8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "XM3JA6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "XM33K4",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "XM89G3",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "XM3SF6",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "XM9UB1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE22",
      "target" : [{
        "code" : "XM8DG3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE22",
      "target" : [{
        "code" : "XM0NS8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE23",
      "target" : [{
        "code" : "XM0N24",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE23",
      "target" : [{
        "code" : "XM3418",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM31Q8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM1LX9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM7JP3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM5XP9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM41N3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM09Q7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM0LT9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM1G86",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM21E6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM9JP8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM32Q5",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "XM4039",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM32Q5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM4039",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM1G86",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM31Q8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM1LX9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM84S1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM7JP3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM5XP9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM41N3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM09Q7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM0LT9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM21E6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM9JP8",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM9744",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM8AW1",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "XM3G68",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE33",
      "target" : [{
        "code" : "XM4039",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE34",
      "target" : [{
        "code" : "XM1G86",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE25",
      "target" : [{
        "code" : "XM38G7",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM68M6",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM0GQ8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM1NL1",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM1J92",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM9QW8",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM6AT1",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM5JC5",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM3CT4",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM0CX4",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "XM5DF6",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE29",
      "target" : [{
        "code" : "XM7JP3",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "http://id.who.int/icd/release/11/mms",
    "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
    "element" : [{
      "code" : "XM4639",
      "target" : [{
        "code" : "DE1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM8142",
      "target" : [{
        "code" : "DE1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM29K4",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM3Z26",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM72A0",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM1FT6",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM8AW3",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM9744",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM31Q8",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM8AW1",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM09Q7",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM41N3",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM1LX9",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM3G68",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM0LT9",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM7JP3",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM5XP9",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM1G86",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM32Q5",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM2CV8",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21E6",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9JP8",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM46V1",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4039",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM11V3",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM1LX9",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM01H1",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM32L7",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM7JP3",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM5XP9",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21E6",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM6LL6",
      "target" : [{
        "code" : "DE5",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "XM2A12",
      "target" : [{
        "code" : "DE5",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM3JA6",
      "target" : [{
        "code" : "DE5",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM03Y7",
      "target" : [{
        "code" : "DE5",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9V38",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM3G68",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM32L7",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM7JP3",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM0LT9",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM5XP9",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9QP0",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM1821",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM9BT4",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM5CE9",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM0LB5",
      "target" : [{
        "code" : "DE8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM47S0",
      "target" : [{
        "code" : "DE8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM28X5",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM8L15",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM8TF3",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21H2",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4AJ8",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9439",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM2WV4",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM92B2",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM5LC2",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM18Y8",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM2280",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM9GJ1",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM1X81",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM37L5",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM1131",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM2340",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM8TF3",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4AJ8",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9439",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM3B09",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM43M9",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM45L8",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM62J1",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM2TK2",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4082",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM2CV8",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM1LX9",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM7JP3",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM41N3",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM09Q7",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM0LT9",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM5XP9",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM31Q8",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM46V1",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21E6",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9JP8",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9EM7",
      "target" : [{
        "code" : "DE13",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM9G97",
      "target" : [{
        "code" : "DE13",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM2249",
      "target" : [{
        "code" : "DE13",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM91D7",
      "target" : [{
        "code" : "DE13",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "XM96S7",
      "target" : [{
        "code" : "DE13",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "XM4R39",
      "target" : [{
        "code" : "DE13",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM0N50",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM1LX9",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM09Q7",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM0LT9",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM8AW1",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM01H1",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21E6",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9JP8",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM5V19",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "XM79H3",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM0VX8",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM0KZ1",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM0VX8",
      "target" : [{
        "code" : "DE30",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM79H3",
      "target" : [{
        "code" : "DE30",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM0KZ1",
      "target" : [{
        "code" : "DE30",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM5V19",
      "target" : [{
        "code" : "DE31",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE31",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21E6",
      "target" : [{
        "code" : "DE31",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9JP8",
      "target" : [{
        "code" : "DE31",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM6T09",
      "target" : [{
        "code" : "DE15",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM7BE8",
      "target" : [{
        "code" : "DE15",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM1CE0",
      "target" : [{
        "code" : "DE16",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM4GV0",
      "target" : [{
        "code" : "DE16",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM4VG1",
      "target" : [{
        "code" : "DE16",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM7PP1",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM9PS9",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM3B09",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9744",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM8TF3",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21H2",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4AJ8",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21H2",
      "target" : [{
        "code" : "DE32",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM8TF3",
      "target" : [{
        "code" : "DE32",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4AJ8",
      "target" : [{
        "code" : "DE32",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM1LR5",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM8857",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM5V64",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM8MP2",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM9E16",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM33X8",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM5L44",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM31Q8",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM1LX9",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM7JP3",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM5XP9",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM41N3",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM3G68",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM09Q7",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM0LT9",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM8AW1",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9744",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM29H5",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "XM1G86",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9AK2",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21E6",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM32Q5",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9JP8",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4039",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM0RC1",
      "target" : [{
        "code" : "DE20",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "XM8MP6",
      "target" : [{
        "code" : "DE20",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM8BU8",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM3JA6",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM33K4",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM89G3",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM3SF6",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM9UB1",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "XM8DG3",
      "target" : [{
        "code" : "DE22",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM0NS8",
      "target" : [{
        "code" : "DE22",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM0N24",
      "target" : [{
        "code" : "DE23",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM3418",
      "target" : [{
        "code" : "DE23",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM31Q8",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM1LX9",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM7JP3",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM5XP9",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM41N3",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM09Q7",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM0LT9",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM1G86",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21E6",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9JP8",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM32Q5",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4039",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM32Q5",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM4039",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM1G86",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM31Q8",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM1LX9",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM84S1",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM7JP3",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM5XP9",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM41N3",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM09Q7",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM0LT9",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM21E6",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9JP8",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM9744",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM8AW1",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM3G68",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "XM4039",
      "target" : [{
        "code" : "DE33",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM1G86",
      "target" : [{
        "code" : "DE34",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM38G7",
      "target" : [{
        "code" : "DE25",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM68M6",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "XM0GQ8",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM1NL1",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM1J92",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM9QW8",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM6AT1",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM5JC5",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM3CT4",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM0CX4",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM5DF6",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "XM7JP3",
      "target" : [{
        "code" : "DE29",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "DE3",
      "target" : [{
        "code" : "30936-9",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "30938-5",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "30937-7",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "30940-1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "30940-1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "30940-1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE32",
      "target" : [{
        "code" : "30940-1",
        "equivalence" : "wider"
      }]
    }]
  },
  {
    "source" : "http://loinc.org",
    "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
    "element" : [{
      "code" : "30936-9",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "30938-5",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "30937-7",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "30940-1",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "30940-1",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "30940-1",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "30940-1",
      "target" : [{
        "code" : "DE32",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "DE1",
      "target" : [{
        "code" : "418268006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE1",
      "target" : [{
        "code" : "774702006",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "836383009",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "1001000221103",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "1011000221100",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "836381006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "775641005",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "836380007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "836500008",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE5",
      "target" : [{
        "code" : "836375003",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE5",
      "target" : [{
        "code" : "871803007",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "836374004",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "871806004",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "836379009",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE8",
      "target" : [{
        "code" : "836378001",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "836382004",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "836401009",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "871871008",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "871866001",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "871873006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "836498007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "871875004",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "871889009",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE13",
      "target" : [{
        "code" : "836398006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "1031000221108",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "871740006",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE15",
      "target" : [{
        "code" : "836393002",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE15",
      "target" : [{
        "code" : "1131000221109",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE16",
      "target" : [{
        "code" : "836387005",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE16",
      "target" : [{
        "code" : "1081000221109",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "836388000",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "836377006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "1181000221105",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "871768005",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE20",
      "target" : [{
        "code" : "836403007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE22",
      "target" : [{
        "code" : "836495005",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE22",
      "target" : [{
        "code" : "2221000221107",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE22",
      "target" : [{
        "code" : "871908002",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE23",
      "target" : [{
        "code" : "836385002",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE23",
      "target" : [{
        "code" : "1121000221106",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "774618008",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "1119305005",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "1119349007",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "1157024006",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "29061000087103",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "1162643001",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    }]
  },
  {
    "source" : "http://snomed.info/sct",
    "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
    "element" : [{
      "code" : "418268006",
      "target" : [{
        "code" : "DE1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "774702006",
      "target" : [{
        "code" : "DE1",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "836383009",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1001000221103",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "1011000221100",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "836381006",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "775641005",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "836380007",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "836500008",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "836375003",
      "target" : [{
        "code" : "DE5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "871803007",
      "target" : [{
        "code" : "DE5",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "836374004",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "871806004",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "836379009",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "836378001",
      "target" : [{
        "code" : "DE8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "836382004",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "836401009",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "871871008",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "871866001",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "871873006",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "836498007",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "871875004",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "871889009",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "836398006",
      "target" : [{
        "code" : "DE13",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1031000221108",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "871740006",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "836393002",
      "target" : [{
        "code" : "DE15",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1131000221109",
      "target" : [{
        "code" : "DE15",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "836387005",
      "target" : [{
        "code" : "DE16",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1081000221109",
      "target" : [{
        "code" : "DE16",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "836388000",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "836377006",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1181000221105",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "871768005",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "836403007",
      "target" : [{
        "code" : "DE20",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "836495005",
      "target" : [{
        "code" : "DE22",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2221000221107",
      "target" : [{
        "code" : "DE22",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "871908002",
      "target" : [{
        "code" : "DE22",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "836385002",
      "target" : [{
        "code" : "DE23",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1121000221106",
      "target" : [{
        "code" : "DE23",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "774618008",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1119305005",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1119349007",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "1157024006",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "29061000087103",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1162643001",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "wider"
      }]
    }]
  },
  {
    "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
    "target" : "http://www.whocc.no/atc",
    "element" : [{
      "code" : "DE1",
      "target" : [{
        "code" : "L03AX03",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "J07AE",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "J07AE01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "J07AE02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE2",
      "target" : [{
        "code" : "J07AE51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07AF",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA03",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA01",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA02",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA05",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA06",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA07",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA13",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07AM51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07AF01",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE3",
      "target" : [{
        "code" : "J07CA09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07AG",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07CA06",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07CA04",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07CA08",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07CA11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07CA13",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07CA09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07AG53",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07AG52",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07AG51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07AG01",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE4",
      "target" : [{
        "code" : "J07AL52",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE5",
      "target" : [{
        "code" : "J07BC02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE5",
      "target" : [{
        "code" : "J07CA10",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "J07BC01",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "J07CA07",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "J07CA08",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "J07CA11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "J07CA12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "J07CA13",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "J07CA09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE6",
      "target" : [{
        "code" : "J07CA05",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "J07BM",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "J07BM01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "J07BM02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE7",
      "target" : [{
        "code" : "J07BM03",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE8",
      "target" : [{
        "code" : "J07BA02",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE8",
      "target" : [{
        "code" : "J07BA03",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "J07BD",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "J07BD01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "J07BD52",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "J07BD53",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "J07BD54",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE9",
      "target" : [{
        "code" : "J07BD51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "J07AH",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "J07AH02",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE10",
      "target" : [{
        "code" : "J07AH05",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "J07BE",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "J07BE01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "J07BD52",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "J07BD54",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "J07BD51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE11",
      "target" : [{
        "code" : "J07BJ51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07AJ",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07AJ01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07AJ02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07AJ51",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07AJ52",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07CA06",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07CA11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07CA05",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07CA02",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07CA12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07CA13",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07CA09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE12",
      "target" : [{
        "code" : "J07AG52",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE13",
      "target" : [{
        "code" : "J07AL",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07BF",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07CA06",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07CA02",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07CA12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07CA01",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07CA04",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07BF03",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07CA09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07BF04",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07BF01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE14",
      "target" : [{
        "code" : "J07BF02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE30",
      "target" : [{
        "code" : "J07BF01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE30",
      "target" : [{
        "code" : "J07BF04",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE30",
      "target" : [{
        "code" : "J07BF02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE31",
      "target" : [{
        "code" : "J07BF03",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE31",
      "target" : [{
        "code" : "J07CA09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE15",
      "target" : [{
        "code" : "J07BG",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE15",
      "target" : [{
        "code" : "J07BG01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE16",
      "target" : [{
        "code" : "J07BH01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE16",
      "target" : [{
        "code" : "J07BH02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "J07BJ",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "J07BJ01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "J07BJ51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "J07CA03",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "J07BD52",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "J07BD53",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE17",
      "target" : [{
        "code" : "J07BD54",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE32",
      "target" : [{
        "code" : "J07BD53",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE32",
      "target" : [{
        "code" : "J07BD52",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE32",
      "target" : [{
        "code" : "J07BD54",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "J07BB",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "J07BB01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "J07BB03",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "J07BB02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE18",
      "target" : [{
        "code" : "J07BB04",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07AM",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA06",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA13",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA05",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA07",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA02",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA01",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07CA03",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07AM01",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07AM51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE19",
      "target" : [{
        "code" : "J07AM52",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE20",
      "target" : [{
        "code" : "J07BA01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "J07AP",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "J07CA10",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "J07AP01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "J07AP02",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "J07AP03",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "J07AP10",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE21",
      "target" : [{
        "code" : "J07AE51",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE22",
      "target" : [{
        "code" : "J07BK",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE22",
      "target" : [{
        "code" : "J07BK01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE22",
      "target" : [{
        "code" : "J07BD54",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE23",
      "target" : [{
        "code" : "J07BL",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE23",
      "target" : [{
        "code" : "J07BL01",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "J07CA06",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "J07CA09",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "J07CA11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "J07CA13",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "J07CA05",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "J07CA02",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "J07CA12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE24",
      "target" : [{
        "code" : "J07AM51",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07AM51",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07CA11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07CA13",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07CA05",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07CA02",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07CA12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07CA03",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07CA01",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE28",
      "target" : [{
        "code" : "J07CA07",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "DE34",
      "target" : [{
        "code" : "J07AM51",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "DE26",
      "target" : [{
        "code" : "J07BX03",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE27",
      "target" : [{
        "code" : "J07XA01",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "DE29",
      "target" : [{
        "code" : "J07CA11",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "http://www.whocc.no/atc",
    "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
    "element" : [{
      "code" : "L03AX03",
      "target" : [{
        "code" : "DE1",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07AE",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07AE01",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AE02",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AE51",
      "target" : [{
        "code" : "DE2",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AF",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA03",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA01",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA02",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA05",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA06",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA07",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA12",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA11",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA13",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AM51",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AF01",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA09",
      "target" : [{
        "code" : "DE3",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AG",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA06",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA04",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA08",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA11",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA13",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA09",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AG53",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AG52",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AG51",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AG01",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AL52",
      "target" : [{
        "code" : "DE4",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BC02",
      "target" : [{
        "code" : "DE5",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07CA10",
      "target" : [{
        "code" : "DE5",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BC01",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA07",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA08",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA11",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA12",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA13",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA09",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA05",
      "target" : [{
        "code" : "DE6",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BM",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07BM01",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BM02",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BM03",
      "target" : [{
        "code" : "DE7",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BA02",
      "target" : [{
        "code" : "DE8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BA03",
      "target" : [{
        "code" : "DE8",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BD",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BD01",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BD52",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD53",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD54",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD51",
      "target" : [{
        "code" : "DE9",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AH",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07AH02",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AH05",
      "target" : [{
        "code" : "DE10",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BE",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BE01",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BD52",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD54",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD51",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BJ51",
      "target" : [{
        "code" : "DE11",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AJ",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07AJ01",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AJ02",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AJ51",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07AJ52",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07CA06",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA11",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA05",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA02",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA12",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA13",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA09",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AG52",
      "target" : [{
        "code" : "DE12",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AL",
      "target" : [{
        "code" : "DE13",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BF",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA06",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA02",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA12",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA01",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA04",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BF03",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA09",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BF04",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BF01",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BF02",
      "target" : [{
        "code" : "DE14",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BF01",
      "target" : [{
        "code" : "DE30",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BF04",
      "target" : [{
        "code" : "DE30",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BF02",
      "target" : [{
        "code" : "DE30",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BF03",
      "target" : [{
        "code" : "DE31",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA09",
      "target" : [{
        "code" : "DE31",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BG",
      "target" : [{
        "code" : "DE15",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BG01",
      "target" : [{
        "code" : "DE15",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BH01",
      "target" : [{
        "code" : "DE16",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BH02",
      "target" : [{
        "code" : "DE16",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BJ",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BJ01",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BJ51",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA03",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD52",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD53",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD54",
      "target" : [{
        "code" : "DE17",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD53",
      "target" : [{
        "code" : "DE32",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BD52",
      "target" : [{
        "code" : "DE32",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BD54",
      "target" : [{
        "code" : "DE32",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BB",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BB01",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BB03",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BB02",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BB04",
      "target" : [{
        "code" : "DE18",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AM",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA06",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA11",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA13",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA05",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA07",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA02",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA12",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA01",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA09",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA03",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AM01",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07AM51",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AM52",
      "target" : [{
        "code" : "DE19",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07BA01",
      "target" : [{
        "code" : "DE20",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AP",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA10",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AP01",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AP02",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AP03",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07AP10",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07AE51",
      "target" : [{
        "code" : "DE21",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BK",
      "target" : [{
        "code" : "DE22",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BK01",
      "target" : [{
        "code" : "DE22",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07BD54",
      "target" : [{
        "code" : "DE22",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07BL",
      "target" : [{
        "code" : "DE23",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07BL01",
      "target" : [{
        "code" : "DE23",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "J07CA06",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA09",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA11",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA13",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA05",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA02",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA12",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AM51",
      "target" : [{
        "code" : "DE24",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07AM51",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07CA11",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA13",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA05",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA02",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA12",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA03",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA01",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07CA07",
      "target" : [{
        "code" : "DE28",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "J07AM51",
      "target" : [{
        "code" : "DE34",
        "equivalence" : "narrower",
        "comment" : "Per the Immunizations DAK"
      }]
    },
    {
      "code" : "J07BX03",
      "target" : [{
        "code" : "DE26",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07XA01",
      "target" : [{
        "code" : "DE27",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "J07CA11",
      "target" : [{
        "code" : "DE29",
        "equivalence" : "relatedto"
      }]
    }]
  }]
}

```
