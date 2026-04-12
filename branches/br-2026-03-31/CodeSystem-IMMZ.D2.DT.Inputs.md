# IMMZ.D2.DT.Inputs CodeSystem for Decision Table Inputs - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Inputs CodeSystem for Decision Table Inputs**

## CodeSystem: IMMZ.D2.DT.Inputs CodeSystem for Decision Table Inputs 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs | *Version*:0.2.0 |
| Active as of 2026-03-31 | *Computable Name*:IMMZ_D2_DT_Inputs |

 
CodeSystem for Decision Table Inputs 

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
  "id" : "IMMZ.D2.DT.Inputs",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D2.DT.Inputs",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_DT_Inputs",
  "title" : "IMMZ.D2.DT.Inputs CodeSystem for Decision Table Inputs",
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
  "count" : 134,
  "property" : [{
    "code" : "table",
    "description" : "Decision Table ID",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "csailt9m-34.43",
    "display" : "Client's age is less than 9 months",
    "definition" : "Today's date − \"Date of birth\" < 9 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    }]
  },
  {
    "code" : "nmpsdwa-53.130",
    "display" : "No meningococcal primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
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
    "code" : "csaimt9m-34.43",
    "display" : "Client's age is more than 9 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 9 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
    }]
  },
  {
    "code" : "ompsdwa-54.130",
    "display" : "One meningococcal primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
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
    "code" : "csailt3m-34.43",
    "display" : "Client's age is less than 3 months",
    "definition" : "Today's date − \"Date of birth\" < 3 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
    }]
  },
  {
    "code" : "csaimtoet3m-46.43",
    "display" : "Client's age is more than or equal to 3 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 3 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
    }]
  },
  {
    "code" : "tlmdwalt8wa-68.111",
    "display" : "The latest meningococcal dose was administered less than 8 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 8 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
    }]
  },
  {
    "code" : "tlmdwamt8wa-68.111",
    "display" : "The latest meningococcal dose was administered more than 8 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 8 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
    }]
  },
  {
    "code" : "tmpsdwa-56.130",
    "display" : "Two meningococcal primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    }]
  },
  {
    "code" : "csailt2m-34.43",
    "display" : "Client's age is less than 2 months",
    "definition" : "Today's date − \"Date of birth\" < 2 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "csaimtoet2m-46.43",
    "display" : "Client's age is more than or equal to 2 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 2 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "csawltoet1mwtpsws-84.118",
    "display" : "Client's age was less than or equal to 11 months when the primary series was started",
    "definition" : "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" ≤ 11 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "tlmdwalt2ma-69.112",
    "display" : "The latest meningococcal dose was administered less than 2 months ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 2 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "tlmdwamt2ma-69.112",
    "display" : "The latest meningococcal dose was administered more than 2 months ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 2 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "csawmt1mwtpsws-72.118",
    "display" : "Client's age was more than 11 months when the primary series was started",
    "definition" : "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" > 11 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "tlmdwalt1ya-67.117",
    "display" : "The latest meningococcal dose was administered less than 1 year ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 1 year",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "nmbdwa-46.128",
    "display" : "No meningococcal booster dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "tlmdwamt1ya-67.117",
    "display" : "The latest meningococcal dose was administered more than 1 year ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 1 year",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    }]
  },
  {
    "code" : "mbdwa-43.128",
    "display" : "Meningococcal booster dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "csailt2y-33.42",
    "display" : "Client's age is less than 2 years",
    "definition" : "Today's date − \"Date of birth\" < 2 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "csaimtoet2y-45.42",
    "display" : "Client's age is more than or equal to 2 years",
    "definition" : "Today's date − \"Date of birth\" ≥ 2 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
    }]
  },
  {
    "code" : "csaimtoet9m-46.43",
    "display" : "Client's age is more than or equal to 9 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 9 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    }]
  },
  {
    "code" : "csawltoet23mwtpsws-84.118",
    "display" : "Client's age was less than or equal to 23 months when the primary series was started",
    "definition" : "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" ≤ 23 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    }]
  },
  {
    "code" : "tlmdwalt3ma-69.112",
    "display" : "The latest meningococcal dose was administered less than 3 months ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 3 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    }]
  },
  {
    "code" : "tlmdwamt3ma-69.112",
    "display" : "The latest meningococcal dose was administered more than 3 months ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 3 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    }]
  },
  {
    "code" : "csawmt23mwtpsws-72.118",
    "display" : "Client's age was more than 23 months when the primary series was started",
    "definition" : "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" > 23 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
    }]
  },
  {
    "code" : "csaimt2y-33.42",
    "display" : "Client's age is more than 2 years",
    "definition" : "Today's date − \"Date of birth\" ≥ 2 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "tlmdwalt3ya-68.111",
    "display" : "The latest meningococcal dose was administered less than 3 years ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 3 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "tlmdwamt3ya-68.111",
    "display" : "The latest meningococcal dose was administered more than 3 years ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 3 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
    }]
  },
  {
    "code" : "csailt12m-35.44",
    "display" : "Client's age is less than 12 months",
    "definition" : "Today's date − \"Date of birth\" < 12 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
    }]
  },
  {
    "code" : "nhapsdwa-53.139",
    "display" : "No hepatitis A primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    }]
  },
  {
    "code" : "csaimtoet12m-47.44",
    "display" : "Client's age is more than or equal to 12 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 12 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
    }]
  },
  {
    "code" : "ohapsdwa-52.139",
    "display" : "One Hepatitis A primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
    }]
  },
  {
    "code" : "tlhadwalt6ma-67.121",
    "display" : "The latest Hepatitis A dose was administered less than 6 months ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\") < 6 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    }]
  },
  {
    "code" : "tlhadwamt6ma-67.121",
    "display" : "The latest Hepatitis A dose was administered more than 6 months ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\") ≥ 6 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    }]
  },
  {
    "code" : "thapsdwa-54.139",
    "display" : "Two hepatitis A primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
    }]
  },
  {
    "code" : "nhapsdwa-51.139",
    "display" : "No hepatitis A primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    }]
  },
  {
    "code" : "csailt18m-35.44",
    "display" : "Client's age is less than 18 months",
    "definition" : "Today's date − \"Date of birth\" < 18 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    }]
  },
  {
    "code" : "csaimtoet18m-47.44",
    "display" : "Client's age is more than or equal to 18 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 18 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    }]
  },
  {
    "code" : "lvwaitl4w-49.96",
    "display" : "Live vaccine was administered in the last 4 weeks",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weekS",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    }]
  },
  {
    "code" : "nlvwaitl4w-52.96",
    "display" : "No live vaccine was administered in the last 4 weeks",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
    }]
  },
  {
    "code" : "nrpsdwa-48.123",
    "display" : "No rabies primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Rabies"
    }]
  },
  {
    "code" : "orpsdwa-49.123",
    "display" : "One rabies primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Rabies"
    }]
  },
  {
    "code" : "tlrdwalt7da-60.103",
    "display" : "The latest rabies dose was administered less than 7 days ago",
    "definition" : "''Today's date - Latest \"Date of vaccination\" (where \"Vaccine type\" = \"Rabies vaccines\") < 7 days",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Rabies"
    }]
  },
  {
    "code" : "tlrdwamt7da-60.103",
    "display" : "The latest rabies dose was administered more than 7 days ago",
    "definition" : "''Today's date - Latest \"Date of vaccination\" (where \"Vaccine type\" = \"Rabies vaccines\") ≥ 7 days",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Rabies"
    }]
  },
  {
    "code" : "trpsdwa-49.123",
    "display" : "Two rabies primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Rabies"
    }]
  },
  {
    "code" : "csailt9y-33.43",
    "display" : "Client's age is less than 9 years",
    "definition" : "Today's date − \"Date of birth\" <  9 years",
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
    "code" : "csaimt45y-34.43",
    "display" : "Client's age is more than 45 years",
    "definition" : "Today's date − \"Date of birth\" > 45 years",
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
    "code" : "csdsin-38.36",
    "display" : "Client's dengue serostatus is negative",
    "definition" : "\"Dengue serostatus\" = \"Negative\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
    }]
  },
  {
    "code" : "ndpsdwa-48.123",
    "display" : "No dengue primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
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
    "code" : "csaib9ya45y-44.54",
    "display" : "Client's age is between 9 years and 45 years",
    "definition" : "9 years ≤ Today's date − \"Date of birth\" ≤  45 years",
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
    "code" : "csdsip-38.36",
    "display" : "Client's dengue serostatus is positive",
    "definition" : "\"Dengue serostatus\" = \"Positive\"",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
    }]
  },
  {
    "code" : "odpsdwa-47.123",
    "display" : "One dengue primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
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
    "code" : "tlddwalt6ma-62.112",
    "display" : "The latest dengue dose was administered less than 6 months ago",
    "definition" : "Today's date - Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Dengue vaccines\") < 6 months",
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
    "code" : "tlddwamt6ma-62.112",
    "display" : "The latest dengue dose was administered more than 6 months ago",
    "definition" : "Today's date - Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Dengue vaccines\") ≥ 6 months",
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
    "code" : "tdpsdwa-49.123",
    "display" : "Two dengue primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
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
    "code" : "tdpsdwa-51.123",
    "display" : "Three dengue primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 3",
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
    "code" : "csailt5m-34.43",
    "display" : "Client's age is less than 5 months",
    "definition" : "Today's date − \"Date of birth\" < 5 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "nmpsdwa-49.124",
    "display" : "No malaria primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "csaimtoet5m-46.43",
    "display" : "Client's age is more than or equal to 5 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 5 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "ompsdwa-48.124",
    "display" : "One malaria primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "tlmdwalt4wa-62.105",
    "display" : "The latest malaria dose was administered less than 4 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") < 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "tlmdwamt4wa-62.112",
    "display" : "The latest malaria dose was administered more than 4 weeks ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") ≥ 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "tmpsdwa-50.124",
    "display" : "Two malaria primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "tmpsdwa-52.124",
    "display" : "Three malaria primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 3",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "fmpsdwa-51.124",
    "display" : "Four malaria primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 4",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "csailt5m-34.41",
    "display" : "Client's age is less than 5 months",
    "definition" : "Today's date − \"Date of birth\" < 5 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "nmpsdwa-49.116",
    "display" : "No malaria primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "csaimtoet5m-46.41",
    "display" : "Client's age is more than or equal to 5 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 5 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "ompsdwa-48.116",
    "display" : "One malaria primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "tlmdwalt4wa-62.99",
    "display" : "The latest malaria dose was administered less than 4 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") < 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "tlmdwamt4wa-62.106",
    "display" : "The latest malaria dose was administered more than 4 weeks ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") ≥ 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "tmpsdwa-50.116",
    "display" : "Two malaria primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "tmpsdwa-52.116",
    "display" : "Three malaria primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 3",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "fmpsdwa-51.116",
    "display" : "Four malaria primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 4",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Malaria"
    }]
  },
  {
    "code" : "csailt12m-35.42",
    "display" : "Client's age is less than 12 months",
    "definition" : "Today's date − \"Date of birth\" < 12 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "nmpsdwa-47.125",
    "display" : "No mumps primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Mumps-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "csaimtoet12m-47.42",
    "display" : "Client's age is more than or equal to 12 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 12 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "lvwaitp4w-49.92",
    "display" : "Live vaccine was administered in the past 4 weeks",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "nlvwaitp4w-52.92",
    "display" : "No live vaccine was administered in the past 4 weeks",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.1 dose"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "ompsdwa-46.125",
    "display" : "One mumps primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Mumps-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "tlmdwalt4wa-60.108",
    "display" : "The latest mumps dose was administered less than 4 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Mumps-containing vaccines\") < 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "tlmdwamt4wa-60.108",
    "display" : "The latest mumps dose was administered more than 4 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Mumps-containing vaccines\") ≥ 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "tmpsdwa-48.125",
    "display" : "Two mumps primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Mumps-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Mumps"
    }]
  },
  {
    "code" : "csailt6m-34.41",
    "display" : "Client's age is less than 6 months",
    "definition" : "Today's date − \"Date of birth\" < 6 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "nsipsdwa-60.127",
    "display" : "No seasonal influenza primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "csaimtoet6m-46.41",
    "display" : "Client's age is more than or equal to 6 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 6 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "osipsdwa-61.127",
    "display" : "One seasonal influenza primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "csailt9y-33.40",
    "display" : "Client's age is less than 9 years",
    "definition" : "Today's date − \"Date of birth\" < 9 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "tlsidwalt4wa-73.110",
    "display" : "The latest seasonal influenza dose was administered less than 4 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") < 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "tlsidwamt4wa-73.110",
    "display" : "The latest seasonal influenza dose was administered more than 4 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") ≥ 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "csaimtoet9y-45.40",
    "display" : "Client's age is more than or equal to 9 years",
    "definition" : "Today's date − \"Date of birth\" ≥ 9 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "tlsidwalt1ya-73.109",
    "display" : "The latest seasonal influenza dose was  administered less than 1 year ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") < 1 year",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "tlsidwamt1ya-72.109",
    "display" : "The latest seasonal influenza dose was administered more than 1 year ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") ≥ 1 year",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "tsipsdwa-61.127",
    "display" : "Two seasonal influenza primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Seasonal influenza"
    }]
  },
  {
    "code" : "nvpsdwa-49.129",
    "display" : "No varicella primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.1 dose"
    }]
  },
  {
    "code" : "csaimtoet12m-46.42",
    "display" : "Cient's age is more than or equal to 12 months",
    "definition" : "Today's date − \"Date of birth\" ≥ 12 months",
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
    "code" : "ovpsdwa-50.129",
    "display" : "One varicella primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.1 dose"
    }]
  },
  {
    "code" : "nvpsdwa-51.129",
    "display" : "No varicella primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "ovpsdwa-50.128",
    "display" : "One varicella primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") =1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "tlvdalt4wa-60.112",
    "display" : "The latest varicella dose administered less than 4 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Varicella-containing vaccines\") < 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "tlvdamt4wa-60.112",
    "display" : "The latest varicella dose administered more than 4 weeks ago",
    "definition" : "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Varicella-containing vaccines\") ≥ 4 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "tvpsdwa-52.129",
    "display" : "Two varicella primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Varicella.2 doses"
    }]
  },
  {
    "code" : "csailt1y-32.39",
    "display" : "Client's age is less than 1 year",
    "definition" : "Today's date − \"Date of birth\" < 1 year",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "csaimtoet1y-44.39",
    "display" : "Client's age is more than or equal to 1 year",
    "definition" : "Today's date − \"Date of birth\" ≥ 1 year",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "ncpsdwa-47.116",
    "display" : "No cholera primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 0",
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
    "code" : "ocpsdwa-48.116",
    "display" : "One cholera primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "tlcdwalt14da-62.106",
    "display" : "The latest cholera dose was administered less than 14 days ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 14 days",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "tlcdwamt14da-62.106",
    "display" : "The latest cholera dose was administered more than 14 days ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 14 days",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "tcpsdwa-50.116",
    "display" : "Two cholera primary series doses were administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "ncbsdwa-47.114",
    "display" : "No cholera booster series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Booster dose\") = 0",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "tlcdwalt3ya-62.106",
    "display" : "The latest cholera dose was administered less than 3 years ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 3 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "tlcdwamt3ya-62.106",
    "display" : "The latest cholera dose was administered more than 3 years ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 3 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "alobsdwa-49.115",
    "display" : "At least one booster series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Booster dose\") >= 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "dnotldio-37.68",
    "display" : "Dose number of the latest dose is one",
    "definition" : "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "tlcdwamt14daalt3ya-88.118",
    "display" : "The latest cholera dose was administered more than 14 days ago and less than 3 years ago",
    "definition" : "14 days <= Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") <= 3 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "dnotldit-37.68",
    "display" : "Dose number of the latest dose is two",
    "definition" : "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC vaccines"
    }]
  },
  {
    "code" : "csailt2y-33.40",
    "display" : "Client's age is less than 2 years",
    "definition" : "Today's date − \"Date of birth\" < 2 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "csai25y-25.50",
    "display" : "Client's age is 2–5 years",
    "definition" : "2 years ≤ Today's date − \"Date of birth\" ≤ 5 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "alocpsdwa-57.117",
    "display" : "At least one cholera primary series dose was administered",
    "definition" : "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") >= 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "dnotlpsdio-52.106",
    "display" : "Dose number of the latest primary series dose is one",
    "definition" : "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 1",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "tlcdwalt1wa-61.105",
    "display" : "The latest cholera dose was administered less than 1 week ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 1 week",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "tlcdwamt1walt6wa-83.115",
    "display" : "The latest cholera dose was administered more than 1 week and less than 6 weeks ago",
    "definition" : "1 week ≤ Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 6 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "dnotlpsdit-52.106",
    "display" : "Dose number of the latest primary series dose is two",
    "definition" : "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "dnotlpsdiltt-64.106",
    "display" : "Dose number of the latest primary series dose is less than three",
    "definition" : "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") < 3",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "tlcdwamt6wa-62.106",
    "display" : "The latest cholera dose was administered more than 6 weeks ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 6 weeks",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    },
    {
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "dnotlpsdit-54.106",
    "display" : "Dose number of the latest primary series dose is three",
    "definition" : "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 3",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "tlcdwaltmsdllda-95.132",
    "display" : "The latest cholera dose was administered less than {Member States defined lower limit} days ago",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≤ Member States defined lower limit",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "tlcdwaalt6mamsdei-116.107",
    "display" : "The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≤ 6 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "tlcdwaamt6mamsdei-116.107",
    "display" : "The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") > 6 months",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
    }]
  },
  {
    "code" : "csaimt5y-33.40",
    "display" : "Client's age is more than 5 years",
    "definition" : "Today's date − \"Date of birth\" > 5 years",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "dnotlpsdimtoett-74.107",
    "display" : "Dose number of the latest primary series dose is more than or equal to two",
    "definition" : "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") >= 2",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "tlcdwaalt2yamsdi-109.139",
    "display" : "The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≤ 2 years ± Member States defined interval",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  },
  {
    "code" : "tlcdwaamt2yamsdi-109.139",
    "display" : "The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}",
    "definition" : "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") > 2 years ± Member States defined interval",
    "property" : [{
      "code" : "table",
      "valueString" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
    }]
  }]
}

```
