# ConceptMap to and from IMMZ.C DataElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **ConceptMap to and from IMMZ.C DataElements**

## ConceptMap: ConceptMap to and from IMMZ.C DataElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ConceptMap/IMMZ.C.ConceptMap | *Version*:0.2.0 |
| Active as of 2024-12-12 | *Computable Name*:IMMZ_C_ConceptMap |

 
Mapping to and from IMMZ.C Data Dictionary to other codesystems. 

Mapping from (not specified) to (not specified)

**Group 1**Mapping from [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md) to [AdministrativeGender](http://hl7.org/fhir/R4/codesystem-administrative-gender.html)

* **Source Code**: DE6 (Male)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: male
* **Source Code**: DE7 (Female)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: female
* **Source Code**: DE8 (Biological sex not specified)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: unknown
* **Source Code**: DE9 (Intersex)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: other

-------

**Group 2**Mapping from [AdministrativeGender](http://hl7.org/fhir/R4/codesystem-administrative-gender.html) to [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md)

* **Source Code**: male
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE6 (Male)
  * **Comment**: 
* **Source Code**: female
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE7 (Female)
  * **Comment**: 
* **Source Code**: unknown
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE8 (Biological sex not specified)
  * **Comment**: 
* **Source Code**: other
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE9 (Intersex)
  * **Comment**: The DAK only provides Intersex as other options so the other from the source may be something else.

-------

**Group 3**Mapping from [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md) to [International Classification of Diseases, 11th Revision Mortality and Morbidity Statistics (MMS)](http://terminology.hl7.org/6.1.0/CodeSystem-ICD11MMS.html)

* **Source Code**: DE6 (Male)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XX2UQ8
* **Source Code**: DE7 (Female)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XX2V25
* **Source Code**: DE8 (Biological sex not specified)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XX2PX3
* **Source Code**: DE9 (Intersex)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XX45B7

-------

**Group 4**Mapping from [International Classification of Diseases, 11th Revision Mortality and Morbidity Statistics (MMS)](http://terminology.hl7.org/6.1.0/CodeSystem-ICD11MMS.html) to [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md)

* **Source Code**: XX2UQ8
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE6 (Male)
* **Source Code**: XX2V25
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE7 (Female)
* **Source Code**: XX2PX3
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE8 (Biological sex not specified)
* **Source Code**: XX45B7
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE9 (Intersex)

-------

**Group 5**Mapping from [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md) to [Logical Observation Identifiers, Names and Codes (LOINC)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-loinc.html)

* **Source Code**: DE2 (Name)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 54125-0 (Patient name)
  * **Comment**: 
* **Source Code**: DE3 (First name)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 45392-8 (Patient First (Given) name)
  * **Comment**: 
* **Source Code**: DE4 (Family name)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 45394-4 (Patient Last (Family) name)
  * **Comment**: 
* **Source Code**: DE5 (Sex)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 46098-0 (Sex)
  * **Comment**: 
* **Source Code**: DE10 (Date of birth)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 21112-8 (Birth date)
  * **Comment**: 
* **Source Code**: DE13 (Age)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 63900-5 (Current age or age at death)
  * **Comment**: 
* **Source Code**: DE16 (Caregiver's first name)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 45392-8 (Patient First (Given) name)
  * **Comment**: 
* **Source Code**: DE17 (Caregiver's family name)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 45394-4 (Patient Last (Family) name)
  * **Comment**: 
* **Source Code**: DE18 (Contact phone number)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 42077-8 (Patient phone number)
  * **Comment**: 
* **Source Code**: DE19 (Address)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 56799-0 (Address)
  * **Comment**: Per the Immunizations DAK

-------

**Group 6**Mapping from [Logical Observation Identifiers, Names and Codes (LOINC)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-loinc.html) to [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md)

* **Source Code**: 54125-0 (Patient name)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE2 (Name)
  * **Comment**: 
* **Source Code**: 45392-8 (Patient First (Given) name)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE3 (First name)
  * **Comment**: 
* **Source Code**: 45394-4 (Patient Last (Family) name)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE4 (Family name)
  * **Comment**: 
* **Source Code**: 46098-0 (Sex)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE5 (Sex)
  * **Comment**: 
* **Source Code**: 21112-8 (Birth date)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE10 (Date of birth)
  * **Comment**: 
* **Source Code**: 63900-5 (Current age or age at death)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE13 (Age)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 45392-8 (Patient First (Given) name)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE16 (Caregiver's first name)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 45394-4 (Patient Last (Family) name)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE17 (Caregiver's family name)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 42077-8 (Patient phone number)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE18 (Contact phone number)
  * **Comment**: 
* **Source Code**: 56799-0 (Address)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE19 (Address)
  * **Comment**: 

-------

**Group 7**Mapping from [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md) to [SNOMED CT (all versions)](http://hl7.org/fhir/R4/codesystem-snomedct.html)

* **Source Code**: DE2 (Name)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 371484003 (Patient name (observable entity))
  * **Comment**: 
* **Source Code**: DE3 (First name)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 184095009 (Patient forename)
  * **Comment**: 
* **Source Code**: DE4 (Family name)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 184096005 (Patient surname)
  * **Comment**: 
* **Source Code**: DE5 (Sex)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 184100006 (Patient sex)
  * **Comment**: 
* **Source Code**: DE6 (Male)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 248153007 (Male)
  * **Comment**: 
* **Source Code**: DE7 (Female)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 248152002 (Female)
  * **Comment**: 
* **Source Code**: DE8 (Biological sex not specified)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 772004004 (Non-binary gender (finding))
  * **Comment**: 
* **Source Code**: DE9 (Intersex)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 15867007 (Intersexuality)
  * **Comment**: 
* **Source Code**: DE10 (Date of birth)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 184099003 (Date of birth)
  * **Comment**: 
* **Source Code**: DE14 (Caregivers (multiple))
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 184140000 (Carer's details)
  * **Comment**: 
* **Source Code**: DE15 (Caregiver's full name)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 184140000 (Carer's details)
  * **Comment**: 
* **Source Code**: DE18 (Contact phone number)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 184103008 (Patient telephone number)
  * **Comment**: 
* **Source Code**: DE19 (Address)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 184097001 (Patient address)
  * **Comment**: Per the Immunizations DAK

-------

**Group 8**Mapping from [SNOMED CT (all versions)](http://hl7.org/fhir/R4/codesystem-snomedct.html) to [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md)

* **Source Code**: 371484003 (Patient name (observable entity))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE2 (Name)
  * **Comment**: 
* **Source Code**: 184095009 (Patient forename)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE3 (First name)
  * **Comment**: 
* **Source Code**: 184096005 (Patient surname)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE4 (Family name)
  * **Comment**: 
* **Source Code**: 184100006 (Patient sex)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE5 (Sex)
  * **Comment**: 
* **Source Code**: 248153007 (Male)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE6 (Male)
  * **Comment**: 
* **Source Code**: 248152002 (Female)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE7 (Female)
  * **Comment**: 
* **Source Code**: 772004004 (Non-binary gender (finding))
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE8 (Biological sex not specified)
  * **Comment**: 
* **Source Code**: 15867007 (Intersexuality)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE9 (Intersex)
  * **Comment**: 
* **Source Code**: 184099003 (Date of birth)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE10 (Date of birth)
  * **Comment**: 
* **Source Code**: 184140000 (Carer's details)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE14 (Caregivers (multiple))
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 184140000 (Carer's details)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE15 (Caregiver's full name)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 184103008 (Patient telephone number)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE18 (Contact phone number)
  * **Comment**: 
* **Source Code**: 184097001 (Patient address)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE19 (Address)
  * **Comment**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "IMMZ.C.ConceptMap",
  "url" : "http://smart.who.int/immunizations/ConceptMap/IMMZ.C.ConceptMap",
  "version" : "0.2.0",
  "name" : "IMMZ_C_ConceptMap",
  "title" : "ConceptMap to and from IMMZ.C DataElements",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-12",
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
  "description" : "Mapping to and from IMMZ.C Data Dictionary to other codesystems.",
  "group" : [
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "target" : "http://hl7.org/fhir/administrative-gender",
      "element" : [
        {
          "code" : "DE6",
          "target" : [
            {
              "code" : "male",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE7",
          "target" : [
            {
              "code" : "female",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE8",
          "target" : [
            {
              "code" : "unknown",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE9",
          "target" : [
            {
              "code" : "other",
              "equivalence" : "wider"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://hl7.org/fhir/administrative-gender",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "element" : [
        {
          "code" : "male",
          "target" : [
            {
              "code" : "DE6",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "female",
          "target" : [
            {
              "code" : "DE7",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "unknown",
          "target" : [
            {
              "code" : "DE8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "other",
          "target" : [
            {
              "code" : "DE9",
              "equivalence" : "narrower",
              "comment" : "The DAK only provides Intersex as other options so the other from the source may be something else."
            }
          ]
        }
      ]
    },
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "target" : "http://id.who.int/icd/release/11/mms",
      "element" : [
        {
          "code" : "DE6",
          "target" : [
            {
              "code" : "XX2UQ8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE7",
          "target" : [
            {
              "code" : "XX2V25",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE8",
          "target" : [
            {
              "code" : "XX2PX3",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE9",
          "target" : [
            {
              "code" : "XX45B7",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://id.who.int/icd/release/11/mms",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "element" : [
        {
          "code" : "XX2UQ8",
          "target" : [
            {
              "code" : "DE6",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XX2V25",
          "target" : [
            {
              "code" : "DE7",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XX2PX3",
          "target" : [
            {
              "code" : "DE8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XX45B7",
          "target" : [
            {
              "code" : "DE9",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "target" : "http://loinc.org",
      "element" : [
        {
          "code" : "DE2",
          "target" : [
            {
              "code" : "54125-0",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE3",
          "target" : [
            {
              "code" : "45392-8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE4",
          "target" : [
            {
              "code" : "45394-4",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE5",
          "target" : [
            {
              "code" : "46098-0",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE10",
          "target" : [
            {
              "code" : "21112-8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE13",
          "target" : [
            {
              "code" : "63900-5",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE16",
          "target" : [
            {
              "code" : "45392-8",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE17",
          "target" : [
            {
              "code" : "45394-4",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE18",
          "target" : [
            {
              "code" : "42077-8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE19",
          "target" : [
            {
              "code" : "56799-0",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://loinc.org",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "element" : [
        {
          "code" : "54125-0",
          "target" : [
            {
              "code" : "DE2",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "45392-8",
          "target" : [
            {
              "code" : "DE3",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "45394-4",
          "target" : [
            {
              "code" : "DE4",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "46098-0",
          "target" : [
            {
              "code" : "DE5",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "21112-8",
          "target" : [
            {
              "code" : "DE10",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "63900-5",
          "target" : [
            {
              "code" : "DE13",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "45392-8",
          "target" : [
            {
              "code" : "DE16",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "45394-4",
          "target" : [
            {
              "code" : "DE17",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "42077-8",
          "target" : [
            {
              "code" : "DE18",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "56799-0",
          "target" : [
            {
              "code" : "DE19",
              "equivalence" : "wider"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "target" : "http://snomed.info/sct",
      "element" : [
        {
          "code" : "DE2",
          "target" : [
            {
              "code" : "371484003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE3",
          "target" : [
            {
              "code" : "184095009",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE4",
          "target" : [
            {
              "code" : "184096005",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE5",
          "target" : [
            {
              "code" : "184100006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE6",
          "target" : [
            {
              "code" : "248153007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE7",
          "target" : [
            {
              "code" : "248152002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE8",
          "target" : [
            {
              "code" : "772004004",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE9",
          "target" : [
            {
              "code" : "15867007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE10",
          "target" : [
            {
              "code" : "184099003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE14",
          "target" : [
            {
              "code" : "184140000",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE15",
          "target" : [
            {
              "code" : "184140000",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE18",
          "target" : [
            {
              "code" : "184103008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE19",
          "target" : [
            {
              "code" : "184097001",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://snomed.info/sct",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "element" : [
        {
          "code" : "371484003",
          "target" : [
            {
              "code" : "DE2",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "184095009",
          "target" : [
            {
              "code" : "DE3",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "184096005",
          "target" : [
            {
              "code" : "DE4",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "184100006",
          "target" : [
            {
              "code" : "DE5",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "248153007",
          "target" : [
            {
              "code" : "DE6",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "248152002",
          "target" : [
            {
              "code" : "DE7",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "772004004",
          "target" : [
            {
              "code" : "DE8",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "15867007",
          "target" : [
            {
              "code" : "DE9",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "184099003",
          "target" : [
            {
              "code" : "DE10",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "184140000",
          "target" : [
            {
              "code" : "DE14",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "184140000",
          "target" : [
            {
              "code" : "DE15",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "184103008",
          "target" : [
            {
              "code" : "DE18",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "184097001",
          "target" : [
            {
              "code" : "DE19",
              "equivalence" : "wider"
            }
          ]
        }
      ]
    }
  ]
}

```
