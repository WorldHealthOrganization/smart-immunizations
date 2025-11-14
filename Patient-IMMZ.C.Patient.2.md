# Zanele Mbeki - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Zanele Mbeki**

## Example Patient: Zanele Mbeki

Profile: [SMART Guidelines Immunizations Patient](StructureDefinition-IMMZ.Patient.md)

Zanele Mbeki Male, DoB: 1998-09-22 ( 12345-ZA)

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
  "id" : "IMMZ.C.Patient.2",
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
      "text" : "Zanele Mbeki",
      "family" : "Mbeki",
      "given" : ["Zanele"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+27 21 465 8000"
    }
  ],
  "gender" : "male",
  "birthDate" : "1998-09-22",
  "address" : [
    {
      "text" : "123 Main Street, Cape Town, Western Cape, 8001, ZA"
    }
  ]
}

```
