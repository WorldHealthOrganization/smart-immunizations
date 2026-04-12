# IMMZ.D2.DT.JE.MR - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.JE.MR**

## ActivityDefinition: IMMZ.D2.DT.JE.MR 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTJEMR | *Version*:0.2.0 |
| Draft as of 2023-10-23 | *Computable Name*:IMMZD2DTJEMedicationRequest |

 
Provide JE immunization 

* **Product: **: **Id: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: IMMZD2DTJEMR
* **Product: **: **Version: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: 0.2.0
* **Product: **: **Status: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: draft
* **Product: **: **Date (date last changed): **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: 2023-10-23
* **Product: **: **Publisher (steward): **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: WHO
* **Product: **: **Description: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: Provide JE immunization
* **Product: **: **Knowledge Capability: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: computable
* **Product: **: **Kind: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: MedicationRequest
* **Product: **: **Profile: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest
* **Product: **: **Intent: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: proposal
* **Product: **: **doNotPerform: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE8**display: **JE vaccines: false



## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "IMMZD2DTJEMR",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTJEMR",
  "version" : "0.2.0",
  "name" : "IMMZD2DTJEMedicationRequest",
  "title" : "IMMZ.D2.DT.JE.MR",
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
  "description" : "Provide JE immunization",
  "kind" : "MedicationRequest",
  "profile" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest",
  "intent" : "proposal",
  "doNotPerform" : false,
  "productCodeableConcept" : {
    "coding" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "code" : "DE8",
      "display" : "JE vaccines"
    }]
  }
}

```
