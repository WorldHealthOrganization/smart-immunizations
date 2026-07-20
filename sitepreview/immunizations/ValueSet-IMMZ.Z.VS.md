# IMMZ.Z.VS ValueSet for vaccine types - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z.VS ValueSet for vaccine types**

## ValueSet: IMMZ.Z.VS ValueSet for vaccine types 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ValueSet/IMMZ.Z.VS | *Version*:1.0.0 |
| Active as of 2026-04-09 | *Computable Name*:IMMZ_Z_VS |

 
ValueSet for vaccine types for IMMZ.Z 

 **References** 

* Included into [IMMZ_D_DE19](ValueSet-IMMZ.D.DE19.md)
* [SMART Guidelines Immunizations Immunization](StructureDefinition-IMMZ.Immunization.md)
* [IMMZ.D1.Capture or update client history](StructureDefinition-IMMZD1.md)
* [IMMZ.D13.Update client record](StructureDefinition-IMMZD13.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IMMZ.Z.VS",
  "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.VS",
  "version" : "1.0.0",
  "name" : "IMMZ_Z_VS",
  "title" : "IMMZ.Z.VS ValueSet for vaccine types",
  "status" : "active",
  "date" : "2026-04-09T14:34:42+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "ValueSet for vaccine types for IMMZ.Z",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE3"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE4"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE5"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE7"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE8"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE9"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE11"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE12"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE13"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE15"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE16"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE17"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE18"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE19"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE20"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE22"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE23"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE24"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE25"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE26"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE27"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE28"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE29"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE30"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE31"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE32"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE33"]
    },
    {
      "valueSet" : ["http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE34"]
    }]
  }
}

```
