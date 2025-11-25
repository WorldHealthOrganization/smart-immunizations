# IMMZ.D17.Report AEFI - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D17.Report AEFI**

## Logical Model: IMMZ.D17.Report AEFI 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZD17 | *Version*:0.2.0 |
| Active as of 2025-01-13 | *Computable Name*:IMMZ_D17_Report_AEFI |

 
Data elements for the IMMZ.D17.Report AEFI Data Dictionary Activity. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZD17)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZD17.csv), [Excel](StructureDefinition-IMMZD17.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZD17",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
      "valueCode" : "shareable"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/version-algorithm",
        "code" : "semver"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
            "code" : "metadata"
          }
        ]
      }
    }
  ],
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17",
  "version" : "0.2.0",
  "name" : "IMMZ_D17_Report_AEFI",
  "title" : "IMMZ.D17.Report AEFI",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-01-13",
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
  "description" : "Data elements for the IMMZ.D17.Report AEFI Data Dictionary Activity.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "IMMZD17.to.Observation",
      "uri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZAdverseEvent",
      "name" : "Mapping from the IMMZ.D17 to the IMMZAdverseEvent profile"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZD17",
        "path" : "IMMZD17",
        "short" : "IMMZ.D17.Report AEFI",
        "definition" : "Data elements for the IMMZ.D17.Report AEFI Data Dictionary Activity.",
        "mapping" : [
          {
            "identity" : "IMMZD17.to.Observation",
            "map" : "AdverseEvent"
          }
        ]
      },
      {
        "id" : "IMMZD17.patient",
        "path" : "IMMZD17.patient",
        "short" : "Patient",
        "definition" : "The patient.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD17.to.Observation",
            "map" : "AdverseEvent.subject"
          }
        ]
      },
      {
        "id" : "IMMZD17.reactionReported",
        "path" : "IMMZD17.reactionReported",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE92"
          },
          {
            "system" : "http://id.who.int/icd/release/11/mms",
            "code" : "PK81.7",
            "display" : "Injection or infusion for therapeutic or diagnostic purposes associated with injury or harm in therapeutic use"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "418799008",
            "display" : "Finding reported by subject or history provider (finding)"
          }
        ],
        "short" : "Reaction reported",
        "definition" : "Indicates observation of an adverse event/reaction",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "IMMZD17.reactionDate",
        "path" : "IMMZD17.reactionDate",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE93"
          },
          {
            "system" : "http://loinc.org",
            "code" : "30953-4",
            "display" : "Date and time of onset of vaccination adverse event"
          }
        ],
        "short" : "Reaction date",
        "definition" : "When adverse event/reaction started",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqReaction-1",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE92 Reaction reported is Yes",
            "expression" : "not(%resource.reactionReport.exists()) or %resource.reactionReported.value != true or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17"
          },
          {
            "key" : "IMMZ-D-dateOccurred-1",
            "severity" : "error",
            "human" : "Date ≤ current date",
            "expression" : "not($this.exists()) or $this.value <= today()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD17.to.Observation",
            "map" : "AdverseEvent.date"
          }
        ]
      },
      {
        "id" : "IMMZD17.reactionManifestation",
        "path" : "IMMZD17.reactionManifestation",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE95"
          },
          {
            "system" : "http://id.who.int/icd/release/11/mms",
            "code" : "NE80.3",
            "display" : "Other serum reactions. This code includes 'Complications of vaccination, serum reaction'. A more specific code may be selected based on the documented reaction/manifestation"
          }
        ],
        "short" : "Reaction manifestation",
        "definition" : "The manifestation of the reaction (e.g. infected abscess, swelling, rash, hives, diarrhoea, etc.) observed after administering the vaccine",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqReaction-1",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE92 Reaction reported is Yes",
            "expression" : "not(%resource.reactionReport.exists()) or %resource.reactionReported.value != true or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE95"
        },
        "mapping" : [
          {
            "identity" : "IMMZD17.to.Observation",
            "map" : "AdverseEvent.event"
          }
        ]
      },
      {
        "id" : "IMMZD17.typeOfReaction",
        "path" : "IMMZD17.typeOfReaction",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE107"
          }
        ],
        "short" : "Type of reaction",
        "definition" : "If the event resulted in a reaction, what is the type of reaction",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqReaction-1",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE92 Reaction reported is Yes",
            "expression" : "not(%resource.reactionReport.exists()) or %resource.reactionReported.value != true or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE107"
        },
        "mapping" : [
          {
            "identity" : "IMMZD17.to.Observation",
            "map" : "AdverseEvent.seriousness"
          }
        ]
      },
      {
        "id" : "IMMZD17.otherImportantMedicalEvent",
        "path" : "IMMZD17.otherImportantMedicalEvent",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE113"
          }
        ],
        "short" : "Other important medical event (specify)",
        "definition" : "There was another important reaction or medical event ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD17.to.Observation",
            "map" : "AdverseEvent.extension[otherMedicalEvent].valueString"
          }
        ]
      },
      {
        "id" : "IMMZD17.reactionOutcome",
        "path" : "IMMZD17.reactionOutcome",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE115"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "293104008",
            "display" : "Adverse reaction to component of vaccine product (disorder)"
          }
        ],
        "short" : "Reaction outcome",
        "definition" : "The outcome of the reaction (e.g. death, recovered, recovering)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqReaction-1",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE92 Reaction reported is Yes",
            "expression" : "not(%resource.reactionReport.exists()) or %resource.reactionReported.value != true or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE115"
        },
        "mapping" : [
          {
            "identity" : "IMMZD17.to.Observation",
            "map" : "AdverseEvent.outcome"
          }
        ]
      }
    ]
  }
}

```
