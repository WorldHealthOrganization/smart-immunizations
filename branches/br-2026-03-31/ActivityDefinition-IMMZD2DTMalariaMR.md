# IMMZ.D2.DT.Malaria.MR - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Malaria.MR**

## ActivityDefinition: IMMZ.D2.DT.Malaria.MR 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTMalariaMR | *Version*:0.2.0 |
| Draft as of 2023-10-23 | *Computable Name*:IMMZD2DTMalariaMedicationRequest |

 
Provide Malaria immunization 

* **Product: **: **Id: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: IMMZD2DTMalariaMR
* **Product: **: **Version: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: 0.2.0
* **Product: **: **Status: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: draft
* **Product: **: **Date (date last changed): **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: 2023-10-23
* **Product: **: **Publisher (steward): **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: WHO
* **Product: **: **Description: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: Provide Malaria immunization
* **Product: **: **Knowledge Capability: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: computable
* **Product: **: **Kind: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: MedicationRequest
* **Product: **: **Profile: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest
* **Product: **: **Intent: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: proposal
* **Product: **: **doNotPerform: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE27**display: **Malaria vaccines: false



## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "IMMZD2DTMalariaMR",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTMalariaMR",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMalariaMedicationRequest",
  "title" : "IMMZ.D2.DT.Malaria.MR",
  "status" : "draft",
  "experimental" : false,
  "date" : "2023-10-23",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Provide Malaria immunization",
  "kind" : "MedicationRequest",
  "profile" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest",
  "intent" : "proposal",
  "doNotPerform" : false,
  "productCodeableConcept" : {
    "coding" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "code" : "DE27",
      "display" : "Malaria vaccines"
    }]
  }
}

```
