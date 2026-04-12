# IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule**

## PlanDefinition: IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SJEInactivatedVeroCellDerivedVaccine |

 
IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule Inactivated Vero cell-derived vaccination schedule (2-dose scheme) 

* **Actions: **: **Url: **
  * : [IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule](PlanDefinition-IMMZD18SJEInactivatedVeroCellDerivedVaccine.md)
* **Actions: **: **Version: **
  * : 0.2.0
* **Actions: **: **Title: **
  * : IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule
* **Actions: **: **Status: **
  * : draft
* **Actions: **: **Date: **
  * : 2026-03-31 13:43:57+0000
* **Actions: **: **Publisher: **
  * : WHO
* **Actions: **: **Description: **
  * : IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule Inactivated Vero cell-derived vaccination schedule (2-dose scheme)
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic](Library-IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SJEInactivatedVeroCellDerivedVaccine",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "contained" : [{
    "resourceType" : "Library",
    "id" : "effective-data-requirements",
    "extension" : [{
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
        "valueString" : "IMMZEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @dataElement All Doses Administered to Patient\n */\ndefine \"Doses Administered to Patient\":\n  Elements.\"Doses Administered to Patient\" I\n    where I.occurrence.toInterval() same day or before Today"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "JE Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: JE containing Doses Administered to Patient\n*/\ndefine \"JE Doses Administered to Patient\":\n  Encounter.\"Doses Administered to Patient\" I\n  where\n    I.vaccineCode in Concepts.\"JE vaccines\""
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "JE Primary Series Doses Administered to Patient"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: JE containing Doses Administered to Patient that are in the Primary series\n*/\ndefine \"JE Primary Series Doses Administered to Patient\":\n  \"JE Doses Administered to Patient\".seriesPrimary()"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Number of JE Primary Series Doses Administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Number of JE Primary Series doses\n*/\ndefine \"Number of JE Primary Series Doses Administered\":\n  Count(\"JE Primary Series Doses Administered to Patient\")"
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "No JE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: No JE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 0\n@code: No JE primary series doses were administered-111\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n@decision: IMMZ.D2.DT.JE.Live attenuated vaccine: Live attenuated vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n@decision: IMMZ.D2.DT.JE.Live recombinant vaccine: Live recombinant vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"No JE primary series doses were administered\":\n  \"Number of JE Primary Series Doses Administered\" = 0"
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
        "valueString" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Japanese encephalitis (JE) dose 1"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Japanese encephalitis (JE) dose 1\n@description: Provision of the JE dose 1\n@trigger: Child's birth\n@pseudo: \n@triggerDate: \"Date of birth\"\n*/\ndefine \"Japanese encephalitis (JE) dose 1\":\n  Encounter.\"No JE primary series doses were administered\""
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "One JE primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: One JE primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@code: One JE primary series dose was administered-111\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n@decision: IMMZ.D2.DT.JE.Live attenuated vaccine: Live attenuated vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"One JE primary series dose was administered\":\n  \"Number of JE Primary Series Doses Administered\" = 1"
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
        "valueString" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "One JE primary series dose was administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: One JE primary series dose was administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n*/\ndefine \"One JE primary series dose was administered\":\n  Encounter.\"One JE primary series dose was administered\""
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Two JE primary series doses were administered"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@input: Two JE primary series doses were administered\n@pseudocode: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\n@code: Two JE primary series doses were administered-111\n@decision: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority\n*/\ndefine \"Two JE primary series doses were administered\":\n  \"Number of JE Primary Series Doses Administered\" = 2"
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
        "valueString" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Second JE dose from the primary series was administered. The primary series has been completed"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@complete: Second JE dose from the primary series was administered. The primary series has been completed\n@pseudocode: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"JE vaccines\")\n*/\ndefine \"Second JE dose from the primary series was administered. The primary series has been completed\":\n  Encounter.\"Two JE primary series doses were administered\""
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
        "valueString" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "JE dose 2"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: JE dose 2\n@description: Provision of the JE dose 2\n@trigger: One JE primary series dose was administered\n@pseudo: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\n@triggerDate: \"Date and time of vaccination\" where \"Vaccine type\" = \"JE vaccines\"\n*/\ndefine \"JE dose 2\":\n  \"One JE primary series dose was administered\"\n  and not \"Second JE dose from the primary series was administered. The primary series has been completed\""
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
        "valueString" : "IMMZD2DTJEEncounterElements"
      },
      {
        "url" : "name",
        "valueString" : "Date of Latest JE Dose"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@internal: Date of Latest JE Dose\n*/\ndefine \"Date of Latest JE Dose\":\n  date from start of \"JE Doses Administered to Patient\".mostRecent().occurrence.toInterval()"
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
        "valueString" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "JE dose 2 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: JE dose 2 Due Date\n@pseudocode: \"Date and time of vaccination\" (where \"Vaccine type\" = \"JE vaccines\") + 4 weeks\n*/\ndefine \"JE dose 2 Due Date\":\n  if \"JE dose 2\" then Encounter.\"Date of Latest JE Dose\" + 4 weeks\n  else null"
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
        "valueString" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "JE dose 2 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: JE dose 2 Create\n@create: JE inactivated Vero cell-derived vaccine dose 2 should be provided if dose 1 was administered at least 4 weeks ago.\n*/\ndefine \"JE dose 2 Create\":\n  if \"JE dose 2\"\n  then 'JE inactivated Vero cell-derived vaccine dose 2 should be provided if dose 1 was administered at least 4 weeks ago.' + '\nDue Date: ' + ToString(\"JE dose 2 Due Date\")\n  else ''"
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
        "valueString" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Japanese encephalitis (JE) dose 1 Due Date"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@dynamicValue: Japanese encephalitis (JE) dose 1 Due Date\n@pseudocode: \"Date of birth\"+ 6 months\n*/\ndefine \"Japanese encephalitis (JE) dose 1 Due Date\":\n  if \"Japanese encephalitis (JE) dose 1\" then Patient.birthDate + 6 months\n  else null"
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
        "valueString" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
      },
      {
        "url" : "name",
        "valueString" : "Japanese encephalitis (JE) dose 1 Create"
      },
      {
        "url" : "statement",
        "valueString" : "/*\n@output: Japanese encephalitis (JE) dose 1 Create\n@create: JE dose 1 should be provided if the client's age is 6 months or older and the country is administering the Inactivated Vero cell-derived antigen.\n*/\ndefine \"Japanese encephalitis (JE) dose 1 Create\":\n  if \"Japanese encephalitis (JE) dose 1\"\n  then 'JE dose 1 should be provided if the client\\'s age is 6 months or older and the country is administering the Inactivated Vero cell-derived antigen.' + '\nDue Date: ' + ToString(\"Japanese encephalitis (JE) dose 1 Due Date\")\n  else ''"
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
        "valueString" : "IMMZCommon"
      },
      {
        "url" : "name",
        "valueString" : "seriesPrimary"
      },
      {
        "url" : "statement",
        "valueString" : "/**\n * @description: Gets the doses from the primary series\n */\ndefine fluent function seriesPrimary(immunizations List<Immunization>):\n  immunizations I where\n    exists( I.protocolApplied pa where pa.series = 'Primary series' )"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value string): value.value"
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
        "valueString" : "ToString"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToString(value ImmunizationStatus): value.value"
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
        "valueInteger" : 20
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value dateTime): value.value"
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
        "valueString" : "ToInterval"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
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
        "valueString" : "ToDateTime"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDateTime(value instant): value.value"
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
        "valueString" : "ToDate"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToDate(value date): value.value"
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
        "valueString" : "ToQuantity"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToQuantity(quantity FHIR.Quantity):\n    case\n        when quantity is null then null\n        when quantity.value is null then null\n        when quantity.comparator is not null then\n            Message(null, true, 'FHIRHelpers.ToQuantity.ComparatorQuantityNotSupported', 'Error', 'FHIR Quantity value has a comparator and cannot be converted to a System.Quantity value.')\n        when quantity.system is null or quantity.system.value = 'http://unitsofmeasure.org'\n              or quantity.system.value = 'http://hl7.org/fhirpath/CodeSystem/calendar-units' then\n            System.Quantity { value: quantity.value.value, unit: ToCalendarUnit(Coalesce(quantity.code.value, quantity.unit.value, '1')) }\n        else\n            Message(null, true, 'FHIRHelpers.ToQuantity.InvalidFHIRQuantity', 'Error', 'Invalid FHIR Quantity code: ' & quantity.unit.value & ' (' & quantity.system.value & '|' & quantity.code.value & ')')\n    end"
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
        "valueString" : "ToCalendarUnit"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToCalendarUnit(unit System.String):\n    case unit\n        when 'ms' then 'millisecond'\n        when 's' then 'second'\n        when 'min' then 'minute'\n        when 'h' then 'hour'\n        when 'd' then 'day'\n        when 'wk' then 'week'\n        when 'mo' then 'month'\n        when 'a' then 'year'\n        else unit\n    end"
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
        "valueString" : "ToConcept"
      },
      {
        "url" : "statement",
        "valueString" : "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 28
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
        "valueInteger" : 29
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
        "valueString" : "mostRecent"
      },
      {
        "url" : "statement",
        "valueString" : "define fluent function mostRecent(immunizations List<Immunization>):\n  Last(\n    immunizations I\n      sort by start of occurrence.toInterval()\n  )"
      },
      {
        "url" : "displaySequence",
        "valueInteger" : 30
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
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTJEEncounterElements"
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
      "display" : "Library Encounter",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library Elements",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
    },
    {
      "type" : "depends-on",
      "display" : "Library WC",
      "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
    },
    {
      "type" : "depends-on",
      "display" : "Library Concepts",
      "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
    },
    {
      "type" : "depends-on",
      "display" : "Value set JE vaccines",
      "resource" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE8"
    }],
    "parameter" : [{
      "name" : "Today",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "date"
    },
    {
      "name" : "Japanese encephalitis (JE) dose 1",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "JE dose 2",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "boolean"
    },
    {
      "name" : "JE dose 2 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    },
    {
      "name" : "Japanese encephalitis (JE) dose 1 Create",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "string"
    }],
    "dataRequirement" : [{
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status", "isSubpotent", "protocolApplied", "occurrence"],
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
      "mustSupport" : ["occurrence", "protocolApplied"]
    },
    {
      "type" : "Immunization",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"],
      "mustSupport" : ["status",
      "isSubpotent",
      "occurrence",
      "vaccineCode",
      "protocolApplied"],
      "codeFilter" : [{
        "path" : "status",
        "code" : [{
          "code" : "completed"
        }]
      },
      {
        "path" : "vaccineCode",
        "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE8"
      }]
    },
    {
      "type" : "Patient",
      "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
      "mustSupport" : ["birthDate"]
    }]
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  },
  {
    "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-effectiveDataRequirements",
    "valueCanonical" : "#effective-data-requirements"
  }],
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine",
  "version" : "0.2.0",
  "name" : "IMMZD18SJEInactivatedVeroCellDerivedVaccine",
  "title" : "IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule\nInactivated Vero cell-derived vaccination schedule (2-dose scheme)",
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
  }],
  "library" : ["http://smart.who.int/immunizations/Library/IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"],
  "action" : [{
    "title" : "Japanese encephalitis (JE) dose 1",
    "description" : "Provision of the JE dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: JE dose 1 should be provided if the client's age is 6 months or older and the country is administering the Inactivated Vero cell-derived antigen.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "Japanese encephalitis (JE) dose 1",
        "language" : "text/cql-identifier",
        "expression" : "Japanese encephalitis (JE) dose 1"
      }
    }],
    "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
    "dynamicValue" : [{
      "path" : "status",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'active'"
      }
    },
    {
      "path" : "payload.contentString",
      "expression" : {
        "language" : "text/cql-identifier",
        "expression" : "Japanese encephalitis (JE) dose 1 Create"
      }
    },
    {
      "path" : "category.coding",
      "expression" : {
        "description" : "Category of communication",
        "language" : "text/cql-expression",
        "expression" : "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
      }
    },
    {
      "path" : "priority",
      "expression" : {
        "description" : "Alert priority",
        "language" : "text/cql-expression",
        "expression" : "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
      }
    }]
  },
  {
    "title" : "JE dose 2",
    "description" : "Provision of the JE dose 2\nTrigger event: One JE primary series dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" where \"Vaccine type\" = \"JE vaccines\"\nCreate condition: JE inactivated Vero cell-derived vaccine dose 2 should be provided if dose 1 was administered at least 4 weeks ago.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "JE dose 2",
        "language" : "text/cql-identifier",
        "expression" : "JE dose 2"
      }
    }],
    "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
    "dynamicValue" : [{
      "path" : "status",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'active'"
      }
    },
    {
      "path" : "payload.contentString",
      "expression" : {
        "language" : "text/cql-identifier",
        "expression" : "JE dose 2 Create"
      }
    },
    {
      "path" : "category.coding",
      "expression" : {
        "description" : "Category of communication",
        "language" : "text/cql-expression",
        "expression" : "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
      }
    },
    {
      "path" : "priority",
      "expression" : {
        "description" : "Alert priority",
        "language" : "text/cql-expression",
        "expression" : "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
      }
    }]
  }]
}

```
