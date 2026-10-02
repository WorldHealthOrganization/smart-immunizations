# IMMZIND45 - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND45**

## Measure: IMMZIND45 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Measure/IMMZIND45 | *Version*:0.2.0 |
| Draft as of 2025-06-11 | *Computable Name*:IMMZIND45 |

 
IMMZ.IND.45 Immunization session completion rate 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: IMMZIND45
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: IMMZIND45
* Knowledge Artifact Metadata: Status
  * ?: Draft
* Knowledge Artifact Metadata: Experimental
  * ?: false
* Knowledge Artifact Metadata: Description
  * ?: IMMZ.IND.45 Immunization session completion rate
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
  * ?: **ID**: IMMZ.IND.45.IP**Description**:Initial Population**Logic Definition**:[Initial Population](#immzind45logic-initial-population)
* Knowledge Artifact Metadata: Denominator
  * ?: **ID**: IMMZ.IND.45.D**Description**:Denominator**Logic Definition**:[Denominator](#immzind45logic-denominator)
* Knowledge Artifact Metadata: Numerator
  * ?: **ID**: IMMZ.IND.45.N**Description**:Numerator**Logic Definition**:[Numerator](#immzind45logic-numerator)
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: {idprefix}.S1**Code**: By-Administrative Area
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: {idprefix}.S2**Code**: By-Administrative Area
* Knowledge Artifact Metadata: Population Basis
  * ?: boolean
* Knowledge Artifact Metadata: Measure Logic
* Knowledge Artifact Metadata: Primary Library
  * ?: [IMMZIND45Logic](Library-IMMZIND45Logic.md)
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: FHIR model information**Resource**:[http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1](http://fhir.org/guides/cqf/common/4.0.1/4.0.1/Library-FHIR-ModelInfo.html)**Canonical URL**:http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library WC**Resource**:[WHOCommon](Library-WHOCommon.md)**Canonical URL**:http://smart.who.int/immunizations/Library/WHOCommon
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library FHIRHelpers**Resource**:[http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1](http://fhir.org/guides/cqf/common/4.0.1/4.0.1/Library-FHIRHelpers.html)**Canonical URL**:http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library Elements**Resource**:`http://smart.who.int/immunizations/Library/IMMZIndicatorElements`**Canonical URL**:http://smart.who.int/immunizations/Library/IMMZIndicatorElements
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library WC**Resource**:[WHOCommon](Library-WHOCommon.md)**Canonical URL**:http://smart.who.int/immunizations/Library/WHOCommon
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library FHIRHelpers**Resource**:[http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1](http://fhir.org/guides/cqf/common/4.0.1/4.0.1/Library-FHIRHelpers.html)**Canonical URL**:http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Measurement Period**Use**: In**Min Cardinality**: 0**Max Cardinality**: 1**Type**: Period
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Numerator**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: boolean
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Stratification 2**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: string
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Stratification 1**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: string
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Denominator**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: boolean
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Initial Population**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: boolean
* Knowledge Artifact Metadata:  Measure Logic Data Requirements
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Location**Profile(s)**:[Location](http://hl7.org/fhir/R4/location.html)
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Immunization**Profile(s)**:[Immunization](http://hl7.org/fhir/R4/immunization.html)
* Knowledge Artifact Metadata: Measure Logic Definitions
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND45Logic
* Knowledge Artifact Metadata: ````/* * As defined by Member State */ define "Initial Population": Immunization.occurrence is not null and Immunization.occurrence.toInterval() starts during "Measurement Period"````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND45Logic
* Knowledge Artifact Metadata: ````/* @denominator: Number of planned immunization sessions at the vaccination location during the reporting period @pseudocode: COUNT number of planned sessions during the reporting period */ define "Denominator": "Initial Population"````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND45Logic
* Knowledge Artifact Metadata: ````/* @numerator: Number of immunization sessions completed at the vaccination location during the reporting period @pseudocode: COUNT of immunization events WHERE "Immunization event status" = "Completed" during the reporting period */ define "Numerator": "Denominator" and Immunization.status = 'completed'````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND45Logic
* Knowledge Artifact Metadata: ````define "Stratification 2": Elements.GetGeographicRegionForImmunization( Immunization )````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND45Logic
* Knowledge Artifact Metadata: ````/* @disaggregation: Vaccination location Administrative area */ define "Stratification 1": Elements.GetLocationNameForImmunization( Immunization )````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToString(value ImmunizationStatus): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIndicatorElements
* Knowledge Artifact Metadata: ````/** * @function * @param immunization The immunization record for which the location should be retrieved * @return FHIR.address The location that the immunization event occurred */ define function GetGeographicRegionForImmunization(immunization Immunization): ( [Location] L where immunization.location.references(L) ).only().address.state````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**WHOCommon
* Knowledge Artifact Metadata: ````define fluent function only(locations List<Location>): singleton from locations````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**WHOCommon
* Knowledge Artifact Metadata: ````/* @description: Returns true if the given reference is to the given resource @comment: Returns true if the `id` element of the given resource exactly equals the tail of the given reference. NOTE: This function assumes resources from the same source server. */ define fluent function references(reference FHIR.Reference, resource FHIR.Resource): resource.id = Last(Split(reference.reference, '/'))````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToString(value string): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIndicatorElements
* Knowledge Artifact Metadata: ````/** * @function * @param immunization The immunization record for which the location should be retrieved * @return FHIR.name The name of the location that the immunization event occurred */ define function GetLocationNameForImmunization(immunization Immunization): ( [Location] L where immunization.location.references(L) ).only().name````
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "IMMZIND45",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm"]
  },
  "contained" : [{
    "resourceType" : "Library",
    "id" : "effective-data-requirements",
    "extension" : [{
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZIND45Logic"
      },
      {
        "url" : "name",
        "valueString" : "Initial Population"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n * As defined by Member State\n */\ndefine \"Initial Population\":\n  Immunization.occurrence is not null\n  and Immunization.occurrence.toInterval() starts during \"Measurement Period\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 0
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZIND45Logic"
      },
      {
        "url" : "name",
        "valueString" : "Denominator"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@denominator: Number of planned immunization sessions at the vaccination location during the reporting period\n@pseudocode: COUNT number of planned sessions during the reporting period\n*/\ndefine \"Denominator\":\n  \"Initial Population\""
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 1
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZIND45Logic"
      },
      {
        "url" : "name",
        "valueString" : "Numerator"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@numerator: Number of immunization sessions completed at the vaccination location during the reporting period\n@pseudocode: COUNT of immunization events WHERE \"Immunization event status\" = \"Completed\" during the reporting period\n*/\ndefine \"Numerator\":\n  \"Denominator\"\n    and Immunization.status = 'completed'"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 2
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZIND45Logic"
      },
      {
        "url" : "name",
        "valueString" : "Stratification 2"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Stratification 2\":\n  Elements.GetGeographicRegionForImmunization( Immunization )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 3
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZIND45Logic"
      },
      {
        "url" : "name",
        "valueString" : "Stratification 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@disaggregation: Vaccination location\n                 Administrative area\n*/\ndefine \"Stratification 1\":\n  Elements.GetLocationNameForImmunization( Immunization )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 4
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 5
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZIndicatorElements"
      },
      {
        "url" : "name",
        "valueString" : "GetGeographicRegionForImmunization"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @function\n * @param immunization The immunization record for which the location should be retrieved\n * @return FHIR.address The location that the immunization event occurred\n */\ndefine function GetGeographicRegionForImmunization(immunization Immunization):\n  (\n    [Location] L\n        where immunization.location.references(L)\n  ).only().address.state"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 6
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "only"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function only(locations List<Location>):\n  singleton from locations"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 7
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "references"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@description: Returns true if the given reference is to the given resource\n@comment: Returns true if the `id` element of the given resource exactly equals the tail of the given reference.\nNOTE: This function assumes resources from the same source server.\n*/\ndefine fluent function references(reference FHIR.Reference, resource FHIR.Resource):\n  resource.id = Last(Split(reference.reference, '/'))"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 8
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 9
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZIndicatorElements"
      },
      {
        "url" : "name",
        "valueString" : "GetLocationNameForImmunization"
      },
      {
        "url" : "statement",
        "valueString" : "/** \n * @function\n * @param immunization The immunization record for which the location should be retrieved\n * @return FHIR.name The name of the location that the immunization event occurred\n */\ndefine function GetLocationNameForImmunization(immunization Immunization):\n  (\n    [Location] L\n        where immunization.location.references(L)\n  ).only().name"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 10
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-logicDefinition"
    }],
    "name" : "EffectiveDataRequirements",
    "status" : "active",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/library-type",
        "code" : "module-definition"
      }]
    },
    "relatedArtifact" : [{
      "type" : "depends-on",
      "display" : "FHIR model information",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library FHIRHelpers",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
    },
    {
      "type" : "depends-on",
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZIndicatorElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library FHIRHelpers",
      "resource" : "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
    }],
    "parameter" : [{
      "name" : "Measurement Period",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "Period"
    },
    {
      "name" : "Numerator",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Stratification 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Stratification 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Denominator",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "Initial Population",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    }],
    "dataRequirement" : [{
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"]
    },
    {
      "type" : "Location",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
    },
    {
      "type" : "Location",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"]
    }]
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-effectiveDataRequirements",
    "valueCanonical" : "#effective-data-requirements"
  }],
  "url" : "http://smart.who.int/immunizations/Measure/IMMZIND45",
  "version" : "0.2.0",
  "name" : "IMMZIND45",
  "title" : "IMMZIND45",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-06-11",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.IND.45 Immunization session completion rate",
  "library" : ["http://smart.who.int/immunizations/Library/IMMZIND45Logic"],
  "scoring" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/measure-scoring",
      "code" : "proportion",
      "display" : "Proportion"
    }]
  },
  "group" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis",
      "valueCode" : "boolean"
    }],
    "population" : [{
      "id" : "IMMZ.IND.45.IP",
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "initial-population",
          "display" : "Initial Population"
        }]
      },
      "description" : "Initial Population",
      "criteria" : {
        "language" : "text/cql-identifier",
        "expression" : "Initial Population"
      }
    },
    {
      "id" : "IMMZ.IND.45.D",
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "denominator",
          "display" : "Denominator"
        }]
      },
      "description" : "Denominator",
      "criteria" : {
        "language" : "text/cql-identifier",
        "expression" : "Denominator"
      }
    },
    {
      "id" : "IMMZ.IND.45.N",
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "numerator",
          "display" : "Numerator"
        }]
      },
      "description" : "Numerator",
      "criteria" : {
        "language" : "text/cql-identifier",
        "expression" : "Numerator"
      }
    }],
    "stratifier" : [{
      "id" : "{idprefix}.S1",
      "code" : {
        "coding" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
          "code" : "DE32",
          "display" : "By-Administrative Area"
        }]
      },
      "criteria" : {
        "language" : "text/cql-identifier",
        "expression" : "Stratification 1"
      }
    },
    {
      "id" : "{idprefix}.S2",
      "code" : {
        "coding" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
          "code" : "DE32",
          "display" : "By-Administrative Area"
        }]
      },
      "criteria" : {
        "language" : "text/cql-identifier",
        "expression" : "Stratification 2"
      }
    }]
  }]
}

```
