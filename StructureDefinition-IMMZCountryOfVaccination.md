# Immunization Country of Vaccination - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Immunization Country of Vaccination**

## Extension: Immunization Country of Vaccination 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZCountryOfVaccination |

The service delivery country where the vaccine administration occurred

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [SMART Guidelines Immunizations Immunization](StructureDefinition-IMMZ.Immunization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZCountryOfVaccination)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZCountryOfVaccination.csv), [Excel](StructureDefinition-IMMZCountryOfVaccination.xlsx), [Schematron](StructureDefinition-IMMZCountryOfVaccination.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZCountryOfVaccination",
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination",
  "version" : "0.2.0",
  "name" : "IMMZCountryOfVaccination",
  "title" : "Immunization Country of Vaccination",
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
  "description" : "The service delivery country where the vaccine administration occurred",
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
      "expression" : "Immunization.location"
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
        "short" : "Immunization Country of Vaccination",
        "definition" : "The service delivery country where the vaccine administration occurred"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination"
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
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-3"
        }
      }
    ]
  }
}

```
