# IMMZIND23 - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND23**

## Measure: IMMZIND23 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Measure/IMMZIND23 | *Version*:0.2.0 |
| Draft as of 2025-06-11 | *Computable Name*:IMMZIND23 |

 
IMMZ.IND.23 Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: IMMZIND23
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: IMMZIND23
* Knowledge Artifact Metadata: Status
  * ?: Draft
* Knowledge Artifact Metadata: Experimental
  * ?: false
* Knowledge Artifact Metadata: Description
  * ?: IMMZ.IND.23 Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose
* Knowledge Artifact Metadata: Measure Steward
  * ?: WHO
* Knowledge Artifact Metadata: Steward Contact Details
  * ?: WHO:[http://who.int](http://who.int)
* Knowledge Artifact Metadata: Measure Metadata
* Knowledge Artifact Metadata: Version Number
  * ?: 0.2.0
* Knowledge Artifact Metadata: Measure Scoring
  * ?: Proportion
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Initial Population
  * ?: **ID**: IMMZ.IND.23.IP**Description**:Initial Population**Logic Definition**:[Initial Population](#immzind23logic-initial-population)
* Knowledge Artifact Metadata: Denominator
  * ?: **ID**: IMMZ.IND.23.D**Description**:Denominator**Logic Definition**:[Denominator](#immzind23logic-denominator)
* Knowledge Artifact Metadata: Numerator
  * ?: **ID**: IMMZ.IND.23.N**Description**:Numerator**Logic Definition**:[Numerator](#immzind23logic-numerator)
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: IMMZ.IND.23.S1**Code**: By-Administrative Area
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: IMMZ.IND.23.S2**Code**: By-Sex
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: IMMZ.IND.23.S3**Code**: By-Age group
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: IMMZ.IND.23.S4**Code**: By-Age group
* Knowledge Artifact Metadata: Population Basis
  * ?: boolean
* Knowledge Artifact Metadata: Measure Logic
* Knowledge Artifact Metadata: Primary Library
  * ?: [IMMZIND23Logic](Library-IMMZIND23Logic.md)
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "IMMZIND23",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm"
    ]
  },
  "url" : "http://smart.who.int/immunizations/Measure/IMMZIND23",
  "version" : "0.2.0",
  "name" : "IMMZIND23",
  "title" : "IMMZIND23",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-06-11",
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
  "description" : "IMMZ.IND.23 Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose",
  "library" : ["http://smart.who.int/immunizations/Library/IMMZIND23Logic"],
  "scoring" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/measure-scoring",
        "code" : "proportion",
        "display" : "Proportion"
      }
    ]
  },
  "group" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis",
          "valueCode" : "boolean"
        }
      ],
      "population" : [
        {
          "id" : "IMMZ.IND.23.IP",
          "code" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
                "code" : "initial-population",
                "display" : "Initial Population"
              }
            ]
          },
          "description" : "Initial Population",
          "criteria" : {
            "language" : "text/cql-identifier",
            "expression" : "Initial Population"
          }
        },
        {
          "id" : "IMMZ.IND.23.D",
          "code" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
                "code" : "denominator",
                "display" : "Denominator"
              }
            ]
          },
          "description" : "Denominator",
          "criteria" : {
            "language" : "text/cql-identifier",
            "expression" : "Denominator"
          }
        },
        {
          "id" : "IMMZ.IND.23.N",
          "code" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
                "code" : "numerator",
                "display" : "Numerator"
              }
            ]
          },
          "description" : "Numerator",
          "criteria" : {
            "language" : "text/cql-identifier",
            "expression" : "Numerator"
          }
        }
      ],
      "stratifier" : [
        {
          "id" : "IMMZ.IND.23.S1",
          "code" : {
            "coding" : [
              {
                "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
                "code" : "DE32",
                "display" : "By-Administrative Area"
              }
            ]
          },
          "criteria" : {
            "language" : "text/cql-identifier",
            "expression" : "Stratification 1"
          }
        },
        {
          "id" : "IMMZ.IND.23.S2",
          "code" : {
            "coding" : [
              {
                "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
                "code" : "DE31",
                "display" : "By-Sex"
              }
            ]
          },
          "criteria" : {
            "language" : "text/cql-identifier",
            "expression" : "Stratification 2"
          }
        },
        {
          "id" : "IMMZ.IND.23.S3",
          "code" : {
            "coding" : [
              {
                "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
                "code" : "DE33",
                "display" : "By-Age group"
              }
            ]
          },
          "criteria" : {
            "language" : "text/cql-identifier",
            "expression" : "Stratification 3"
          }
        },
        {
          "id" : "IMMZ.IND.23.S4",
          "code" : {
            "coding" : [
              {
                "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
                "code" : "DE33",
                "display" : "By-Age group"
              }
            ]
          },
          "criteria" : {
            "language" : "text/cql-identifier",
            "expression" : "Stratification 4"
          }
        }
      ]
    }
  ]
}

```
