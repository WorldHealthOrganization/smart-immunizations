# IMMZIND04 - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZIND04**

## Measure: IMMZIND04 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Measure/IMMZIND04 | *Version*:1.0.0 |
| Draft as of 2025-06-11 | *Computable Name*:IMMZIND04 |

 
IMMZ.IND.04 Immunization coverage for pentavalent vaccine, 3rd dose 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: IMMZIND04
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: IMMZIND04
* Knowledge Artifact Metadata: Status
  * ?: Draft
* Knowledge Artifact Metadata: Experimental
  * ?: false
* Knowledge Artifact Metadata: Description
  * ?: IMMZ.IND.04 Immunization coverage for pentavalent vaccine, 3rd dose
* Knowledge Artifact Metadata: Measure Steward
  * ?: WHO
* Knowledge Artifact Metadata: Steward Contact Details
  * ?: WHO:[http://who.int](http://who.int)
* Knowledge Artifact Metadata: Measure Metadata
* Knowledge Artifact Metadata: Version Number
  * ?: 1.0.0
* Knowledge Artifact Metadata: Measure Scoring
  * ?: Proportion
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Initial Population
  * ?: **ID**: IMMZ.IND.04.IP**Description**:Initial Population**Logic Definition**:[Initial Population](#immzind04logic-initial-population)
* Knowledge Artifact Metadata: Denominator
  * ?: **ID**: IMMZ.IND.04.D**Description**:Denominator**Logic Definition**:[Denominator](#immzind04logic-denominator)
* Knowledge Artifact Metadata: Numerator
  * ?: **ID**: IMMZ.IND.04.N**Description**:Numerator**Logic Definition**:[Numerator](#immzind04logic-numerator)
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: IMMZ.IND.04.S1**Code**: By-Administrative Area
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: IMMZ.IND.04.S2**Code**: By-Sex
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: IMMZ.IND.04.S3**Code**: By-Age group
* Knowledge Artifact Metadata: Stratifier
  * ?: **ID**: IMMZ.IND.04.S4**Code**: By-Age group
* Knowledge Artifact Metadata: Population Basis
  * ?: boolean
* Knowledge Artifact Metadata: Measure Logic
* Knowledge Artifact Metadata: Primary Library
  * ?: [IMMZIND04Logic](Library-IMMZIND04Logic.md)
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: FHIR model information**Resource**:[http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1](http://fhir.org/guides/cqf/common/4.0.1/4.0.1/Library-FHIR-ModelInfo.html)**Canonical URL**:http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library Common**Resource**:[IMMZCommon](Library-IMMZCommon.md)**Canonical URL**:http://smart.who.int/immunizations/Library/IMMZCommon
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library FHIRHelpers**Resource**:[http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1](http://fhir.org/guides/cqf/common/4.0.1/4.0.1/Library-FHIRHelpers.html)**Canonical URL**:http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library Elements**Resource**:`http://smart.who.int/immunizations/Library/IMMZIndicatorElements`**Canonical URL**:http://smart.who.int/immunizations/Library/IMMZIndicatorElements
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library Elements**Resource**:[IMMZElements](Library-IMMZElements.md)**Canonical URL**:http://smart.who.int/immunizations/Library/IMMZElements
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library Concepts**Resource**:[IMMZConcepts](Library-IMMZConcepts.md)**Canonical URL**:http://smart.who.int/immunizations/Library/IMMZConcepts
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library WC**Resource**:[WHOCommon](Library-WHOCommon.md)**Canonical URL**:http://smart.who.int/immunizations/Library/WHOCommon
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Library Age**Resource**:[IMMZAgeConcepts](Library-IMMZAgeConcepts.md)**Canonical URL**:http://smart.who.int/immunizations/Library/IMMZAgeConcepts
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Code system ISO-8601-Derived Periods**Resource**:`http://ohie.org/CodeSystem/iso-8601-derived-periods`**Canonical URL**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Code system Administrative Gender Codes**Resource**:[AdministrativeGender](http://hl7.org/fhir/R4/codesystem-administrative-gender.html)**Canonical URL**:http://hl7.org/fhir/administrative-gender
* Knowledge Artifact Metadata: Dependency
  * ?: **Description**: Value set Pentavalent vaccines**Resource**:[IMMZ.Z.DE29 ValueSet for Pentavalent vaccines](ValueSet-IMMZ.Z.DE29.md)**Canonical URL**:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE29
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: < 1 year**Code**: P0Y--P1Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: >= 1 year**Code**: P1Y--P9999Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 1 year**Code**: P1Y--P2Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 2 years**Code**: P2Y--P3Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 3 years**Code**: P3Y--P4Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 4 years**Code**: P4Y--P5Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 5 years**Code**: P5Y--P6Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 6 years**Code**: P6Y--P7Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 7 years**Code**: P7Y--P8Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 8 years**Code**: P8Y--P9Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 9 years**Code**: P9Y--P10Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 10 years**Code**: P10Y--P11Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 11 years**Code**: P11Y--P12Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 12 years**Code**: P12Y--P13Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 13 years**Code**: P13Y--P14Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 14 years**Code**: P14Y--P15Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 15 years**Code**: P15Y--P16Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 16 years**Code**: P16Y--P17Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 17 years**Code**: P17Y--P18Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 18 years**Code**: P18Y--P19Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 19 years**Code**: P19Y--P20Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 20 years**Code**: P20Y--P21Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 21 years**Code**: P21Y--P22Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 22 years**Code**: P22Y--P23Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 23 years**Code**: P23Y--P24Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 24 years**Code**: P24Y--P25Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 25 years**Code**: P25Y--P26Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 26 years**Code**: P26Y--P27Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 27 years**Code**: P27Y--P28Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 28 years**Code**: P28Y--P29Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 29 years**Code**: P29Y--P30Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 30 years**Code**: P30Y--P31Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 31 years**Code**: P31Y--P32Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 32 years**Code**: P32Y--P33Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 33 years**Code**: P33Y--P34Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 34 years**Code**: P34Y--P35Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 35 years**Code**: P35Y--P36Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 36 years**Code**: P36Y--P37Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 37 years**Code**: P37Y--P38Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 38 years**Code**: P38Y--P39Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 39 years**Code**: P39Y--P40Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 40 years**Code**: P40Y--P41Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 41 years**Code**: P41Y--P42Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 42 years**Code**: P42Y--P43Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 43 years**Code**: P43Y--P44Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 44 years**Code**: P44Y--P45Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 45 years**Code**: P45Y--P46Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 46 years**Code**: P46Y--P47Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 47 years**Code**: P47Y--P48Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 48 years**Code**: P48Y--P49Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 49 years**Code**: P49Y--P50Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 50 years**Code**: P50Y--P51Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 51 years**Code**: P51Y--P52Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 52 years**Code**: P52Y--P53Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 53 years**Code**: P53Y--P54Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 54 years**Code**: P54Y--P55Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 55 years**Code**: P55Y--P56Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 56 years**Code**: P56Y--P57Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 57 years**Code**: P57Y--P58Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 58 years**Code**: P58Y--P59Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 59 years**Code**: P59Y--P60Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 60 years**Code**: P60Y--P61Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 61 years**Code**: P61Y--P62Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 62 years**Code**: P62Y--P63Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 63 years**Code**: P63Y--P64Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 64 years**Code**: P64Y--P65Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 65 years**Code**: P65Y--P66Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 66 years**Code**: P66Y--P67Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 67 years**Code**: P67Y--P68Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 68 years**Code**: P68Y--P69Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 69 years**Code**: P69Y--P70Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 70 years**Code**: P70Y--P71Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 71 years**Code**: P71Y--P72Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 72 years**Code**: P72Y--P73Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 73 years**Code**: P73Y--P74Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 74 years**Code**: P74Y--P75Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 75 years**Code**: P75Y--P76Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 76 years**Code**: P76Y--P77Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 77 years**Code**: P77Y--P78Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 78 years**Code**: P78Y--P79Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 79 years**Code**: P79Y--P80Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 80 years**Code**: P80Y--P81Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 81 years**Code**: P81Y--P82Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 82 years**Code**: P82Y--P83Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 83 years**Code**: P83Y--P84Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 84 years**Code**: P84Y--P85Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 85 years**Code**: P85Y--P86Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 86 years**Code**: P86Y--P87Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 87 years**Code**: P87Y--P88Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 88 years**Code**: P88Y--P89Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 89 years**Code**: P89Y--P90Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 90 years**Code**: P90Y--P91Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 91 years**Code**: P91Y--P92Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 92 years**Code**: P92Y--P93Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 93 years**Code**: P93Y--P94Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 94 years**Code**: P94Y--P95Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 95 years**Code**: P95Y--P96Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 96 years**Code**: P96Y--P97Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 97 years**Code**: P97Y--P98Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 98 years**Code**: P98Y--P99Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: 99 years**Code**: P99Y--P100Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: >= 100 years**Code**: P100Y--P9999Y**System**:http://ohie.org/CodeSystem/iso-8601-derived-periods
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: Males**Code**: male**System**:http://hl7.org/fhir/administrative-gender
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: Females**Code**: female**System**:http://hl7.org/fhir/administrative-gender
* Knowledge Artifact Metadata: Direct Reference Code
  * ?: **Display**: Other/NA**Code**: other**System**:http://hl7.org/fhir/administrative-gender
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Measurement Period**Use**: In**Min Cardinality**: 0**Max Cardinality**: 1**Type**: Period
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Numerator**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: boolean
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Stratification 4**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: Coding
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Stratification 3**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: Coding
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Stratification 2**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: Coding
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Stratification 1**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: string
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Denominator**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: boolean
* Knowledge Artifact Metadata: Parameter
  * ?: **Name**: Initial Population**Use**: Out**Min Cardinality**: 0**Max Cardinality**: 1**Type**: boolean
* Knowledge Artifact Metadata:  Measure Logic Data Requirements
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Immunization**Profile(s)**:[Immunization](http://hl7.org/fhir/R4/immunization.html)**Must Support Elements**: status, isSubpotent, protocolApplied**Code Filter(s)**:**Path**: status**Code**: 
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Immunization**Profile(s)**:[Immunization](http://hl7.org/fhir/R4/immunization.html)**Must Support Elements**: status, isSubpotent, vaccineCode, protocolApplied, occurrence**Code Filter(s)**:**Path**: status**Code**: **Path**: vaccineCode**ValueSet**:[IMMZ.Z.DE29 ValueSet for Pentavalent vaccines](ValueSet-IMMZ.Z.DE29.md)
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Patient**Profile(s)**:[Patient](http://hl7.org/fhir/R4/patient.html)**Must Support Elements**: birthDate, gender
* Knowledge Artifact Metadata: Data Requirement
  * ?: **Type**: Patient**Profile(s)**:[Patient](http://hl7.org/fhir/R4/patient.html)**Must Support Elements**: use**Code Filter(s)**:**Path**: use**Code**: 
* Knowledge Artifact Metadata: Measure Logic Definitions
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZElements
* Knowledge Artifact Metadata: ````/** * @dataElement All Doses Administered to Patient */ define "Doses Administered to Patient": [Immunization] I where I.status = 'completed' and I.isSubpotent is not true````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIndicatorElements
* Knowledge Artifact Metadata: ````define "Pentavalent Doses Administered to Patient": Elements."Doses Administered to Patient" I where I.vaccineCode in Concepts."Pentavalent vaccines"````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIndicatorElements
* Knowledge Artifact Metadata: ````define "Pentavalent Doses Administered to Patient During Measurement Period": "Pentavalent Doses Administered to Patient" I where I.occurrence.toInterval() starts during "Measurement Period"````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND04Logic
* Knowledge Artifact Metadata: ````/* @numerator: Number of pentavalent doses (3rd dose) administered through routine services during the reporting period @pseudocode: COUNT of immunization events WHERE "Vaccine type" = "Pentavalent vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period */ define "Numerator": exists( Elements."Pentavalent Doses Administered to Patient During Measurement Period".getDose('3') )````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIndicatorElements
* Knowledge Artifact Metadata: ````/* @stratifier: Infant disaggregations by age */ define "Infant By Age Stratifier": case when AgeInYearsAt(end of "Measurement Period") < 1 then Age."P0Y--P1Y" when AgeInYearsAt(end of "Measurement Period") >= 1 then Age."P1Y--P9999Y" else null end````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND04Logic
* Knowledge Artifact Metadata: ````define "Stratification 4": Elements."Infant By Age Stratifier"````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIndicatorElements
* Knowledge Artifact Metadata: ````/* @stratifier: Age in Years */ define "Age Stratifier": case when AgeInYearsAt(end of "Measurement Period") < 1 then Age."P0Y--P1Y" when AgeInYearsAt(end of "Measurement Period") < 2 then Age."P1Y--P2Y" when AgeInYearsAt(end of "Measurement Period") < 3 then Age."P2Y--P3Y" when AgeInYearsAt(end of "Measurement Period") < 4 then Age."P3Y--P4Y" when AgeInYearsAt(end of "Measurement Period") < 5 then Age."P4Y--P5Y" when AgeInYearsAt(end of "Measurement Period") < 6 then Age."P5Y--P6Y" when AgeInYearsAt(end of "Measurement Period") < 7 then Age."P6Y--P7Y" when AgeInYearsAt(end of "Measurement Period") < 8 then Age."P7Y--P8Y" when AgeInYearsAt(end of "Measurement Period") < 9 then Age."P8Y--P9Y" when AgeInYearsAt(end of "Measurement Period") < 10 then Age."P9Y--P10Y" when AgeInYearsAt(end of "Measurement Period") < 11 then Age."P10Y--P11Y" when AgeInYearsAt(end of "Measurement Period") < 12 then Age."P11Y--P12Y" when AgeInYearsAt(end of "Measurement Period") < 13 then Age."P12Y--P13Y" when AgeInYearsAt(end of "Measurement Period") < 14 then Age."P13Y--P14Y" when AgeInYearsAt(end of "Measurement Period") < 15 then Age."P14Y--P15Y" when AgeInYearsAt(end of "Measurement Period") < 16 then Age."P15Y--P16Y" when AgeInYearsAt(end of "Measurement Period") < 17 then Age."P16Y--P17Y" when AgeInYearsAt(end of "Measurement Period") < 18 then Age."P17Y--P18Y" when AgeInYearsAt(end of "Measurement Period") < 19 then Age."P18Y--P19Y" when AgeInYearsAt(end of "Measurement Period") < 20 then Age."P19Y--P20Y" when AgeInYearsAt(end of "Measurement Period") < 21 then Age."P20Y--P21Y" when AgeInYearsAt(end of "Measurement Period") < 22 then Age."P21Y--P22Y" when AgeInYearsAt(end of "Measurement Period") < 23 then Age."P22Y--P23Y" when AgeInYearsAt(end of "Measurement Period") < 24 then Age."P23Y--P24Y" when AgeInYearsAt(end of "Measurement Period") < 25 then Age."P24Y--P25Y" when AgeInYearsAt(end of "Measurement Period") < 26 then Age."P25Y--P26Y" when AgeInYearsAt(end of "Measurement Period") < 27 then Age."P26Y--P27Y" when AgeInYearsAt(end of "Measurement Period") < 28 then Age."P27Y--P28Y" when AgeInYearsAt(end of "Measurement Period") < 29 then Age."P28Y--P29Y" when AgeInYearsAt(end of "Measurement Period") < 30 then Age."P29Y--P30Y" when AgeInYearsAt(end of "Measurement Period") < 31 then Age."P30Y--P31Y" when AgeInYearsAt(end of "Measurement Period") < 32 then Age."P31Y--P32Y" when AgeInYearsAt(end of "Measurement Period") < 33 then Age."P32Y--P33Y" when AgeInYearsAt(end of "Measurement Period") < 34 then Age."P33Y--P34Y" when AgeInYearsAt(end of "Measurement Period") < 35 then Age."P34Y--P35Y" when AgeInYearsAt(end of "Measurement Period") < 36 then Age."P35Y--P36Y" when AgeInYearsAt(end of "Measurement Period") < 37 then Age."P36Y--P37Y" when AgeInYearsAt(end of "Measurement Period") < 38 then Age."P37Y--P38Y" when AgeInYearsAt(end of "Measurement Period") < 39 then Age."P38Y--P39Y" when AgeInYearsAt(end of "Measurement Period") < 40 then Age."P39Y--P40Y" when AgeInYearsAt(end of "Measurement Period") < 41 then Age."P40Y--P41Y" when AgeInYearsAt(end of "Measurement Period") < 42 then Age."P41Y--P42Y" when AgeInYearsAt(end of "Measurement Period") < 43 then Age."P42Y--P43Y" when AgeInYearsAt(end of "Measurement Period") < 44 then Age."P43Y--P44Y" when AgeInYearsAt(end of "Measurement Period") < 45 then Age."P44Y--P45Y" when AgeInYearsAt(end of "Measurement Period") < 46 then Age."P45Y--P46Y" when AgeInYearsAt(end of "Measurement Period") < 47 then Age."P46Y--P47Y" when AgeInYearsAt(end of "Measurement Period") < 48 then Age."P47Y--P48Y" when AgeInYearsAt(end of "Measurement Period") < 49 then Age."P48Y--P49Y" when AgeInYearsAt(end of "Measurement Period") < 50 then Age."P49Y--P50Y" when AgeInYearsAt(end of "Measurement Period") < 51 then Age."P50Y--P51Y" when AgeInYearsAt(end of "Measurement Period") < 52 then Age."P51Y--P52Y" when AgeInYearsAt(end of "Measurement Period") < 53 then Age."P52Y--P53Y" when AgeInYearsAt(end of "Measurement Period") < 54 then Age."P53Y--P54Y" when AgeInYearsAt(end of "Measurement Period") < 55 then Age."P54Y--P55Y" when AgeInYearsAt(end of "Measurement Period") < 56 then Age."P55Y--P56Y" when AgeInYearsAt(end of "Measurement Period") < 57 then Age."P56Y--P57Y" when AgeInYearsAt(end of "Measurement Period") < 58 then Age."P57Y--P58Y" when AgeInYearsAt(end of "Measurement Period") < 59 then Age."P58Y--P59Y" when AgeInYearsAt(end of "Measurement Period") < 60 then Age."P59Y--P60Y" when AgeInYearsAt(end of "Measurement Period") < 61 then Age."P60Y--P61Y" when AgeInYearsAt(end of "Measurement Period") < 62 then Age."P61Y--P62Y" when AgeInYearsAt(end of "Measurement Period") < 63 then Age."P62Y--P63Y" when AgeInYearsAt(end of "Measurement Period") < 64 then Age."P63Y--P64Y" when AgeInYearsAt(end of "Measurement Period") < 65 then Age."P64Y--P65Y" when AgeInYearsAt(end of "Measurement Period") < 66 then Age."P65Y--P66Y" when AgeInYearsAt(end of "Measurement Period") < 67 then Age."P66Y--P67Y" when AgeInYearsAt(end of "Measurement Period") < 68 then Age."P67Y--P68Y" when AgeInYearsAt(end of "Measurement Period") < 69 then Age."P68Y--P69Y" when AgeInYearsAt(end of "Measurement Period") < 70 then Age."P69Y--P70Y" when AgeInYearsAt(end of "Measurement Period") < 71 then Age."P70Y--P71Y" when AgeInYearsAt(end of "Measurement Period") < 72 then Age."P71Y--P72Y" when AgeInYearsAt(end of "Measurement Period") < 73 then Age."P72Y--P73Y" when AgeInYearsAt(end of "Measurement Period") < 74 then Age."P73Y--P74Y" when AgeInYearsAt(end of "Measurement Period") < 75 then Age."P74Y--P75Y" when AgeInYearsAt(end of "Measurement Period") < 76 then Age."P75Y--P76Y" when AgeInYearsAt(end of "Measurement Period") < 77 then Age."P76Y--P77Y" when AgeInYearsAt(end of "Measurement Period") < 78 then Age."P77Y--P78Y" when AgeInYearsAt(end of "Measurement Period") < 79 then Age."P78Y--P79Y" when AgeInYearsAt(end of "Measurement Period") < 80 then Age."P79Y--P80Y" when AgeInYearsAt(end of "Measurement Period") < 81 then Age."P80Y--P81Y" when AgeInYearsAt(end of "Measurement Period") < 82 then Age."P81Y--P82Y" when AgeInYearsAt(end of "Measurement Period") < 83 then Age."P82Y--P83Y" when AgeInYearsAt(end of "Measurement Period") < 84 then Age."P83Y--P84Y" when AgeInYearsAt(end of "Measurement Period") < 85 then Age."P84Y--P85Y" when AgeInYearsAt(end of "Measurement Period") < 86 then Age."P85Y--P86Y" when AgeInYearsAt(end of "Measurement Period") < 87 then Age."P86Y--P87Y" when AgeInYearsAt(end of "Measurement Period") < 88 then Age."P87Y--P88Y" when AgeInYearsAt(end of "Measurement Period") < 89 then Age."P88Y--P89Y" when AgeInYearsAt(end of "Measurement Period") < 90 then Age."P89Y--P90Y" when AgeInYearsAt(end of "Measurement Period") < 91 then Age."P90Y--P91Y" when AgeInYearsAt(end of "Measurement Period") < 92 then Age."P91Y--P92Y" when AgeInYearsAt(end of "Measurement Period") < 93 then Age."P92Y--P93Y" when AgeInYearsAt(end of "Measurement Period") < 94 then Age."P93Y--P94Y" when AgeInYearsAt(end of "Measurement Period") < 95 then Age."P94Y--P95Y" when AgeInYearsAt(end of "Measurement Period") < 96 then Age."P95Y--P96Y" when AgeInYearsAt(end of "Measurement Period") < 97 then Age."P96Y--P97Y" when AgeInYearsAt(end of "Measurement Period") < 98 then Age."P97Y--P98Y" when AgeInYearsAt(end of "Measurement Period") < 99 then Age."P98Y--P99Y" when AgeInYearsAt(end of "Measurement Period") < 100 then Age."P99Y--P100Y" when AgeInYearsAt(end of "Measurement Period") >= 100 then Age."P100Y--P9999Y" else null end````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND04Logic
* Knowledge Artifact Metadata: ````define "Stratification 3": Elements."Age Stratifier"````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIndicatorElements
* Knowledge Artifact Metadata: ````/* @stratifier: By Administrative Gender of Patient Stratifier */ define "By Administrative Gender Stratifier": case when Patient.gender = 'male' then "Males" when Patient.gender = 'female' then "Females" else "Other" end````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND04Logic
* Knowledge Artifact Metadata: ````define "Stratification 2": Elements."By Administrative Gender Stratifier"````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIndicatorElements
* Knowledge Artifact Metadata: ````/* @stratifier: By Geographic Region of Patient Stratifier */ define "By Geographic Region Stratifier": First(Patient.address A where A.use in { 'home' }).state````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND04Logic
* Knowledge Artifact Metadata: ````/* @disaggregation: Administrative area Sex Age in years Age group (depending on schedule) */ define "Stratification 1": Elements."By Geographic Region Stratifier"````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND04Logic
* Knowledge Artifact Metadata: ````/* @denominator: Number in target group @pseudocode: As defined by the Member States */ define "Denominator": true````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZIND04Logic
* Knowledge Artifact Metadata: ````/* * As defined by Member State */ define "Initial Population": true````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**IMMZCommon
* Knowledge Artifact Metadata: ````/** * @description: Gets a given immunization from a list that matches the dose number */ define fluent function getDose(immunizations List<Immunization>, doseNumber String): immunizations I where exists( I.protocolApplied pa where pa.doseNumber = doseNumber )````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToString(value string): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToString(value ImmunizationStatus): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToBoolean(value boolean): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToConcept(concept FHIR.CodeableConcept): if concept is null then null else System.Concept { codes: concept.coding C return ToCode(C), display: concept.text.value }````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToCode(coding FHIR.Coding): if coding is null then null else System.Code { code: coding.code.value, system: coding.system.value, version: coding.version.value, display: coding.display.value }````
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
* Knowledge Artifact Metadata: ````define function ToString(value AdministrativeGender): value.value````
* Knowledge Artifact Metadata:  Logic Definition
  * ?: **Library Name:**FHIRHelpers
* Knowledge Artifact Metadata: ````define function ToString(value AddressUse): value.value````
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "IMMZIND04",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm"]
  },
  "contained" : [{
    "resourceType" : "Library",
    "id" : "effective-data-requirements",
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P0Y--P1Y",
        "display" : "< 1 year"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P1Y--P9999Y",
        "display" : ">= 1 year"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P1Y--P2Y",
        "display" : "1 year"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P2Y--P3Y",
        "display" : "2 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P3Y--P4Y",
        "display" : "3 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P4Y--P5Y",
        "display" : "4 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P5Y--P6Y",
        "display" : "5 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P6Y--P7Y",
        "display" : "6 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P7Y--P8Y",
        "display" : "7 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P8Y--P9Y",
        "display" : "8 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P9Y--P10Y",
        "display" : "9 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P10Y--P11Y",
        "display" : "10 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P11Y--P12Y",
        "display" : "11 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P12Y--P13Y",
        "display" : "12 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P13Y--P14Y",
        "display" : "13 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P14Y--P15Y",
        "display" : "14 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P15Y--P16Y",
        "display" : "15 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P16Y--P17Y",
        "display" : "16 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P17Y--P18Y",
        "display" : "17 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P18Y--P19Y",
        "display" : "18 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P19Y--P20Y",
        "display" : "19 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P20Y--P21Y",
        "display" : "20 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P21Y--P22Y",
        "display" : "21 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P22Y--P23Y",
        "display" : "22 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P23Y--P24Y",
        "display" : "23 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P24Y--P25Y",
        "display" : "24 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P25Y--P26Y",
        "display" : "25 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P26Y--P27Y",
        "display" : "26 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P27Y--P28Y",
        "display" : "27 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P28Y--P29Y",
        "display" : "28 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P29Y--P30Y",
        "display" : "29 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P30Y--P31Y",
        "display" : "30 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P31Y--P32Y",
        "display" : "31 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P32Y--P33Y",
        "display" : "32 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P33Y--P34Y",
        "display" : "33 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P34Y--P35Y",
        "display" : "34 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P35Y--P36Y",
        "display" : "35 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P36Y--P37Y",
        "display" : "36 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P37Y--P38Y",
        "display" : "37 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P38Y--P39Y",
        "display" : "38 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P39Y--P40Y",
        "display" : "39 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P40Y--P41Y",
        "display" : "40 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P41Y--P42Y",
        "display" : "41 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P42Y--P43Y",
        "display" : "42 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P43Y--P44Y",
        "display" : "43 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P44Y--P45Y",
        "display" : "44 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P45Y--P46Y",
        "display" : "45 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P46Y--P47Y",
        "display" : "46 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P47Y--P48Y",
        "display" : "47 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P48Y--P49Y",
        "display" : "48 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P49Y--P50Y",
        "display" : "49 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P50Y--P51Y",
        "display" : "50 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P51Y--P52Y",
        "display" : "51 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P52Y--P53Y",
        "display" : "52 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P53Y--P54Y",
        "display" : "53 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P54Y--P55Y",
        "display" : "54 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P55Y--P56Y",
        "display" : "55 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P56Y--P57Y",
        "display" : "56 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P57Y--P58Y",
        "display" : "57 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P58Y--P59Y",
        "display" : "58 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P59Y--P60Y",
        "display" : "59 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P60Y--P61Y",
        "display" : "60 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P61Y--P62Y",
        "display" : "61 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P62Y--P63Y",
        "display" : "62 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P63Y--P64Y",
        "display" : "63 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P64Y--P65Y",
        "display" : "64 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P65Y--P66Y",
        "display" : "65 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P66Y--P67Y",
        "display" : "66 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P67Y--P68Y",
        "display" : "67 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P68Y--P69Y",
        "display" : "68 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P69Y--P70Y",
        "display" : "69 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P70Y--P71Y",
        "display" : "70 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P71Y--P72Y",
        "display" : "71 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P72Y--P73Y",
        "display" : "72 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P73Y--P74Y",
        "display" : "73 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P74Y--P75Y",
        "display" : "74 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P75Y--P76Y",
        "display" : "75 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P76Y--P77Y",
        "display" : "76 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P77Y--P78Y",
        "display" : "77 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P78Y--P79Y",
        "display" : "78 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P79Y--P80Y",
        "display" : "79 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P80Y--P81Y",
        "display" : "80 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P81Y--P82Y",
        "display" : "81 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P82Y--P83Y",
        "display" : "82 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P83Y--P84Y",
        "display" : "83 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P84Y--P85Y",
        "display" : "84 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P85Y--P86Y",
        "display" : "85 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P86Y--P87Y",
        "display" : "86 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P87Y--P88Y",
        "display" : "87 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P88Y--P89Y",
        "display" : "88 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P89Y--P90Y",
        "display" : "89 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P90Y--P91Y",
        "display" : "90 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P91Y--P92Y",
        "display" : "91 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P92Y--P93Y",
        "display" : "92 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P93Y--P94Y",
        "display" : "93 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P94Y--P95Y",
        "display" : "94 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P95Y--P96Y",
        "display" : "95 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P96Y--P97Y",
        "display" : "96 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P97Y--P98Y",
        "display" : "97 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P98Y--P99Y",
        "display" : "98 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P99Y--P100Y",
        "display" : "99 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://ohie.org/CodeSystem/iso-8601-derived-periods",
        "code" : "P100Y--P9999Y",
        "display" : ">= 100 years"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "male",
        "display" : "Males"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "female",
        "display" : "Females"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-directReferenceCode",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "other",
        "display" : "Other/NA"
      }
    },
    {
      "extension" : [{
        "url" : "libraryName",
        "valueString" : "IMMZElements"
      },
      {
        "url" : "name",
        "valueString" : "Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @dataElement All Doses Administered to Patient\n */\ndefine \"Doses Administered to Patient\":\n  [Immunization] I\n    where I.status = 'completed'\n    and I.isSubpotent is not true"
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
        "valueString" : "IMMZIndicatorElements"
      },
      {
        "url" : "name",
        "valueString" : "Pentavalent Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Pentavalent Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I \n    where I.vaccineCode in Concepts.\"Pentavalent vaccines\""
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
        "valueString" : "IMMZIndicatorElements"
      },
      {
        "url" : "name",
        "valueString" : "Pentavalent Doses Administered to Patient During Measurement Period"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Pentavalent Doses Administered to Patient During Measurement Period\":\n  \"Pentavalent Doses Administered to Patient\" I\n    where I.occurrence.toInterval() starts during \"Measurement Period\""
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
        "valueString" : "IMMZIND04Logic"
      },
      {
        "url" : "name",
        "valueString" : "Numerator"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@numerator: Number of pentavalent doses (3rd dose) administered through routine services during the reporting period\n@pseudocode: COUNT of immunization events WHERE \"Vaccine type\" = \"Pentavalent vaccines\" for the 3rd dose in the primary series AND \"Date and time of vaccination\" is during the reporting period\n*/\ndefine \"Numerator\":\n  exists( Elements.\"Pentavalent Doses Administered to Patient During Measurement Period\".getDose('3') )"
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
        "valueString" : "IMMZIndicatorElements"
      },
      {
        "url" : "name",
        "valueString" : "Infant By Age Stratifier"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@stratifier: Infant disaggregations by age\n*/\ndefine \"Infant By Age Stratifier\":\n    case \n        when AgeInYearsAt(end of \"Measurement Period\") < 1 then Age.\"P0Y--P1Y\"\n        when AgeInYearsAt(end of \"Measurement Period\") >= 1 then Age.\"P1Y--P9999Y\"\n        else null\n    end"
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
        "valueString" : "IMMZIND04Logic"
      },
      {
        "url" : "name",
        "valueString" : "Stratification 4"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Stratification 4\":\n\tElements.\"Infant By Age Stratifier\""
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
        "valueString" : "Age Stratifier"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@stratifier: Age in Years\n*/\ndefine \"Age Stratifier\":\n  case\n    when AgeInYearsAt(end of \"Measurement Period\") < 1 then Age.\"P0Y--P1Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 2 then Age.\"P1Y--P2Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 3 then Age.\"P2Y--P3Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 4 then Age.\"P3Y--P4Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 5 then Age.\"P4Y--P5Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 6 then Age.\"P5Y--P6Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 7 then Age.\"P6Y--P7Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 8 then Age.\"P7Y--P8Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 9 then Age.\"P8Y--P9Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 10 then Age.\"P9Y--P10Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 11 then Age.\"P10Y--P11Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 12 then Age.\"P11Y--P12Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 13 then Age.\"P12Y--P13Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 14 then Age.\"P13Y--P14Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 15 then Age.\"P14Y--P15Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 16 then Age.\"P15Y--P16Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 17 then Age.\"P16Y--P17Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 18 then Age.\"P17Y--P18Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 19 then Age.\"P18Y--P19Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 20 then Age.\"P19Y--P20Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 21 then Age.\"P20Y--P21Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 22 then Age.\"P21Y--P22Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 23 then Age.\"P22Y--P23Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 24 then Age.\"P23Y--P24Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 25 then Age.\"P24Y--P25Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 26 then Age.\"P25Y--P26Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 27 then Age.\"P26Y--P27Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 28 then Age.\"P27Y--P28Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 29 then Age.\"P28Y--P29Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 30 then Age.\"P29Y--P30Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 31 then Age.\"P30Y--P31Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 32 then Age.\"P31Y--P32Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 33 then Age.\"P32Y--P33Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 34 then Age.\"P33Y--P34Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 35 then Age.\"P34Y--P35Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 36 then Age.\"P35Y--P36Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 37 then Age.\"P36Y--P37Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 38 then Age.\"P37Y--P38Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 39 then Age.\"P38Y--P39Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 40 then Age.\"P39Y--P40Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 41 then Age.\"P40Y--P41Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 42 then Age.\"P41Y--P42Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 43 then Age.\"P42Y--P43Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 44 then Age.\"P43Y--P44Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 45 then Age.\"P44Y--P45Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 46 then Age.\"P45Y--P46Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 47 then Age.\"P46Y--P47Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 48 then Age.\"P47Y--P48Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 49 then Age.\"P48Y--P49Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 50 then Age.\"P49Y--P50Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 51 then Age.\"P50Y--P51Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 52 then Age.\"P51Y--P52Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 53 then Age.\"P52Y--P53Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 54 then Age.\"P53Y--P54Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 55 then Age.\"P54Y--P55Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 56 then Age.\"P55Y--P56Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 57 then Age.\"P56Y--P57Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 58 then Age.\"P57Y--P58Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 59 then Age.\"P58Y--P59Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 60 then Age.\"P59Y--P60Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 61 then Age.\"P60Y--P61Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 62 then Age.\"P61Y--P62Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 63 then Age.\"P62Y--P63Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 64 then Age.\"P63Y--P64Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 65 then Age.\"P64Y--P65Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 66 then Age.\"P65Y--P66Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 67 then Age.\"P66Y--P67Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 68 then Age.\"P67Y--P68Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 69 then Age.\"P68Y--P69Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 70 then Age.\"P69Y--P70Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 71 then Age.\"P70Y--P71Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 72 then Age.\"P71Y--P72Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 73 then Age.\"P72Y--P73Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 74 then Age.\"P73Y--P74Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 75 then Age.\"P74Y--P75Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 76 then Age.\"P75Y--P76Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 77 then Age.\"P76Y--P77Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 78 then Age.\"P77Y--P78Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 79 then Age.\"P78Y--P79Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 80 then Age.\"P79Y--P80Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 81 then Age.\"P80Y--P81Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 82 then Age.\"P81Y--P82Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 83 then Age.\"P82Y--P83Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 84 then Age.\"P83Y--P84Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 85 then Age.\"P84Y--P85Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 86 then Age.\"P85Y--P86Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 87 then Age.\"P86Y--P87Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 88 then Age.\"P87Y--P88Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 89 then Age.\"P88Y--P89Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 90 then Age.\"P89Y--P90Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 91 then Age.\"P90Y--P91Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 92 then Age.\"P91Y--P92Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 93 then Age.\"P92Y--P93Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 94 then Age.\"P93Y--P94Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 95 then Age.\"P94Y--P95Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 96 then Age.\"P95Y--P96Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 97 then Age.\"P96Y--P97Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 98 then Age.\"P97Y--P98Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 99 then Age.\"P98Y--P99Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") < 100 then Age.\"P99Y--P100Y\"\n    when AgeInYearsAt(end of \"Measurement Period\") >= 100 then Age.\"P100Y--P9999Y\"\n    else null\n  end"
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
        "valueString" : "IMMZIND04Logic"
      },
      {
        "url" : "name",
        "valueString" : "Stratification 3"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Stratification 3\":\n\tElements.\"Age Stratifier\""
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
        "valueString" : "IMMZIndicatorElements"
      },
      {
        "url" : "name",
        "valueString" : "By Administrative Gender Stratifier"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@stratifier: By Administrative Gender of Patient Stratifier\n*/\ndefine \"By Administrative Gender Stratifier\":\n    case \n        when Patient.gender = 'male' then \"Males\"\n        when Patient.gender = 'female' then \"Females\"\n        else \"Other\"\n    end"
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
        "valueString" : "IMMZIND04Logic"
      },
      {
        "url" : "name",
        "valueString" : "Stratification 2"
      },
      {
        "url" : "statement",
        "valueString" : "define \"Stratification 2\":\n\tElements.\"By Administrative Gender Stratifier\""
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
        "valueString" : "By Geographic Region Stratifier"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@stratifier: By Geographic Region of Patient Stratifier\n*/\ndefine \"By Geographic Region Stratifier\":\n    First(Patient.address A where A.use in { 'home' }).state"
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
        "valueString" : "IMMZIND04Logic"
      },
      {
        "url" : "name",
        "valueString" : "Stratification 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@disaggregation: Administrative area\n                 Sex\n                 Age in years\n                 Age group (depending on schedule)\n*/\ndefine \"Stratification 1\":\n\tElements.\"By Geographic Region Stratifier\""
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
        "valueString" : "IMMZIND04Logic"
      },
      {
        "url" : "name",
        "valueString" : "Denominator"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@denominator: Number in target group\n@pseudocode: As defined by the Member States\n*/\ndefine \"Denominator\":\n  true"
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
        "valueString" : "IMMZIND04Logic"
      },
      {
        "url" : "name",
        "valueString" : "Initial Population"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n * As defined by Member State\n */\ndefine \"Initial Population\":\n  true"
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
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "getDose"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets a given immunization from a list that matches the dose number\n */\ndefine fluent function getDose(immunizations List<Immunization>, doseNumber String):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.doseNumber = doseNumber )"
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
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueString" : "FHIRHelpers"
      },
      {
        "url" : "name",
        "valueString" : "ToBoolean"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToBoolean(value boolean): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 17
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 18
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
        "valueString" : "ToCode"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCode(coding FHIR.Coding):\n    if coding is null then\n        null\n    else\n        System.Code {\n          code: coding.code.value,\n          system: coding.system.value,\n          version: coding.version.value,\n          display: coding.display.value\n        }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 19
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
        "valueInteger" : 20
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
        "valueInteger" : 21
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
        "valueInteger" : 22
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
        "valueInteger" : 23
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
        "valueInteger" : 24
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
        "valueInteger" : 25
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
        "valueInteger" : 26
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
        "valueString" : "define function ToString(value AdministrativeGender): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 27
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
        "valueString" : "define function ToString(value AddressUse): value.value"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 28
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
      "display" : "Library Common",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZCommon"
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
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library Age",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZAgeConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Code system ISO-8601-Derived Periods",
      "resource" : "http://ohie.org/CodeSystem/iso-8601-derived-periods"
    },
    {
      "type" : "depends-on",
      "display" : "Code system Administrative Gender Codes",
      "resource" : "http://hl7.org/fhir/administrative-gender"
    },
    {
      "type" : "depends-on",
      "display" : "Value set Pentavalent vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE29"
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
      "name" : "Stratification 4",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "Coding"
    },
    {
      "name" : "Stratification 3",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "Coding"
    },
    {
      "name" : "Stratification 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "Coding"
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
      "mustSupport" : ["status", "isSubpotent", "protocolApplied"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      }]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status",
      "isSubpotent",
      "vaccineCode",
      "protocolApplied",
      "occurrence"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      },
      {
        "path" : "vaccineCode",
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE29"
      }]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["birthDate", "gender"]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["use"],
      "codeFilter" : [{
        "path" : "use",
        "code" : [{
          "code" : "home"
        }]
      }]
    }]
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-effectiveDataRequirements",
    "valueCanonical" : "#effective-data-requirements"
  }],
  "url" : "http://smart.who.int/immunizations/Measure/IMMZIND04",
  "version" : "1.0.0",
  "name" : "IMMZIND04",
  "title" : "IMMZIND04",
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
  "description" : "IMMZ.IND.04 Immunization coverage for pentavalent vaccine, 3rd dose",
  "library" : ["http://smart.who.int/immunizations/Library/IMMZIND04Logic"],
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
      "id" : "IMMZ.IND.04.IP",
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
      "id" : "IMMZ.IND.04.D",
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
      "id" : "IMMZ.IND.04.N",
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
      "id" : "IMMZ.IND.04.S1",
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
      "id" : "IMMZ.IND.04.S2",
      "code" : {
        "coding" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
          "code" : "DE31",
          "display" : "By-Sex"
        }]
      },
      "criteria" : {
        "language" : "text/cql-identifier",
        "expression" : "Stratification 2"
      }
    },
    {
      "id" : "IMMZ.IND.04.S3",
      "code" : {
        "coding" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
          "code" : "DE33",
          "display" : "By-Age group"
        }]
      },
      "criteria" : {
        "language" : "text/cql-identifier",
        "expression" : "Stratification 3"
      }
    },
    {
      "id" : "IMMZ.IND.04.S4",
      "code" : {
        "coding" : [{
          "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.I",
          "code" : "DE33",
          "display" : "By-Age group"
        }]
      },
      "criteria" : {
        "language" : "text/cql-identifier",
        "expression" : "Stratification 4"
      }
    }]
  }]
}

```
