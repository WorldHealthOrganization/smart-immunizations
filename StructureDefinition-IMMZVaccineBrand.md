# Immunization Vaccine Brand - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Immunization Vaccine Brand**

## Extension: Immunization Vaccine Brand 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZVaccineBrand |

The brand or trade name used to refer to the vaccine received

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [SMART Guidelines Immunizations Immunization](StructureDefinition-IMMZ.Immunization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZVaccineBrand)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZVaccineBrand.csv), [Excel](StructureDefinition-IMMZVaccineBrand.xlsx), [Schematron](StructureDefinition-IMMZVaccineBrand.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZVaccineBrand",
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand",
  "version" : "0.2.0",
  "name" : "IMMZVaccineBrand",
  "title" : "Immunization Vaccine Brand",
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
  "description" : "The brand or trade name used to refer to the vaccine received",
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
      "expression" : "Immunization"
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
        "short" : "Immunization Vaccine Brand",
        "definition" : "The brand or trade name used to refer to the vaccine received"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE18"
        }
      }
    ]
  }
}

```
