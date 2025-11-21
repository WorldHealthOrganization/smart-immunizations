# Zanele Mbeki - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Zanele Mbeki**

## Example RelatedPerson: Zanele Mbeki

Profile: [SMART Guidelines Immunizations Caregiver (RelatedPerson)](StructureDefinition-IMMZ.Caregiver.md)

**patient**: [Thabo Mbulelo Mbeki Male, DoB: 2020-06-18 ( 12345-ZA)](Patient-IMMZ.C.Patient.1.md)

**relationship**: CAREGIVER

**name**: Zanele Mbeki



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "IMMZ.C.Caregiver.1",
  "meta" : {
    "profile" : [
      "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Caregiver"
    ]
  },
  "patient" : {
    "reference" : "Patient/IMMZ.C.Patient.1"
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/5.1.0/CodeSystem-v3-RoleClass.html",
          "code" : "CAREGIVER"
        }
      ]
    }
  ],
  "name" : [
    {
      "text" : "Zanele Mbeki",
      "family" : "Mbeki",
      "given" : ["Zanele"]
    }
  ]
}

```
