# IMMZD2DTMR - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD2DTMR**

## ActivityDefinition: IMMZD2DTMR 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTMR | *Version*:0.2.0 |
| Draft as of 2025-10-27 | *Computable Name*:IMMZD2DTMedicationRequest |

 
Provide immunization 

* **Product:**: **Id:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: IMMZD2DTMR
* **Product:**: **Version:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: 0.2.0
* **Product:**: **Status:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: draft
* **Product:**: **Date (date last changed):**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: 2025-10-27
* **Product:**: **Publisher (steward):**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: WHO
* **Product:**: **Description:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: Provide immunization
* **Product:**: **Knowledge Capability:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: computable
* **Product:**: **Kind:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: MedicationRequest
* **Product:**: **Profile:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest
* **Product:**: **Intent:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: proposal
* **Product:**: **doNotPerform:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: false



## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "IMMZD2DTMR",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity|2.0.0"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
      "valueCode" : "computable"
    }
  ],
  "url" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTMR",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMedicationRequest",
  "title" : "IMMZD2DTMR",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-27",
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
  "description" : "Provide immunization",
  "kind" : "MedicationRequest",
  "profile" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest",
  "intent" : "proposal",
  "doNotPerform" : false,
  "productCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE0"
      }
    ]
  }
}

```
