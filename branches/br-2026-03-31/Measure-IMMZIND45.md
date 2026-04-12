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
  * ?: **Type**: Immunization**Profile(s)**:[Immunization](http://hl7.org/fhir/R4/immunization.html)**Must Support Elements**: occurrence, status, location
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Patient**Profile(s)**:[Patient](http://hl7.org/fhir/R4/patient.html)**Must Support Elements**: birthDate
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Resource**Profile(s)**:[Resource](http://hl7.org/fhir/R4/resource.html)**Must Support Elements**: id
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Location**Profile(s)**:[Location](http://hl7.org/fhir/R4/location.html)**Must Support Elements**: address, address.state, name
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
  * ?: **Library Name:**WHOCommon
* Knowledge Artifact Metadata: ````/* From FHIRCommon 4.1.0: */ /* @description: Normalizes a value that is a choice of timing-valued types to an equivalent interval @comment: Normalizes a choice type of FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instance, FHIR.string, FHIR.Age, or FHIR.Range types to an equivalent interval. This selection of choice types is a superset of the majority of choice types that are used as possible representations for timing-valued elements in FHIR, allowing this function to be used across any resource. The input can be provided as a dateTime, Period, Timing, instant, string, Age, or Range. The intent of this function is to provide a clear and concise mechanism to treat single elements that have multiple possible representations as intervals so that logic doesn't have to account for the variability. More complex calculations (such as medication request period or dispense period calculation) need specific guidance and consideration. That guidance may make use of this function, but the focus of this function is on single element calculations where the semantics are unambiguous. If the input is a dateTime, the result a DateTime Interval beginning and ending on that dateTime. If the input is a Period, the result is a DateTime Interval. If the input is a Timing, an error is raised indicating a single interval cannot be computed from a Timing. If the input is an instant, the result is a DateTime Interval beginning and ending on that instant. If the input is a string, an error is raised indicating a single interval cannot be computed from a string. If the input is an Age, the result is a DateTime Interval beginning when the patient was the given Age, and ending immediately prior to when the patient was the given Age plus one year. If the input is a Range, the result is a DateTime Interval beginning when the patient was the Age given by the low end of the Range, and ending immediately prior to when the patient was the Age given by the high end of the Range plus one year. NOTE: Due to the complexity of determining a single interval from a Timing or String type, this function will throw a run-time exception if it is used with a Timing or String. */ define fluent function toInterval(choice Choice<FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instant, FHIR.string, FHIR.Age, FHIR.Range>): case when choice is FHIR.dateTime then Interval[FHIRHelpers.ToDateTime(choice as FHIR.dateTime), FHIRHelpers.ToDateTime(choice as FHIR.dateTime)] when choice is FHIR.Period then FHIRHelpers.ToInterval(choice as FHIR.Period) when choice is FHIR.instant then Interval[FHIRHelpers.ToDateTime(choice as FHIR.instant), FHIRHelpers.ToDateTime(choice as FHIR.instant)] when choice is FHIR.Age then Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age), FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age) + 1 year) when choice is FHIR.Range then Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).low), FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).high) + 1 year) when choice is FHIR.Timing then Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a Timing value is not supported') when choice is FHIR.string then Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported') else null as Interval<DateTime> end````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToDateTime(value dateTime): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToInterval(period FHIR.Period): if period is null then null else if period."start" is null then Interval(period."start".value, period."end".value] else Interval[period."start".value, period."end".value]````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToDateTime(value instant): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToDate(value date): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToQuantity(quantity FHIR.Quantity): case when quantity is null then null when quantity.value is null then null when quantity.comparator is not null then Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.') when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org' or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) } else Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')') end````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToCalendarUnit(unit System.String): case unit when 'ms' then 'millisecond' when 's' then 'second' when 'min' then 'minute' when 'h' then 'hour' when 'd' then 'day' when 'wk' then 'week' when 'mo' then 'month' when 'a' then 'year' else unit end````
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
        "valueString" : "WHOCommon"
      },
      {
        "url" : "name",
        "valueString" : "toInterval"
      },
      {
        "url" : "statement",
        "valueString" : "/*\nFrom FHIRCommon 4.1.0:\n*/\n\n/*\n@description: Normalizes a value that is a choice of timing-valued types to an equivalent interval\n@comment: Normalizes a choice type of FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instance, FHIR.string, FHIR.Age, or FHIR.Range types\nto an equivalent interval. This selection of choice types is a superset of the majority of choice types that are used as possible\nrepresentations for timing-valued elements in FHIR, allowing this function to be used across any resource.\n\nThe input can be provided as a dateTime, Period, Timing, instant, string, Age, or Range.\nThe intent of this function is to provide a clear and concise mechanism to treat single\nelements that have multiple possible representations as intervals so that logic doesn't have to account\nfor the variability. More complex calculations (such as medication request period or dispense period\ncalculation) need specific guidance and consideration. That guidance may make use of this function, but\nthe focus of this function is on single element calculations where the semantics are unambiguous.\nIf the input is a dateTime, the result a DateTime Interval beginning and ending on that dateTime.\nIf the input is a Period, the result is a DateTime Interval.\nIf the input is a Timing, an error is raised indicating a single interval cannot be computed from a Timing.\nIf the input is an instant, the result is a DateTime Interval beginning and ending on that instant.\nIf the input is a string, an error is raised indicating a single interval cannot be computed from a string.\nIf the input is an Age, the result is a DateTime Interval beginning when the patient was the given Age,\nand ending immediately prior to when the patient was the given Age plus one year.\nIf the input is a Range, the result is a DateTime Interval beginning when the patient was the Age given\nby the low end of the Range, and ending immediately prior to when the patient was the Age given by the\nhigh end of the Range plus one year.\n\nNOTE: Due to the\ncomplexity of determining a single interval from a Timing or String type, this function will throw a run-time exception if it is used\nwith a Timing or String.\n*/\ndefine fluent function toInterval(choice Choice<FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instant, FHIR.string, FHIR.Age, FHIR.Range>):\n  case\n    when choice is FHIR.dateTime then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.dateTime), FHIRHelpers.ToDateTime(choice as FHIR.dateTime)]\n    when choice is FHIR.Period then\n      FHIRHelpers.ToInterval(choice as FHIR.Period)\n    when choice is FHIR.instant then\n      Interval[FHIRHelpers.ToDateTime(choice as FHIR.instant), FHIRHelpers.ToDateTime(choice as FHIR.instant)]\n    when choice is FHIR.Age then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age) + 1 year)\n    when choice is FHIR.Range then\n      Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).low),\n        FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).high) + 1 year)\n    when choice is FHIR.Timing then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a Timing value is not supported')\n    when choice is FHIR.string then\n      Message(null as Interval<DateTime>, true, 'NOT_IMPLEMENTED', 'Error', 'Calculation of an interval from a String value is not supported')\n    else\n      null as Interval<DateTime>\n  end"
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
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 10
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 11
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
        "valueInteger" : 12
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
        "valueInteger" : 13
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
        "valueInteger" : 14
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
        "valueInteger" : 15
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
        "valueInteger" : 16
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
        "valueInteger" : 17
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
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["occurrence", "status", "location"]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["birthDate"]
    },
    {
      "type" : "Resource",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Resource"],
      "mustSupport" : ["id"]
    },
    {
      "type" : "Location",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Location"],
      "mustSupport" : ["address", "address.state", "name"]
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
