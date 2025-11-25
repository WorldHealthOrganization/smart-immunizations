# Immunization Due Date of Next Dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Immunization Due Date of Next Dose**

## Extension: Immunization Due Date of Next Dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZDueDateOfNextDose |

The service delivery location (location name, city, municipality, town or village) where the vaccine administration occurred

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [SMART Guidelines Immunizations Immunization](StructureDefinition-IMMZ.Immunization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZDueDateOfNextDose)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZDueDateOfNextDose.csv), [Excel](StructureDefinition-IMMZDueDateOfNextDose.xlsx), [Schematron](StructureDefinition-IMMZDueDateOfNextDose.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZDueDateOfNextDose",
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose",
  "version" : "0.2.0",
  "name" : "IMMZDueDateOfNextDose",
  "title" : "Immunization Due Date of Next Dose",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-11-25T19:41:02+00:00",
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
  "description" : "The service delivery location (location name, city, municipality, town or village) where the vaccine administration occurred",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Immunization.protocolApplied"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Immunization Due Date of Next Dose",
        "definition" : "The service delivery location (location name, city, municipality, town or village) where the vaccine administration occurred"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
