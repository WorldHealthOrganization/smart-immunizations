# IMMZ.C4.Create client record - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.C4.Create client record**

## Questionnaire: IMMZ.C4.Create client record
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZC4",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "IMMZ.C.DE5",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.C.DE5",
    "name" : "IMMZ_C_DE5",
    "title" : "IMMZ.C.DE5 ValueSet for Sex",
    "status" : "active",
    "description" : "ValueSet for Sex for IMMZ.C.DE5",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
        "concept" : [{
          "code" : "DE6",
          "display" : "Male"
        },
        {
          "code" : "DE7",
          "display" : "Female"
        },
        {
          "code" : "DE8",
          "display" : "Biological sex not specified"
        },
        {
          "code" : "DE9",
          "display" : "Intersex"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
        "code" : "DE6",
        "display" : "Male"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
        "code" : "DE7",
        "display" : "Female"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
        "code" : "DE8",
        "display" : "Biological sex not specified"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
        "code" : "DE9",
        "display" : "Intersex"
      }]
    }
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.QRToPatient"
  }],
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZC4",
  "version" : "0.2.0",
  "title" : "IMMZ.C4.Create client record",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-04-12T07:49:12+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.C4.Create client record",
  "item" : [{
    "linkId" : "uniqueIdentifier",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE1"
    }],
    "text" : "Unique identifier",
    "type" : "string",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "name",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE2"
    },
    {
      "system" : "http://loinc.org",
      "code" : "54125-0",
      "display" : "Patient name"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "371484003",
      "display" : "Patient name (observable entity)"
    }],
    "text" : "Name",
    "type" : "string",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "firstName",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE3"
    },
    {
      "system" : "http://loinc.org",
      "code" : "45392-8",
      "display" : "First name"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "184095009",
      "display" : "Patient forename (observable entity)"
    }],
    "text" : "First name",
    "type" : "string",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "familyName",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE4"
    },
    {
      "system" : "http://loinc.org",
      "code" : "45394-4",
      "display" : "Last name"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "184096005",
      "display" : "Patient surname (observable entity)"
    }],
    "text" : "Family name",
    "type" : "string",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "sex",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE5"
    },
    {
      "system" : "http://loinc.org",
      "code" : "46098-0",
      "display" : "Sex"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "184100006",
      "display" : "Patient sex (observable entity)"
    }],
    "text" : "Sex",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.C.DE5"
  },
  {
    "linkId" : "dateOfBirth",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE10"
    },
    {
      "system" : "http://loinc.org",
      "code" : "21112-8",
      "display" : "Birth date"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "184099003",
      "display" : "Date of birth (observable entity)"
    }],
    "text" : "Date of birth",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "age",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE13"
    },
    {
      "system" : "http://loinc.org",
      "code" : "63900-5",
      "display" : "Current age or age at death"
    }],
    "text" : "Age",
    "type" : "string",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "caregiversMultiple",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE14"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "184140000",
      "display" : "Caregiver details (observable entity)"
    }],
    "text" : "Caregivers (multiple)",
    "type" : "group",
    "required" : false,
    "repeats" : true,
    "item" : [{
      "linkId" : "caregiversFullName",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
        "code" : "DE15"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "184140000",
        "display" : "Caregiver details (observable entity)"
      }],
      "text" : "Caregiver's full name",
      "type" : "string",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "caregiversFirstName",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
        "code" : "DE16"
      },
      {
        "system" : "http://loinc.org",
        "code" : "45392-8",
        "display" : "First name"
      }],
      "text" : "Caregiver's first name",
      "type" : "string",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "caregiversFamilyName",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
        "code" : "DE17"
      },
      {
        "system" : "http://loinc.org",
        "code" : "45394-4",
        "display" : "Last name"
      }],
      "text" : "Caregiver's family name",
      "type" : "string",
      "required" : false,
      "repeats" : false
    }]
  },
  {
    "linkId" : "contactPhoneNumber",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE18"
    },
    {
      "system" : "http://loinc.org",
      "code" : "42077-8",
      "display" : "Patient Phone number"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "184103008",
      "display" : "Patient telephone number (observable entity)"
    }],
    "text" : "Contact phone number",
    "type" : "string",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "address",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
      "code" : "DE19"
    },
    {
      "system" : "http://loinc.org",
      "code" : "56799-0",
      "display" : "Address"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "184097001",
      "display" : "Patient address (observable entity)"
    }],
    "text" : "Address",
    "type" : "string",
    "required" : true,
    "repeats" : false
  }]
}

```
