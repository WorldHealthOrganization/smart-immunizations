# Thabo Mbulelo Mbeki - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Thabo Mbulelo Mbeki**

## Example Patient: Thabo Mbulelo Mbeki

Profile: [SMART Guidelines Immunizations Patient](StructureDefinition-IMMZ.Patient.md)

Thabo Mbulelo Mbeki Male, DoB: 2020-06-18 ( 12345-ZA)

-------

| | |
| :--- | :--- |
| Contact Detail | * [+27 21 465 8000](tel:+27214658000)
* 123 Main Street, Cape Town, Western Cape, 8001, ZA
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "IMMZ.C.Patient.1",
  "meta" : {
    "profile" : [
      "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Patient"
    ]
  },
  "identifier" : [
    {
      "value" : "12345-ZA"
    }
  ],
  "name" : [
    {
      "text" : "Thabo Mbulelo Mbeki",
      "family" : "Mbeki",
      "given" : ["Thabo", "Mbulelo"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+27 21 465 8000"
    }
  ],
  "gender" : "male",
  "birthDate" : "2020-06-18",
  "address" : [
    {
      "text" : "123 Main Street, Cape Town, Western Cape, 8001, ZA"
    }
  ]
}

```
