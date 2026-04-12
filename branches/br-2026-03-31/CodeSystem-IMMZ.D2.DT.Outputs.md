# IMMZ.D2.DT.Outputs CodeSystem for Decision Table Outputs - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Outputs CodeSystem for Decision Table Outputs**

## CodeSystem: IMMZ.D2.DT.Outputs CodeSystem for Decision Table Outputs 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Outputs |

 
CodeSystem for Decision Table Outputs 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMMZ_D2_DT_Cholera_WC_vaccines](ValueSet-IMMZ.D2.DT.Cholera.WC.md)
* [IMMZ_D2_DT_Cholera_WC_rBS_vaccine_3_doses](ValueSet-IMMZ.D2.DT.Cholera.rBS2to5.md)
* [IMMZ_D2_DT_Cholera_WC_rBS_vaccine_2_doses](ValueSet-IMMZ.D2.DT.Cholera.rBSover5.md)
* [IMMZ_D2_DT_Dengue_3_doses_without_pre_vaccination_screening](ValueSet-IMMZ.D2.DT.Dengue.NoScreen.md)
* [IMMZ_D2_DT_Dengue_3_doses_with_pre_vaccination_screening](ValueSet-IMMZ.D2.DT.Dengue.Seropos.md)
* [IMMZ_D2_DT_Hepatitis_A_Inactivated_HAV_1_dose](ValueSet-IMMZ.D2.DT.HepatitisA.IHAV1.md)
* [IMMZ_D2_DT_Hepatitis_A_Inactivated_HAV_2_doses](ValueSet-IMMZ.D2.DT.HepatitisA.IHAV2.md)
* [IMMZ_D2_DT_Hepatitis_A_Live_attenuated_HAV_1_dose](ValueSet-IMMZ.D2.DT.HepatitisA.LHAV1.md)
* [IMMZ_D2_DT_Malaria](ValueSet-IMMZ.D2.DT.Malaria.4Dose.md)
* [IMMZ_D2_DT_Meningococcal_MenA_conjugate_vaccine_1_dose](ValueSet-IMMZ.D2.DT.Meningococcal.MenA1.md)
* [IMMZ_D2_DT_Meningococcal_MenA_conjugate_vaccine_2_doses](ValueSet-IMMZ.D2.DT.Meningococcal.MenA2.md)
* [IMMZ_D2_DT_Meningococcal_Monovalent_MenC_conjugate_vaccine_](ValueSet-IMMZ.D2.DT.Meningococcal.MenC.md)
* [IMMZ_D2_DT_Meningococcal_Polysaccharide_vaccines](ValueSet-IMMZ.D2.DT.Meningococcal.Poly.md)
* [IMMZ_D2_DT_Meningococcal_Quadrivalent_conjugate_vaccines_1_dose](ValueSet-IMMZ.D2.DT.Meningococcal.Quad1.md)
* [IMMZ_D2_DT_Meningococcal_Quadrivalent_conjugate_vaccines_2_doses](ValueSet-IMMZ.D2.DT.Meningococcal.Quad2.md)
* [IMMZ_D2_DT_Mumps](ValueSet-IMMZ.D2.DT.Mumps.2Dose.md)
* [IMMZ_D2_DT_Rabies](ValueSet-IMMZ.D2.DT.Rabies.PrEP.md)
* [IMMZ_D2_DT_Seasonal_influenza](ValueSet-IMMZ.D2.DT.Seasonalinfluenza.2Dose.md)
* [IMMZ_D2_DT_Varicella_1_dose](ValueSet-IMMZ.D2.DT.Varicella.1Dose.md)
* [IMMZ_D2_DT_Varicella_2_doses](ValueSet-IMMZ.D2.DT.Varicella.2Dose.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IMMZ.D2.DT.Outputs",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Outputs",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Outputs",
  "title" : "IMMZ.D2.DT.Outputs CodeSystem for Decision Table Outputs",
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
  "count" : 38,
  "property" : [{
    "code" : "table",
    "description" : "Decision Table ID",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "cindfmv-47.52",
    "display" : "Client is not due for meningococcal vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "cidfmv-43.48",
    "display" : "Client is due for meningococcal vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "misic-47.53",
    "display" : "Meningococcal immunization schedule is complete",
    "definition" : "\"Immunization recommendation status\" = \"Complete\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "tpsiccidfmbd-76.48",
    "display" : "The primary series is complete. Client is due for meningococcal booster dose",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "tpsiccindfmbd-81.52",
    "display" : "The primary series is complete. Client is not due for meningococcal booster dose.",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "tpsiccjirfmbdcacn-117.70",
    "display" : "The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note",
    "definition" : "\"Immunization recommendation status\" = \"Further evaluation needed\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "cindfhav-45.52",
    "display" : "Client is not due for Hepatitis A vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    }]
  },
  {
    "code" : "cidfhav-41.48",
    "display" : "Client is due for Hepatitis A vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    }]
  },
  {
    "code" : "haisic-45.53",
    "display" : "Hepatitis A immunization schedule is complete",
    "definition" : "\"Immunization recommendation status\" = \"Complete\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    }]
  },
  {
    "code" : "cidfrv-36.48",
    "display" : "Client is due for rabies vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Rabies"
    }]
  },
  {
    "code" : "cindfrv-40.52",
    "display" : "Client is not due for rabies vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Rabies"
    }]
  },
  {
    "code" : "risic-40.53",
    "display" : "Rabies immunization schedule is complete",
    "definition" : "\"Immunization recommendation status\" = \"Complete\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Rabies"
    }]
  },
  {
    "code" : "cindfdv-40.52",
    "display" : "Client is not due for dengue vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
    }]
  },
  {
    "code" : "cidfdv-36.48",
    "display" : "Client is due for dengue vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
    }]
  },
  {
    "code" : "disic-40.53",
    "display" : "Dengue immunization schedule is complete",
    "definition" : "\"Immunization recommendation status\" = \"Complete\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
    }]
  },
  {
    "code" : "cindfmv-41.52",
    "display" : "Client is not due for malaria vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "cidfmv-37.48",
    "display" : "Client is due for malaria vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "misic-41.53",
    "display" : "Malaria immunization schedule is complete",
    "definition" : "\"Immunization recommendation status\" = \"Complete\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "cindfmv-41.48",
    "display" : "Client is not due for malaria vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "cidfmv-37.44",
    "display" : "Client is due for malaria vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "misic-41.49",
    "display" : "Malaria immunization schedule is complete",
    "definition" : "\"Immunization recommendation status\" = \"Complete\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "cindfmv-39.48",
    "display" : "Client is not due for mumps vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "cidfmv-35.44",
    "display" : "Client is due for mumps vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "misic-39.49",
    "display" : "Mumps immunization schedule is complete",
    "definition" : "\"Immunization recommendation status\" = \"Complete\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "cindfsiv-52.48",
    "display" : "Client is not due for seasonal influenza vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "cidfsiv-48.44",
    "display" : "Client is due for seasonal influenza vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "tpsiccindfsiad-84.48",
    "display" : "The primary series is complete. Client is not due for seasonal influenza annual dose",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "tpsiccidfsiad-80.44",
    "display" : "The primary series is complete. Client is due for seasonal influenza annual dose",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "cindfvv-43.48",
    "display" : "Client is not due for varicella vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "cidfvv-39.44",
    "display" : "Client is due for varicella vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "visic-43.49",
    "display" : "Varicella immunization schedule is complete",
    "definition" : "\"Immunization recommendation status\" = \"Complete\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "cindfcv-41.48",
    "display" : "Client is not due for cholera vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "cidfcv-37.44",
    "display" : "Client is due for cholera vaccination",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "psiccindfcbd-70.48",
    "display" : "Primary series is complete. Client is not due for cholera booster dose",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "psiccidfcbd-66.44",
    "display" : "Primary series is complete. Client is due for cholera booster dose",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "cindfcbd-42.48",
    "display" : "Client is not due for cholera booster dose",
    "definition" : "\"Immunization recommendation status\" = \"Not due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "cidfcbd-38.44",
    "display" : "Client is due for cholera booster dose",
    "definition" : "\"Immunization recommendation status\" = \"Due\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "bsic-26.81",
    "display" : "Booster series is complete",
    "definition" : "\"Completed the booster series\" (where \"Vaccine type\" = \"Cholera vaccines\") = TRUE",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  }]
}

```
