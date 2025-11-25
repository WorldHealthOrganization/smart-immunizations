# IMMZD5DTMR - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMR**

## ActivityDefinition: IMMZD5DTMR 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ActivityDefinition/IMMZD5DTMR | *Version*:0.2.0 |
| Draft as of 2025-10-27 | *Computable Name*:IMMZD5DTMedicationRequest |

 
Don't administer immunization due to contraindication 

* **Product:**: **Id:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: IMMZD5DTMR
* **Product:**: **Version:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: 0.2.0
* **Product:**: **Status:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: draft
* **Product:**: **Date (date last changed):**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: 2025-10-27
* **Product:**: **Publisher (steward):**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: WHO
* **Product:**: **Description:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: Don't administer immunization due to contraindication
* **Product:**: **Knowledge Capability:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: computable
* **Product:**: **Kind:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: MedicationRequest
* **Product:**: **Profile:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest
* **Product:**: **Intent:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: proposal
* **Product:**: **doNotPerform:**
  * **system:**[http://smart.who.int/immunizations/CodeSystem/IMMZ.Z](CodeSystem-IMMZ.Z.md)**code:**DE0: true



## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "IMMZD5DTMR",
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
  "url" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD5DTMR",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMedicationRequest",
  "title" : "IMMZD5DTMR",
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
  "description" : "Don't administer immunization due to contraindication",
  "kind" : "MedicationRequest",
  "profile" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrequest",
  "intent" : "proposal",
  "doNotPerform" : true,
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
