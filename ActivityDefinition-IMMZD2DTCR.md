# IMMZ.D2.DT.CR - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.CR**

## ActivityDefinition: IMMZ.D2.DT.CR 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR | *Version*:0.2.0 |
| Draft as of 2023-12-03 | *Computable Name*:IMMZD2DTCommunicationRequest |

 
Provide immunization communication 

* **Title:**: **Id:**
  * IMMZ.D2.DT.CR: IMMZD2DTCR
* **Title:**: **Version:**
  * IMMZ.D2.DT.CR: 0.2.0
* **Title:**: **Status:**
  * IMMZ.D2.DT.CR: draft
* **Title:**: **Date (date last changed):**
  * IMMZ.D2.DT.CR: 2023-12-03
* **Title:**: **Publisher (steward):**
  * IMMZ.D2.DT.CR: WHO
* **Title:**: **Description:**
  * IMMZ.D2.DT.CR: Provide immunization communication
* **Title:**: **Knowledge Capability:**
  * IMMZ.D2.DT.CR: computable
* **Title:**: **Kind:**
  * IMMZ.D2.DT.CR: CommunicationRequest
* **Title:**: **Profile:**
  * IMMZ.D2.DT.CR: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest
* **Title:**: **Intent:**
  * IMMZ.D2.DT.CR: proposal
* **Title:**: **doNotPerform:**
  * IMMZ.D2.DT.CR: false



## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "IMMZD2DTCR",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationactivity|2.0.0"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
      "valueCode" : "computable"
    }
  ],
  "url" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
  "version" : "0.2.0",
  "name" : "IMMZD2DTCommunicationRequest",
  "title" : "IMMZ.D2.DT.CR",
  "status" : "draft",
  "experimental" : false,
  "date" : "2023-12-03",
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
  "description" : "Provide immunization communication",
  "kind" : "CommunicationRequest",
  "profile" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest",
  "intent" : "proposal",
  "doNotPerform" : false
}

```
