# IMMZ.D17.Report AEFI - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D17.Report AEFI**

## Questionnaire: IMMZ.D17.Report AEFI
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZD17",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE95",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE95",
    "name" : "IMMZ_D_DE95",
    "title" : "IMMZ.D.DE95 ValueSet for Reaction manifestation",
    "status" : "active",
    "description" : "ValueSet for Reaction manifestation for IMMZ.D.DE95",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE96",
          "display" : "Severe local reaction"
        },
        {
          "code" : "DE98",
          "display" : "Seizures"
        },
        {
          "code" : "DE99",
          "display" : "Abscess"
        },
        {
          "code" : "DE100",
          "display" : "Sepsis"
        },
        {
          "code" : "DE101",
          "display" : "Encephalopathy"
        },
        {
          "code" : "DE102",
          "display" : "Toxic shock syndrome"
        },
        {
          "code" : "DE103",
          "display" : "Anaphylaxis"
        },
        {
          "code" : "DE104",
          "display" : "Fever"
        },
        {
          "code" : "DE105",
          "display" : "Other"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE96",
        "display" : "Severe local reaction"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE98",
        "display" : "Seizures"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE99",
        "display" : "Abscess"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE100",
        "display" : "Sepsis"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE101",
        "display" : "Encephalopathy"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE102",
        "display" : "Toxic shock syndrome"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE103",
        "display" : "Anaphylaxis"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE104",
        "display" : "Fever"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE105",
        "display" : "Other"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE107",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE107",
    "name" : "IMMZ_D_DE107",
    "title" : "IMMZ.D.DE107 ValueSet for Type of reaction",
    "status" : "active",
    "description" : "ValueSet for Type of reaction for IMMZ.D.DE107",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE174",
          "display" : "Non serious"
        },
        {
          "code" : "DE108",
          "display" : "Death"
        },
        {
          "code" : "DE109",
          "display" : "Life threatening"
        },
        {
          "code" : "DE110",
          "display" : "Disability"
        },
        {
          "code" : "DE111",
          "display" : "Hospitalization"
        },
        {
          "code" : "DE112",
          "display" : "Congenital anomaly"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE174",
        "display" : "Non serious"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE108",
        "display" : "Death"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE109",
        "display" : "Life threatening"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE110",
        "display" : "Disability"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE111",
        "display" : "Hospitalization"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE112",
        "display" : "Congenital anomaly"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE115",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE115",
    "name" : "IMMZ_D_DE115",
    "title" : "IMMZ.D.DE115 ValueSet for Reaction outcome",
    "status" : "active",
    "description" : "ValueSet for Reaction outcome for IMMZ.D.DE115",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE116",
          "display" : "Died"
        },
        {
          "code" : "DE117",
          "display" : "Recovered"
        },
        {
          "code" : "DE118",
          "display" : "Recovered with sequelae"
        },
        {
          "code" : "DE119",
          "display" : "Recovering"
        },
        {
          "code" : "DE120",
          "display" : "Not recovered"
        },
        {
          "code" : "DE121",
          "display" : "Unknown"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE116",
        "display" : "Died"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE117",
        "display" : "Recovered"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE118",
        "display" : "Recovered with sequelae"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE119",
        "display" : "Recovering"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE120",
        "display" : "Not recovered"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE121",
        "display" : "Unknown"
      }]
    }
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToBundle"
  }],
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZD17",
  "version" : "1.0.0",
  "title" : "IMMZ.D17.Report AEFI",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-03-31T13:54:17+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.D17.Report AEFI",
  "item" : [{
    "linkId" : "reactionReported",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE92"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "code" : "PK81.7",
      "display" : "Injection or infusion for therapeutic or diagnostic purposes associated with injury or harm in therapeutic use"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "418799008",
      "display" : "Finding reported by subject or history provider (finding)"
    }],
    "text" : "Reaction reported",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueDate" : "2100-01-01",
      "_valueDate" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
          "valueString" : "today()"
        }]
      }
    }],
    "linkId" : "reactionDate",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE93"
    },
    {
      "system" : "http://loinc.org",
      "code" : "30953-4",
      "display" : "Date and time of onset of vaccination adverse event"
    }],
    "text" : "Reaction date",
    "type" : "date",
    "enableWhen" : [{
      "question" : "reactionReported",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "reactionManifestation",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE95"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "code" : "NE80.3",
      "display" : "Other serum reactions. This code includes 'Complications of vaccination, serum reaction'. A more specific code may be selected based on the documented reaction/manifestation"
    }],
    "text" : "Reaction manifestation",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "reactionReported",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE95"
  },
  {
    "linkId" : "typeOfReaction",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE107"
    }],
    "text" : "Type of reaction",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "reactionReported",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE107"
  },
  {
    "linkId" : "otherImportantMedicalEvent",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE113"
    }],
    "text" : "Other important medical event (specify)",
    "type" : "string",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "reactionOutcome",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE115"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "293104008",
      "display" : "Adverse reaction to component of vaccine product (disorder)"
    }],
    "text" : "Reaction outcome",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "reactionReported",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE115"
  }]
}

```
