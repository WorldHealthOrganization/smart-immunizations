# IMMZ.D1.Capture or update client history - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D1.Capture or update client history**

## Logical Model: IMMZ.D1.Capture or update client history 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZD1 | *Version*:0.2.0 |
| Active as of 2025-01-10 | *Computable Name*:IMMZ_D1_Capture_or_update_client_history |

 
Data elements for the IMMZ.D1.Capture or update client history Data Dictionary Activity. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZD1)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZD1.csv), [Excel](StructureDefinition-IMMZD1.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZD1",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1",
  "version" : "0.2.0",
  "name" : "IMMZ_D1_Capture_or_update_client_history",
  "title" : "IMMZ.D1.Capture or update client history",
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
  "description" : "Data elements for the IMMZ.D1.Capture or update client history Data Dictionary Activity.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "IMMZD1.to.Observation",
      "uri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZObservation",
      "name" : "Mapping from the IMMZ.D1 to the IMMZObservation profile"
    },
    {
      "identity" : "IMMZD1.to.Immunization",
      "uri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZImmunization",
      "name" : "Mapping from the IMMZ.D1 to the IMMZImmunization profile"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZD1",
        "path" : "IMMZD1",
        "short" : "IMMZ.D1.Capture or update client history",
        "definition" : "Data elements for the IMMZ.D1.Capture or update client history Data Dictionary Activity.",
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation"
          },
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization"
          }
        ]
      },
      {
        "id" : "IMMZD1.patient",
        "path" : "IMMZD1.patient",
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
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.subject"
          },
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.patient"
          }
        ]
      },
      {
        "id" : "IMMZD1.birthDose",
        "path" : "IMMZD1.birthDose",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfDose",
        "path" : "IMMZD1.typeOfDose",
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
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.protocolApplied.series"
          }
        ]
      },
      {
        "id" : "IMMZD1.completedThePrimaryVaccinationSeries",
        "path" : "IMMZD1.completedThePrimaryVaccinationSeries",
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
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.completedTheBoosterSeries",
        "path" : "IMMZD1.completedTheBoosterSeries",
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
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.dateWhenPrimaryVaccinationSeriesWasCompleted",
        "path" : "IMMZD1.dateWhenPrimaryVaccinationSeriesWasCompleted",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          },
          {
            "key" : "IMMZ-D-dateOccurred-1",
            "severity" : "error",
            "human" : "Date ≤ current date",
            "expression" : "not($this.exists()) or $this.value <= today()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueDateTime"
          }
        ]
      },
      {
        "id" : "IMMZD1.hivStatus",
        "path" : "IMMZD1.hivStatus",
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
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.pretermBirth",
        "path" : "IMMZD1.pretermBirth",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE208"
          },
          {
            "system" : "http://id.who.int/icd/release/11/mms",
            "code" : "KA21.4",
            "display" : "Preterm newborn"
          },
          {
            "system" : "http://loinc.org",
            "code" : "76517-2",
            "display" : "Premature infant"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "395507008",
            "display" : "Premature infant (finding)"
          }
        ],
        "short" : "Preterm birth",
        "definition" : "The infant was preterm; the mother gave birth to the infant when gestational age was less than 37 weeks",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.immunocompromised",
        "path" : "IMMZD1.immunocompromised",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE209"
          },
          {
            "system" : "http://id.who.int/icd/release/11/mms",
            "code" : "4B4Z",
            "display" : "Diseases of the immune system, unspecified"
          },
          {
            "system" : "http://loinc.org",
            "code" : "96381-9",
            "display" : "Immune status"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "370388006",
            "display" : "Patient immunocompromised (finding)"
          }
        ],
        "short" : "Immunocompromised",
        "definition" : "The client is known to be immunocompromised. This means the client has a weakened immune system and having a reduced ability to fight infections and other diseases",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.currentlyOnArt",
        "path" : "IMMZD1.currentlyOnArt",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE210"
          }
        ],
        "short" : "Currently on ART",
        "definition" : "The client is currently receiving antiretroviral therapy (ART)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqHIVPositive-1",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE204 HIV status is HIV-positive",
            "expression" : "%resource.hivStatus.value != 'DE11' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfTbInfectionTestPerformed",
        "path" : "IMMZD1.typeOfTbInfectionTestPerformed",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE243"
          }
        ],
        "short" : "Type of TB infection test performed",
        "definition" : "The type of tuberculosis (TB) infection test performed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-2",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is BCG vaccines",
            "expression" : "%resource.vaccineType.value != 'DE1' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE243"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.tbInfectionTestResult",
        "path" : "IMMZD1.tbInfectionTestResult",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE246"
          }
        ],
        "short" : "TB infection test result",
        "definition" : "Records the result of the TB infection test",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqTBTest-1",
            "severity" : "error",
            "human" : "Required if  input in IMMZ.D.DE243 Type of TB infection test performed IS NOT NULL",
            "expression" : "not(%resource.typeOfTbInfectionTestPerformed.exists()) or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE246"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.immunologicallyStable",
        "path" : "IMMZD1.immunologicallyStable",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE249"
          }
        ],
        "short" : "Immunologically stable",
        "definition" : "The client is living with HIV and is immunologically stable with CD4 count or percentage above a minimum as defined in the HIV guidelines",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-3",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is BCG vaccines OR Typhoid vaccines",
            "expression" : "(%resource.vaccineType.value != 'DE1' and %resource.vaccineType.value != 'DE21') or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.clinicallyWell",
        "path" : "IMMZD1.clinicallyWell",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE250"
          }
        ],
        "short" : "Clinically well",
        "definition" : "The client is living with HIV and is clinically well, as defined in HIV guidelines and WHO clinical staging",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-2",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is BCG vaccines",
            "expression" : "%resource.vaccineType.value != 'DE1' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.birthWeightInGrams",
        "path" : "IMMZD1.birthWeightInGrams",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE211"
          },
          {
            "system" : "http://id.who.int/icd/release/11/mms",
            "code" : "KA21",
            "display" : "Disorders of newborn related to short gestation or low birth weight, not elsewhere classified"
          },
          {
            "system" : "http://loinc.org",
            "code" : "8339-4",
            "display" : "Birth weight measured"
          }
        ],
        "short" : "Birth weight in grams",
        "definition" : "Represents the client's birth weight value measures in grams",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-4",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is BCG vaccines OR Hepatitis B-containing vaccines",
            "expression" : "(%resource.vaccineType.value != 'DE1' and %resource.vaccineType.value != 'DE6') or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          },
          {
            "key" : "IMMZ-D-reqGTEZero-1",
            "severity" : "error",
            "human" : "Must be positive decimal value greater than or equal to zero (≥0)",
            "expression" : "not($this.exists()) or $this.value >= 0",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueQuantity.value"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfPoliovirusDose",
        "path" : "IMMZD1.typeOfPoliovirusDose",
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
            "key" : "IMMZ-D-reqVType-5",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Poliovirus-containing vaccines",
            "expression" : "%resource.vaccineType.value != 'DE14' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE212"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.extension[typeOfPolio].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.artStartDate",
        "path" : "IMMZD1.artStartDate",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE215"
          }
        ],
        "short" : "ART start date",
        "definition" : "The date on which the client started or restarted ART",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-6",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Measles-containing vaccines",
            "expression" : "%resource.vaccineType.value != 'DE9' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          },
          {
            "key" : "IMMZ-D-dateOccurred-1",
            "severity" : "error",
            "human" : "Date ≤ current date",
            "expression" : "not($this.exists()) or $this.value <= today()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueDateTime"
          }
        ]
      },
      {
        "id" : "IMMZD1.highRiskOfPneumococcalInfection",
        "path" : "IMMZD1.highRiskOfPneumococcalInfection",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE251"
          }
        ],
        "short" : "High risk of pneumococcal infection",
        "definition" : "The client is at high risk for pneumococcal infection because of underlying medical conditions (i.e. HIV infection or sickle-cell disease)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-7",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Pneumococcal vaccines",
            "expression" : "%resource.vaccineType.value != 'DE13' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfJeDose",
        "path" : "IMMZD1.typeOfJeDose",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE216"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.extension[typeOfJe].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfTbeDose",
        "path" : "IMMZD1.typeOfTbeDose",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE220"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.extension[typeOfTbe].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfTyphoidDose",
        "path" : "IMMZD1.typeOfTyphoidDose",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE225"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.extension[typeOfTyphoid].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfCholeraDose",
        "path" : "IMMZD1.typeOfCholeraDose",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE229"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.extension[typeOfCholera].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfMeningococcalDose",
        "path" : "IMMZD1.typeOfMeningococcalDose",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE232"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.extension[typeOfMeningococcal].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.ageInMonthsWhenClientReceivedFirstMeningococcalDose",
        "path" : "IMMZD1.ageInMonthsWhenClientReceivedFirstMeningococcalDose",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE236"
          }
        ],
        "short" : "Age in months when client received first meningococcal dose",
        "definition" : "The age in months when client received their first meningococcal dose",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-12",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Meningococcal vaccines",
            "expression" : "%resource.vaccineType.value != 'DE10' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          },
          {
            "key" : "IMMZ-D-reqGTEZero-1",
            "severity" : "error",
            "human" : "Must be positive decimal value greater than or equal to zero (≥0)",
            "expression" : "not($this.exists()) or $this.value >= 0",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueQuantity.value"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfHepatitisADose",
        "path" : "IMMZD1.typeOfHepatitisADose",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE237"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.extension[typeOfHepatitisA].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.typeOfHepatitisBDose",
        "path" : "IMMZD1.typeOfHepatitisBDose",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE254"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.extension[typeOfHepatitisB].valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.vnaLevel",
        "path" : "IMMZD1.vnaLevel",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE240"
          }
        ],
        "short" : "VNA level",
        "definition" : "Vaccine-induced neutralizing antibody (VNA) level, measured as a serum antibody concentration from the result of the concentrated, purified cell culture-derived and embryonated egg-based rabies vaccines (CCEEV)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-15",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Rabies vaccines",
            "expression" : "%resource.vaccineType.value != 'DE15' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueQuantity.value"
          }
        ]
      },
      {
        "id" : "IMMZD1.riskOfOccupationalExposureToRabiesVirus",
        "path" : "IMMZD1.riskOfOccupationalExposureToRabiesVirus",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE253"
          }
        ],
        "short" : "Risk of occupational exposure to rabies virus",
        "definition" : "Professional at risk of occupational exposure to rabies virus, particularly animal health workers. Also considered for medical professionals who regularly provide care to persons with rabies",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-15",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Rabies vaccines",
            "expression" : "%resource.vaccineType.value != 'DE15' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueBoolean"
          }
        ]
      },
      {
        "id" : "IMMZD1.dengueSerostatus",
        "path" : "IMMZD1.dengueSerostatus",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE241"
          }
        ],
        "short" : "Dengue serostatus",
        "definition" : "Indicates the result of a serological test determining whether the client has antibodies against the dengue virus",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-D-reqVType-16",
            "severity" : "error",
            "human" : "Required if input in IMMZ.D.DE19 vaccine type is Dengue vaccines",
            "expression" : "%resource.vaccineType.value != 'DE25' or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE241"
        },
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueCodeableConcept.coding"
          }
        ]
      },
      {
        "id" : "IMMZD1.vaccineType",
        "path" : "IMMZD1.vaccineType",
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
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.vaccineCode"
          }
        ]
      },
      {
        "id" : "IMMZD1.dateAndTimeOfVaccination",
        "path" : "IMMZD1.dateAndTimeOfVaccination",
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
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.occurrenceDateTime"
          }
        ]
      },
      {
        "id" : "IMMZD1.contactDate",
        "path" : "IMMZD1.contactDate",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueDateTime"
          }
        ]
      },
      {
        "id" : "IMMZD1.ancContactNumber",
        "path" : "IMMZD1.ancContactNumber",
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
            "identity" : "IMMZD1.to.Observation",
            "map" : "Observation.valueInteger"
          }
        ]
      },
      {
        "id" : "IMMZD1.doseNumber",
        "path" : "IMMZD1.doseNumber",
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
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD1.to.Immunization",
            "map" : "Immunization.protocolApplied.doseNumberString"
          }
        ]
      }
    ]
  }
}

```
