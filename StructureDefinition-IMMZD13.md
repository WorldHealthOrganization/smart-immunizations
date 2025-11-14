# IMMZ.D13.Update client record - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D13.Update client record**

## Logical Model: IMMZ.D13.Update client record 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZD13 | *Version*:0.2.0 |
| Active as of 2025-01-10 | *Computable Name*:IMMZ_D13_Update_client_record |

 
Data elements for the IMMZ.D13.Update client record Data Dictionary Activity. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZD13)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZD13.csv), [Excel](StructureDefinition-IMMZD13.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZD13",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap",
      "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-behave",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13",
  "version" : "0.2.0",
  "name" : "IMMZ_D13_Update_client_record",
  "title" : "IMMZ.D13.Update client record",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-01-10",
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
  "description" : "Data elements for the IMMZ.D13.Update client record Data Dictionary Activity.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "IMMZD13.to.Observation",
      "uri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZObservation",
      "name" : "Mapping from the IMMZ.D13 to the IMMZObservation profile"
    },
    {
      "identity" : "IMMZD13.to.Immunization",
      "uri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZImmunization",
      "name" : "Mapping from the IMMZ.D13 to the IMMZImmunization profile"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZD13",
        "path" : "IMMZD13",
        "short" : "IMMZ.D13.Update client record",
        "definition" : "Data elements for the IMMZ.D13.Update client record Data Dictionary Activity.",
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation"
          },
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization"
          }
        ]
      },
      {
        "id" : "IMMZD13.patient",
        "path" : "IMMZD13.patient",
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
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation.subject"
          },
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.patient"
          }
        ]
      },
      {
        "id" : "IMMZD13.birthDose",
        "path" : "IMMZD13.birthDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE263"
          }
        ],
        "short" : "Birth dose",
        "definition" : "Indicates if the client received a dose within 24 hours of birth. Whether a birth dose is counted as part of the primary series will depend on the antigen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-1",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Hepatitis B-containing vaccines OR Poliovirus-containing vaccines.",
            "expression" : "(%resource.vaccineType.value != 'DE6' and %resource.vaccineType.value != 'DE14') or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfDose",
        "path" : "IMMZD13.typeOfDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE258"
          }
        ],
        "short" : "Type of dose",
        "definition" : "The type of dose in a series that the client received ",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE258"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.protocolApplied.series"
          }
        ]
      },
      {
        "id" : "IMMZD13.completedThePrimaryVaccinationSeries",
        "path" : "IMMZD13.completedThePrimaryVaccinationSeries",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE203"
          }
        ],
        "short" : "Completed the primary vaccination series",
        "definition" : "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD13.completedTheBoosterSeries",
        "path" : "IMMZD13.completedTheBoosterSeries",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE257"
          }
        ],
        "short" : "Completed the booster series",
        "definition" : "Indicates if the client has completed the booster series of a product/antigen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD13.dateWhenPrimaryVaccinationSeriesWasCompleted",
        "path" : "IMMZD13.dateWhenPrimaryVaccinationSeriesWasCompleted",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE242"
          }
        ],
        "short" : "Date when primary vaccination series was completed",
        "definition" : "The date when the client completed the primary vaccination series (per product/antigen)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqPrimaryCompleted-1",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE203 Completed the primary vaccination series is Yes",
            "expression" : "%resource.completedTheBoosterSeries.value = false or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          },
          {
            "key" : "IMMZ-D-dateOccurred-1",
            "severity" : "error",
            "human" : "Date ≤ current date",
            "expression" : "not($this.exists()) or $this.value <= today()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation.valueDateTime"
          }
        ]
      },
      {
        "id" : "IMMZD13.hivStatus",
        "path" : "IMMZD13.hivStatus",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE204"
          },
          {
            "system" : "http://loinc.org",
            "code" : "55277-8",
            "display" : "HIV Status"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "278977008",
            "display" : "HIV status"
          }
        ],
        "short" : "HIV status",
        "definition" : "The current HIV status of the client",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE204"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation.valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfPoliovirusDose",
        "path" : "IMMZD13.typeOfPoliovirusDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE212"
          },
          {
            "system" : "http://id.who.int/icd/release/11/mms",
            "code" : "XM0N50",
            "display" : "Poliomyelitis vaccines"
          }
        ],
        "short" : "Type of poliovirus dose",
        "definition" : "The type of the poliovirus vaccine dose administered to the client",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-4",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is BCG vaccines OR Hepatitis B-containing vaccines",
            "expression" : "(%resource.vaccineType.value != 'DE1' and %resource.vaccineType.value != 'DE6') or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE212"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[typeOfPolio].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfJeDose",
        "path" : "IMMZD13.typeOfJeDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE216"
          }
        ],
        "short" : "Type of JE dose",
        "definition" : "The type of Japanese encephalitis (JE) vaccine dose administered to the client",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-8",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is JE vaccines",
            "expression" : "%resource.vaccineType.value != 'DE8' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE216"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[typeOfJe].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfTbeDose",
        "path" : "IMMZD13.typeOfTbeDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE220"
          }
        ],
        "short" : "Type of TBE dose",
        "definition" : "The type of tick-borne encephalitis (TBE) vaccine dose administered",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-9",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is TBE vaccines",
            "expression" : "%resource.vaccineType.value != 'DE20' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE220"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[typeOfTbe].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfTyphoidDose",
        "path" : "IMMZD13.typeOfTyphoidDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE225"
          }
        ],
        "short" : "Type of typhoid dose",
        "definition" : "The type of typhoid vaccine dose administered to the client",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-10",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Typhoid vaccines",
            "expression" : "%resource.vaccineType.value != 'DE21' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE225"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[typeOfTyphoid].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfCholeraDose",
        "path" : "IMMZD13.typeOfCholeraDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE229"
          }
        ],
        "short" : "Type of cholera dose",
        "definition" : "The type of cholera vaccine dose administered to the client",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-11",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Cholera vaccines",
            "expression" : "%resource.vaccineType.value != 'DE2' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE229"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[typeOfCholera].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfMeningococcalDose",
        "path" : "IMMZD13.typeOfMeningococcalDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE232"
          }
        ],
        "short" : "Type of meningococcal dose",
        "definition" : "The type of meningococcal vaccine dose administered to the client",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-12",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Meningococcal vaccines",
            "expression" : "%resource.vaccineType.value != 'DE10' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE232"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[typeOfMeningococcal].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfHepatitisADose",
        "path" : "IMMZD13.typeOfHepatitisADose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE237"
          }
        ],
        "short" : "Type of hepatitis A dose",
        "definition" : "The type of hepatitis A-containing vaccine dose administered to the client",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-13",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Hepatitis A-containing vaccines",
            "expression" : "%resource.vaccineType.value != 'DE5' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE237"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[typeOfHepatitisA].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.typeOfHepatitisBDose",
        "path" : "IMMZD13.typeOfHepatitisBDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE254"
          }
        ],
        "short" : "Type of hepatitis B dose",
        "definition" : "The type of hepatitis B-containing vaccine dose administered to the client",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-14",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE6 vaccine type is Hepatitis B-containing vaccines",
            "expression" : "%resource.vaccineType.value != 'DE6' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE254"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[typeOfHepatitisB].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.vaccineType",
        "path" : "IMMZD13.vaccineType",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE19"
          },
          {
            "system" : "http://loinc.org",
            "code" : "39236-5",
            "display" : "Vaccine code (CPT [Current Procedural Terminology]) CPHS (Children's Preventative Health System)"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "787859002",
            "display" : "Vaccine product (medicinal product)"
          }
        ],
        "short" : "Vaccine type",
        "definition" : "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine library list of codes applies in this data element",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.VS"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.vaccineCode"
          }
        ]
      },
      {
        "id" : "IMMZD13.dateAndTimeOfVaccination",
        "path" : "IMMZD13.dateAndTimeOfVaccination",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE20"
          },
          {
            "system" : "http://loinc.org",
            "code" : "30952-6",
            "display" : "Date and time of vaccination"
          }
        ],
        "short" : "Date and time of vaccination",
        "definition" : "Represents the visit/encounter date, which is the date and time when each vaccine was administered to the client",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.occurrenceDateTime"
          }
        ]
      },
      {
        "id" : "IMMZD13.contactDate",
        "path" : "IMMZD13.contactDate",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE201"
          },
          {
            "system" : "http://loinc.org",
            "code" : "21975-8",
            "display" : "Date last contact"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "406543005",
            "display" : "Date of visit"
          }
        ],
        "short" : "Contact date",
        "definition" : "The date and time of the client's contact",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-dateTimeOccurred-1",
            "severity" : "error",
            "human" : "DateTime ≤ current DateTime",
            "expression" : "not($this.exists()) or $this.value <= now()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation.valueDateTime"
          }
        ]
      },
      {
        "id" : "IMMZD13.ancContactNumber",
        "path" : "IMMZD13.ancContactNumber",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE202"
          },
          {
            "system" : "http://loinc.org",
            "code" : "75612-2",
            "display" : "Number of visits to this health-care entity in the last 12 months"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "3401000175105",
            "display" : "Total number of prenatal care visits"
          }
        ],
        "short" : "ANC contact number",
        "definition" : "The antenatal care (ANC) contact or visit number ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Observation",
            "map" : "Observation.valueInteger"
          }
        ]
      },
      {
        "id" : "IMMZD13.doseNumber",
        "path" : "IMMZD13.doseNumber",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE124"
          }
        ],
        "short" : "Dose number",
        "definition" : "Vaccine dose number including dose number within series",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqGTEZero-1",
            "severity" : "error",
            "human" : "Must be positive decimal value greater than or equal to zero (≥0)",
            "expression" : "not($this.exists()) or $this.value >= 0",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.protocolApplied.doseNumberString"
          }
        ]
      },
      {
        "id" : "IMMZD13.immunizationEventStatus",
        "path" : "IMMZD13.immunizationEventStatus",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE1"
          }
        ],
        "short" : "Immunization event status",
        "definition" : "The current status of the individual immunization event",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE1"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Imunization.status"
          }
        ]
      },
      {
        "id" : "IMMZD13.reasonVaccineWasNotAdministered",
        "path" : "IMMZD13.reasonVaccineWasNotAdministered",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE5"
          },
          {
            "system" : "http://id.who.int/icd/release/11/mms",
            "code" : "QC04",
            "display" : "Immunization not carried out"
          }
        ],
        "short" : "Reason vaccine was not administered",
        "definition" : "The reason this immunization event was not performed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-statusNotDone-1",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE1 Immunization event status is Not Done",
            "expression" : "%resource.immunizationEventStatus.value = 'DE4' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE5"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.statusReason"
          }
        ]
      },
      {
        "id" : "IMMZD13.vaccineBrand",
        "path" : "IMMZD13.vaccineBrand",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE18"
          }
        ],
        "short" : "Vaccine brand",
        "definition" : "The brand or trade name used to refer to the vaccine received",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE18"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[vaccineBrand].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.liveVaccine",
        "path" : "IMMZD13.liveVaccine",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE173"
          }
        ],
        "short" : "Live vaccine",
        "definition" : "Uses a living but weakened version of the virus or one that is very similar",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[liveVaccine].valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD13.countryOfVaccination",
        "path" : "IMMZD13.countryOfVaccination",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE21"
          }
        ],
        "short" : "Country of vaccination",
        "definition" : "The service delivery country where the vaccine administration occurred",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-3"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.location.extenstion[countryOfVaccination].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.administrativeArea",
        "path" : "IMMZD13.administrativeArea",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE22"
          },
          {
            "system" : "http://loinc.org",
            "code" : "72060-7",
            "display" : "Where was vaccine received"
          }
        ],
        "short" : "Administrative area",
        "definition" : "The service delivery location (location name, city, municipality, town or village) where the vaccine administration occurred",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.location.extenstion[administrativeArea].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.vaccineManufacturer",
        "path" : "IMMZD13.vaccineManufacturer",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE23"
          },
          {
            "system" : "http://loinc.org",
            "code" : "30957-5",
            "display" : "Manufacturer name [Identifier] Vaccine"
          }
        ],
        "short" : "Vaccine manufacturer",
        "definition" : "The manufacturer of the vaccine product",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE23"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.manufacturer.identifier"
          }
        ]
      },
      {
        "id" : "IMMZD13.vaccineBatchNumber",
        "path" : "IMMZD13.vaccineBatchNumber",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE24"
          },
          {
            "system" : "http://loinc.org",
            "code" : "30959-1",
            "display" : "Lot number [Identifier] Vaccine"
          }
        ],
        "short" : "Vaccine batch number",
        "definition" : "Batch number or lot number of vaccine",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.lotNumber"
          }
        ]
      },
      {
        "id" : "IMMZD13.vaccineMarketAuthorizationHolder",
        "path" : "IMMZD13.vaccineMarketAuthorizationHolder",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE25"
          }
        ],
        "short" : "Vaccine market authorization holder",
        "definition" : "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE25"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.extension[vaccineMarketAuthorizationHolder].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD13.expirationDate",
        "path" : "IMMZD13.expirationDate",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE26"
          },
          {
            "system" : "http://loinc.org",
            "code" : "74066-2",
            "display" : "Expiration date of medication (Agency for Healthcare Research and Quality [AHRQ])"
          }
        ],
        "short" : "Expiration date",
        "definition" : "The expiration date of the vaccine",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.expirationDate"
          }
        ]
      },
      {
        "id" : "IMMZD13.doseQuantity",
        "path" : "IMMZD13.doseQuantity",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE34"
          },
          {
            "system" : "http://loinc.org",
            "code" : "82745-1",
            "display" : "Doses of vaccine given per symptom onset"
          }
        ],
        "short" : "Dose quantity",
        "definition" : "The quantity of vaccine product that was administered",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqGTZero-1",
            "severity" : "error",
            "human" : "Must be positive decimal value greater than zero (>0.00)",
            "expression" : "not($this.exists()) or $this.value > 0",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.doseQuantity"
          }
        ]
      },
      {
        "id" : "IMMZD13.healthWorkerIdentifier",
        "path" : "IMMZD13.healthWorkerIdentifier",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE35"
          }
        ],
        "short" : "Health worker identifier",
        "definition" : "The person, organization or role of the entity that performed the act of giving the vaccine to the client. The implementing system can choose to populate this field using data from a health worker registry or health-care facility registry",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.performer.actor.identifier.value"
          }
        ]
      },
      {
        "id" : "IMMZD13.totalDosesInSeries",
        "path" : "IMMZD13.totalDosesInSeries",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE125"
          }
        ],
        "short" : "Total doses in series",
        "definition" : "The recommended number of doses for immunity according to the national immunization schedule (which may be based on product, age, etc.)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqGTZero-1",
            "severity" : "error",
            "human" : "Must be positive decimal value greater than zero (>0.00)",
            "expression" : "not($this.exists()) or $this.value > 0",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.protocolApplied.seriesDosesString"
          }
        ]
      },
      {
        "id" : "IMMZD13.diseaseTargeted",
        "path" : "IMMZD13.diseaseTargeted",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE126"
          }
        ],
        "short" : "Disease targeted",
        "definition" : "Vaccine-preventable disease being targeted",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE126"
        },
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.protocolApplied.targetDisease"
          }
        ]
      },
      {
        "id" : "IMMZD13.dueDateOfNextDose",
        "path" : "IMMZD13.dueDateOfNextDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE149"
          }
        ],
        "short" : "Due date of next dose",
        "definition" : "Date on which the next vaccination should be administered, if a next dose is required",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD13.to.Immunization",
            "map" : "Immunization.protocolApplied.extension[duteDateOfNextDose].valueDate"
          }
        ]
      }
    ]
  }
}

```
