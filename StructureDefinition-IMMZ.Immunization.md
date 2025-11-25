# SMART Guidelines Immunizations Immunization - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **SMART Guidelines Immunizations Immunization**

## Resource Profile: SMART Guidelines Immunizations Immunization 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZ.Immunization | *Version*:0.2.0 |
| Draft as of 2025-01-16 | *Computable Name*:IMMZImmunization |

 
Immunization Profile for the Immunizations SMART Guidelines. From IMMZ.D Administer Vaccine 

**Usages:**

* Refer to this Profile: [SMART Guidelines Immunizations Observation](StructureDefinition-IMMZ.Observation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZ.Immunization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZ.Immunization.csv), [Excel](StructureDefinition-IMMZ.Immunization.xlsx), [Schematron](StructureDefinition-IMMZ.Immunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZ.Immunization",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Immunization",
  "version" : "0.2.0",
  "name" : "IMMZImmunization",
  "title" : "SMART Guidelines Immunizations Immunization",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-01-16",
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
  "description" : "Immunization Profile for the Immunizations SMART Guidelines.  From IMMZ.D Administer Vaccine",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Immunization",
        "path" : "Immunization"
      },
      {
        "id" : "Immunization.extension",
        "path" : "Immunization.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Immunization.extension:typeOfPolio",
        "path" : "Immunization.extension",
        "sliceName" : "typeOfPolio",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:typeOfPolio.value[x]",
        "path" : "Immunization.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE212"
        }
      },
      {
        "id" : "Immunization.extension:typeOfJe",
        "path" : "Immunization.extension",
        "sliceName" : "typeOfJe",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:typeOfJe.value[x]",
        "path" : "Immunization.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE216"
        }
      },
      {
        "id" : "Immunization.extension:typeOfTbe",
        "path" : "Immunization.extension",
        "sliceName" : "typeOfTbe",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:typeOfTbe.value[x]",
        "path" : "Immunization.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE220"
        }
      },
      {
        "id" : "Immunization.extension:typeOfTyphoid",
        "path" : "Immunization.extension",
        "sliceName" : "typeOfTyphoid",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:typeOfTyphoid.value[x]",
        "path" : "Immunization.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE225"
        }
      },
      {
        "id" : "Immunization.extension:typeOfCholera",
        "path" : "Immunization.extension",
        "sliceName" : "typeOfCholera",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:typeOfCholera.value[x]",
        "path" : "Immunization.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE229"
        }
      },
      {
        "id" : "Immunization.extension:typeOfMeningococcal",
        "path" : "Immunization.extension",
        "sliceName" : "typeOfMeningococcal",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:typeOfMeningococcal.value[x]",
        "path" : "Immunization.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE229"
        }
      },
      {
        "id" : "Immunization.extension:typeOfHepatitisA",
        "path" : "Immunization.extension",
        "sliceName" : "typeOfHepatitisA",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:typeOfHepatitisA.value[x]",
        "path" : "Immunization.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE237"
        }
      },
      {
        "id" : "Immunization.extension:typeOfHepatitisB",
        "path" : "Immunization.extension",
        "sliceName" : "typeOfHepatitisB",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:typeOfHepatitisB.value[x]",
        "path" : "Immunization.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE254"
        }
      },
      {
        "id" : "Immunization.extension:vaccineBrand",
        "path" : "Immunization.extension",
        "sliceName" : "vaccineBrand",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:liveVaccine",
        "path" : "Immunization.extension",
        "sliceName" : "liveVaccine",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZLiveVaccine"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:marketAuthorizationHolder",
        "path" : "Immunization.extension",
        "sliceName" : "marketAuthorizationHolder",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZMarketAuthorization"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.statusReason",
        "path" : "Immunization.statusReason",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE5"
        }
      },
      {
        "id" : "Immunization.vaccineCode",
        "path" : "Immunization.vaccineCode",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.VS"
        }
      },
      {
        "id" : "Immunization.occurrence[x]",
        "path" : "Immunization.occurrence[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Immunization.location.extension",
        "path" : "Immunization.location.extension",
        "min" : 1
      },
      {
        "id" : "Immunization.location.extension:countryOfVaccination",
        "path" : "Immunization.location.extension",
        "sliceName" : "countryOfVaccination",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.location.extension:administrativeArea",
        "path" : "Immunization.location.extension",
        "sliceName" : "administrativeArea",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZAdministrativeArea"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.protocolApplied",
        "path" : "Immunization.protocolApplied",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "exists",
              "path" : "series"
            },
            {
              "type" : "exists",
              "path" : "doseNumber"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Immunization.protocolApplied:immzProtocol",
        "path" : "Immunization.protocolApplied",
        "sliceName" : "immzProtocol",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Immunization.protocolApplied:immzProtocol.extension",
        "path" : "Immunization.protocolApplied.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Immunization.protocolApplied:immzProtocol.extension:dueDateOfNextDose",
        "path" : "Immunization.protocolApplied.extension",
        "sliceName" : "dueDateOfNextDose",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.protocolApplied:immzProtocol.series",
        "path" : "Immunization.protocolApplied.series",
        "min" : 1
      },
      {
        "id" : "Immunization.protocolApplied:immzProtocol.doseNumber[x]",
        "path" : "Immunization.protocolApplied.doseNumber[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
