# IMMZ.D5.DT.Inputs CodeSystem for Decision Table Inputs - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.Inputs CodeSystem for Decision Table Inputs**

## CodeSystem: IMMZ.D5.DT.Inputs CodeSystem for Decision Table Inputs 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.D5.DT.Inputs | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D5_DT_Inputs |

 
CodeSystem for Decision Table Inputs 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMMZ_D5_DT_Dengue_contraindications](ValueSet-IMMZ.D5.DT.Dengue.CI.md)
* [IMMZ_D5_DT_Hepatitis_A_contraindications](ValueSet-IMMZ.D5.DT.HepatitisA.CI.md)
* [IMMZ_D5_DT_Malaria_contraindications](ValueSet-IMMZ.D5.DT.Malaria.CI.md)
* [IMMZ_D5_DT_Meningococcal_contraindications](ValueSet-IMMZ.D5.DT.Meningococcal.CI.md)
* [IMMZ_D5_DT_Mumps_contraindications](ValueSet-IMMZ.D5.DT.Mumps.CI.md)
* [IMMZ_D5_DT_Rabies_contraindications](ValueSet-IMMZ.D5.DT.Rabies.CI.md)
* [IMMZ_D5_DT_Seasonal_influenza_contraindications](ValueSet-IMMZ.D5.DT.Seasonalinfluenza.CI.md)
* [IMMZ_D5_DT_Varicella_contraindications](ValueSet-IMMZ.D5.DT.Varicella.CI.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IMMZ.D5.DT.Inputs",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D5.DT.Inputs",
  "version" : "0.2.0",
  "name" : "IMMZ_D5_DT_Inputs",
  "title" : "IMMZ.D5.DT.Inputs CodeSystem for Decision Table Inputs",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-31T13:43:43+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "CodeSystem for Decision Table Inputs",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 20,
  "property" : [{
    "code" : "table",
    "description" : "Contraindication Table ID",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "tchhosar-51.63",
    "display" : "The client has history of severe allergic reactions",
    "definition" : "\"Potential contraindications\" = \"Severe allergic reactions\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Meningococcal contraindications"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Rabies contraindications"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tcicp-32.56",
    "display" : "The client is currently pregnant",
    "definition" : "\"Potential contraindications\" = \"Currently pregnant\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Hepatitis A contraindications"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tcisi-40.64",
    "display" : "The client is severely immunocompromised",
    "definition" : "\"Potential contraindications\" = \"Severely immunocompromised\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Hepatitis A contraindications"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tchahosar-53.64",
    "display" : "The client has a history of severe allergic reactions",
    "definition" : "'\"Potential contraindications\" = \"Severe allergic reactions\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Hepatitis A contraindications"
    }]
  },
  {
    "code" : "tcii-31.55",
    "display" : "The client is immunocompromised",
    "definition" : "\"Potential contraindications\" = \"Immunocompromised\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tcicl-33.52",
    "display" : "The client is currently lactating",
    "definition" : "'\"Potential contraindications\" = \"Breastfeeding\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tchhoar-48.70",
    "display" : "The client has history of anaphylactic reactions",
    "definition" : "\"Potential contraindications\" =\"History of anaphylactic reactions\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tchis-41.64",
    "display" : "The client has immunodeficiency syndromes",
    "definition" : "\"Potential contraindications\" = \"Immunodeficiency syndromes\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tcisi-39.63",
    "display" : "The client is severely immunosuppressed",
    "definition" : "\"Potential contraindications\" = \"Severely immunosuppressed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tchshi-40.63",
    "display" : "The client has symptomatic HIV infection",
    "definition" : "\"Potential contraindications\" = \"Symptomatic HIV infection\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "tchhtaotvc-64.72",
    "display" : "The client has hypersensitivity to any of the vaccine components",
    "definition" : "\"Potential contraindications\" = \"Hypersensitivity to vaccine components\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Malaria contraindications"
    }]
  },
  {
    "code" : "tcicp-32.52",
    "display" : "The client is currently pregnant",
    "definition" : "\"Potential contraindications\" = \"Currently pregnant\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Mumps contraindications"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  },
  {
    "code" : "tchatvc-44.60",
    "display" : "The client has allergy to vaccine components",
    "definition" : "'\"Potential contraindications\" = \"Severe allergic reactions\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Mumps contraindications"
    }]
  },
  {
    "code" : "tchid-32.60",
    "display" : "The client has immune deficiency",
    "definition" : "\"Potential contraindications\" = \"Immunodeficiency syndromes\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Mumps contraindications"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  },
  {
    "code" : "tcisi-39.59",
    "display" : "The client is severely immunosuppressed",
    "definition" : "\"Potential contraindications\" = \"Severely immunosuppressed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Mumps contraindications"
    }]
  },
  {
    "code" : "tchahoar-50.67",
    "display" : "The client has a history of anaphylactic reactions",
    "definition" : "\"Potential contraindications\" = \"History of anaphylactic reactions\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Seasonal influenza contraindications"
    }]
  },
  {
    "code" : "tchahosaraapdotavc-101.59",
    "display" : "The client has a history of severe allergic reactions after a previous dose or to a vaccine component",
    "definition" : "\"Potential contraindications\" = \"Severe allergic reactions\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Seasonal influenza contraindications"
    }]
  },
  {
    "code" : "tciptgpitnm-56.76",
    "display" : "The client is planning to get pregnant in the next month",
    "definition" : "\"Potential contraindications\" = \"Planning to get pregnant in the next month\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  },
  {
    "code" : "tcii-31.51",
    "display" : "The client is immunocompromised",
    "definition" : "\"Potential contraindications\" = \"Immunocompromised\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  },
  {
    "code" : "tcirohrmtmbi-81.72",
    "display" : "The client is receiving or has received medications that may be immunosuppressive",
    "definition" : "\"Potential contraindications\" = \"Exposed to immunosuppressive treatment\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  }]
}

```
