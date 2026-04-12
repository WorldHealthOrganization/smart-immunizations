# IMMZ.D5.DT.Outputs CodeSystem for Decision Table Outputs - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.Outputs CodeSystem for Decision Table Outputs**

## CodeSystem: IMMZ.D5.DT.Outputs CodeSystem for Decision Table Outputs 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.D5.DT.Outputs | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D5_DT_Outputs |

 
CodeSystem for Decision Table Outputs 

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
  "id" : "IMMZ.D5.DT.Outputs",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D5.DT.Outputs",
  "version" : "0.2.0",
  "name" : "IMMZ_D5_DT_Outputs",
  "title" : "IMMZ.D5.DT.Outputs CodeSystem for Decision Table Outputs",
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
  "description" : "CodeSystem for Decision Table Outputs",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 14,
  "property" : [{
    "code" : "table",
    "description" : "Contraindication Table ID",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "mvcbccjircacn-106.138",
    "display" : "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note",
    "definition" : "\"Immunization recommendation status\" (where \"Type of meningococcal dose\" = \"Polysaccharide vaccine\") = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Meningococcal contraindications"
    }]
  },
  {
    "code" : "lahacvic-66.139",
    "display" : "Live attentuated Hepatitis A-containing vaccine is contraindicated",
    "definition" : "\"Immunization recommendation status\" = \"Contraindicated\" (where \"Type of hepatitis A dose\" = \"Live attenuated hepatitis A vaccine\")",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Hepatitis A contraindications"
    }]
  },
  {
    "code" : "havcbccjircacn-104.70",
    "display" : "Hepatitis A vaccination could be contraindicated. Clinical judgement is required. Create a clinical note",
    "definition" : "\"Immunization recommendation status\" = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Hepatitis A contraindications"
    }]
  },
  {
    "code" : "cjircacn-54.70",
    "display" : "Clinical judgement is required. Create a clinical note",
    "definition" : "\"Immunization recommendation status\" = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Rabies contraindications"
    }]
  },
  {
    "code" : "dvic-37.60",
    "display" : "Dengue vaccination is contraindicated",
    "definition" : "\"Immunization recommendation status\" = \"Contraindicated\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "dvcbccjircacn-100.70",
    "display" : "Dengue vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.",
    "definition" : "\"Immunization recommendation status\" = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Dengue contraindications"
    }]
  },
  {
    "code" : "mvcbccjircacn-100.67",
    "display" : "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note",
    "definition" : "\"Immunization recommendation status\" =  \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Malaria contraindications"
    }]
  },
  {
    "code" : "mvic-36.56",
    "display" : "Mumps vaccination is contraindicated",
    "definition" : "\"Immunization recommendation status\" = \"Contraindicated\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Mumps contraindications"
    }]
  },
  {
    "code" : "mvcbccjir-75.23",
    "display" : "Mumps vaccination could be contraindicated. Clinical judgement is required.",
    "definition" : "Create a clinical note.",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Mumps contraindications"
    }]
  },
  {
    "code" : "sivcbccjircacn-111.67",
    "display" : "Seasonal influenza vaccination could be contraindicated. Clinical judgement is required. Create a clinical note",
    "definition" : "'\"Immunization recommendation status\" = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Seasonal influenza contraindications"
    }]
  },
  {
    "code" : "vvic-40.56",
    "display" : "Varicella vaccination is contraindicated",
    "definition" : "\"Immunization recommendation status\" = \"Contraindicated\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  },
  {
    "code" : "cjirccn-52.66",
    "display" : "Clinical judgement is required. Create clinical note",
    "definition" : "\"Immunization recommendation status\" = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  },
  {
    "code" : "vvcbccjirccn-100.66",
    "display" : "Varicella vaccination could be contraindicated. Clinical judgement is required. Create clinical note",
    "definition" : "\"Immunization recommendation status\" = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  },
  {
    "code" : "cjirccn-52.67",
    "display" : "Clinical judgement is required. Create clinical note",
    "definition" : "'\"Immunization recommendation status\" = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D5.DT.Varicella contraindications"
    }]
  }]
}

```
