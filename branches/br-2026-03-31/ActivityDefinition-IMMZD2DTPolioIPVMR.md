# IMMZ.D2.DT.Polio.IPV.MR - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Polio.IPV.MR**

## ActivityDefinition: IMMZ.D2.DT.Polio.IPV.MR 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTPolioIPVMR | *Version*:0.2.0 |
| Draft as of 2023-10-23 | *Computable Name*:IMMZD2DTPolioIPVMedicationRequest |

 
Provide measles IPV immunization 

* **Product: **: **Id: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: IMMZD2DTPolioIPVMR
* **Product: **: **Version: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: 0.2.0
* **Product: **: **Status: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: draft
* **Product: **: **Date (date last changed): **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: 2023-10-23
* **Product: **: **Publisher (steward): **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: WHO
* **Product: **: **Description: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: Provide measles IPV immunization
* **Product: **: **Knowledge Capability: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: computable
* **Product: **: **Kind: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: MedicationRequest
* **Product: **: **Profile: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest
* **Product: **: **Intent: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: proposal
* **Product: **: **doNotPerform: **
  * **system: **[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code: **DE31**display: **Inactivated polio vaccines: false



## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "IMMZD2DTPolioIPVMR",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTPolioIPVMR",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPolioIPVMedicationRequest",
  "title" : "IMMZ.D2.DT.Polio.IPV.MR",
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
  "description" : "Provide measles IPV immunization",
  "kind" : "MedicationRequest",
  "profile" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest",
  "intent" : "proposal",
  "doNotPerform" : false,
  "productCodeableConcept" : {
    "coding" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "code" : "DE31",
      "display" : "Inactivated polio vaccines"
    }]
  }
}

```
