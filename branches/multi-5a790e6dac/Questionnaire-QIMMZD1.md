# IMMZ.D1.Capture or update client history - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D1.Capture or update client history**

## Questionnaire: IMMZ.D1.Capture or update client history
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZD1",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE258",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE258",
    "name" : "IMMZ_D_DE258",
    "title" : "IMMZ.D.DE258 ValueSet for Type of dose",
    "status" : "active",
    "description" : "ValueSet for Type of dose for IMMZ.D.DE258",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE259",
          "display" : "Primary series"
        },
        {
          "code" : "DE260",
          "display" : "Dose 0"
        },
        {
          "code" : "DE261",
          "display" : "Supplementary dose"
        },
        {
          "code" : "DE262",
          "display" : "Booster dose"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE259",
        "display" : "Primary series"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE260",
        "display" : "Dose 0"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE261",
        "display" : "Supplementary dose"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE262",
        "display" : "Booster dose"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE204",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE204",
    "name" : "IMMZ_D_DE204",
    "title" : "IMMZ.D.DE204 ValueSet for HIV status",
    "status" : "active",
    "description" : "ValueSet for HIV status for IMMZ.D.DE204",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE205",
          "display" : "HIV-positive"
        },
        {
          "code" : "DE206",
          "display" : "HIV-negative"
        },
        {
          "code" : "DE207",
          "display" : "Unknown"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE205",
        "display" : "HIV-positive"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE206",
        "display" : "HIV-negative"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE207",
        "display" : "Unknown"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE243",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE243",
    "name" : "IMMZ_D_DE243",
    "title" : "IMMZ.D.DE243 ValueSet for Type of TB infection test performed",
    "status" : "active",
    "description" : "ValueSet for Type of TB infection test performed for IMMZ.D.DE243",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE244",
          "display" : "IGRA"
        },
        {
          "code" : "DE245",
          "display" : "TST"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE244",
        "display" : "IGRA"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE245",
        "display" : "TST"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE246",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE246",
    "name" : "IMMZ_D_DE246",
    "title" : "IMMZ.D.DE246 ValueSet for TB infection test result",
    "status" : "active",
    "description" : "ValueSet for TB infection test result for IMMZ.D.DE246",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE247",
          "display" : "Positive"
        },
        {
          "code" : "DE248",
          "display" : "Negative"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE247",
        "display" : "Positive"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE248",
        "display" : "Negative"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE212",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE212",
    "name" : "IMMZ_D_DE212",
    "title" : "IMMZ.D.DE212 ValueSet for Type of poliovirus dose",
    "status" : "active",
    "description" : "ValueSet for Type of poliovirus dose for IMMZ.D.DE212",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE213",
          "display" : "IPV"
        },
        {
          "code" : "DE214",
          "display" : "bOPV"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE213",
        "display" : "IPV"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE214",
        "display" : "bOPV"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE216",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE216",
    "name" : "IMMZ_D_DE216",
    "title" : "IMMZ.D.DE216 ValueSet for Type of JE dose",
    "status" : "active",
    "description" : "ValueSet for Type of JE dose for IMMZ.D.DE216",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE217",
          "display" : "Inactivated Vero cell-derived vaccine"
        },
        {
          "code" : "DE218",
          "display" : "Live attenuated vaccine"
        },
        {
          "code" : "DE219",
          "display" : "Live recombinant vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE217",
        "display" : "Inactivated Vero cell-derived vaccine"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE218",
        "display" : "Live attenuated vaccine"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE219",
        "display" : "Live recombinant vaccine"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE220",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE220",
    "name" : "IMMZ_D_DE220",
    "title" : "IMMZ.D.DE220 ValueSet for Type of TBE dose",
    "status" : "active",
    "description" : "ValueSet for Type of TBE dose for IMMZ.D.DE220",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE221",
          "display" : "FSME-Immun"
        },
        {
          "code" : "DE222",
          "display" : "Encepur"
        },
        {
          "code" : "DE223",
          "display" : "TBE-Moscow"
        },
        {
          "code" : "DE224",
          "display" : "EnceVir"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE221",
        "display" : "FSME-Immun"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE222",
        "display" : "Encepur"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE223",
        "display" : "TBE-Moscow"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE224",
        "display" : "EnceVir"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE225",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE225",
    "name" : "IMMZ_D_DE225",
    "title" : "IMMZ.D.DE225 ValueSet for Type of typhoid dose",
    "status" : "active",
    "description" : "ValueSet for Type of typhoid dose for IMMZ.D.DE225",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE226",
          "display" : "Typbar-TCV"
        },
        {
          "code" : "DE227",
          "display" : "ViPS"
        },
        {
          "code" : "DE228",
          "display" : "Ty21a"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE226",
        "display" : "Typbar-TCV"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE227",
        "display" : "ViPS"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE228",
        "display" : "Ty21a"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE229",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE229",
    "name" : "IMMZ_D_DE229",
    "title" : "IMMZ.D.DE229 ValueSet for Type of cholera dose",
    "status" : "active",
    "description" : "ValueSet for Type of cholera dose for IMMZ.D.DE229",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE230",
          "display" : "WC vaccine"
        },
        {
          "code" : "DE231",
          "display" : "WC-rBS vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE230",
        "display" : "WC vaccine"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE231",
        "display" : "WC-rBS vaccine"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE232",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE232",
    "name" : "IMMZ_D_DE232",
    "title" : "IMMZ.D.DE232 ValueSet for Type of meningococcal dose",
    "status" : "active",
    "description" : "ValueSet for Type of meningococcal dose for IMMZ.D.DE232",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE233",
          "display" : "MenA conjugate vaccine (5µg)"
        },
        {
          "code" : "DE234",
          "display" : "Monovalent MenC conjugate"
        },
        {
          "code" : "DE235",
          "display" : "Quadrivalent conjugate"
        },
        {
          "code" : "DE252",
          "display" : "Polysaccharide vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE233",
        "display" : "MenA conjugate vaccine (5µg)"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE234",
        "display" : "Monovalent MenC conjugate"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE235",
        "display" : "Quadrivalent conjugate"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE252",
        "display" : "Polysaccharide vaccine"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE237",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE237",
    "name" : "IMMZ_D_DE237",
    "title" : "IMMZ.D.DE237 ValueSet for Type of hepatitis A dose",
    "status" : "active",
    "description" : "ValueSet for Type of hepatitis A dose for IMMZ.D.DE237",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE238",
          "display" : "Live attenuated hepatitis A vaccine"
        },
        {
          "code" : "DE239",
          "display" : "Inactivated hepatitis A vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE238",
        "display" : "Live attenuated hepatitis A vaccine"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE239",
        "display" : "Inactivated hepatitis A vaccine"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE254",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE254",
    "name" : "IMMZ_D_DE254",
    "title" : "IMMZ.D.DE254 ValueSet for Type of hepatitis B dose",
    "status" : "active",
    "description" : "ValueSet for Type of hepatitis B dose for IMMZ.D.DE254",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE255",
          "display" : "Hepatitis B monovalent vaccine"
        },
        {
          "code" : "DE256",
          "display" : "Hepatitis B combination vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE255",
        "display" : "Hepatitis B monovalent vaccine"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE256",
        "display" : "Hepatitis B combination vaccine"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE241",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE241",
    "name" : "IMMZ_D_DE241",
    "title" : "IMMZ.D.DE241 ValueSet for Dengue serostatus",
    "status" : "active",
    "description" : "ValueSet for Dengue serostatus for IMMZ.D.DE241",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE264",
          "display" : "Positive"
        },
        {
          "code" : "DE265",
          "display" : "Negative"
        },
        {
          "code" : "DE266",
          "display" : "Unknown"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE264",
        "display" : "Positive"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE265",
        "display" : "Negative"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE266",
        "display" : "Unknown"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.VS",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.VS",
    "name" : "IMMZ_Z_VS",
    "title" : "IMMZ.Z.VS ValueSet for vaccine types",
    "status" : "active",
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
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE6",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6",
    "name" : "IMMZ_Z_DE6",
    "title" : "IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines",
    "status" : "active",
    "description" : "ValueSet for Hepatitis B-containing vaccines for IMMZ.Z.DE6",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE6",
          "display" : "Hepatitis B-containing vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM9V38",
          "display" : "Hepatitis B, purified antigen"
        },
        {
          "code" : "XM3G68",
          "display" : "Diphtheria, hepatitis B, tetanus vaccines"
        },
        {
          "code" : "XM32L7",
          "display" : "Hemophilus influenzae B and hepatitis B vaccines"
        },
        {
          "code" : "XM7JP3",
          "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus, hepatitis B vaccines"
        },
        {
          "code" : "XM0LT9",
          "display" : "Diphtheria, pertussis, poliomyelitis, tetanus, hepatitis B vaccines"
        },
        {
          "code" : "XM5XP9",
          "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus-hepatitis B, meningococcus A + C vaccines"
        },
        {
          "code" : "XM84S1",
          "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836374004",
          "display" : "Hepatitis B virus antigen-containing vaccine product"
        },
        {
          "code" : "871806004",
          "display" : "Haemophilus influenzae type b and Hepatitis B virus antigens only vaccine product"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BC01",
          "display" : "Hepatitis B, purified antigen"
        },
        {
          "code" : "J07CA07",
          "display" : "Diphtheria-hepatitis B-tetanus"
        },
        {
          "code" : "J07CA08",
          "display" : "Haemophilus influenzae B and hepatitis B"
        },
        {
          "code" : "J07CA11",
          "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B"
        },
        {
          "code" : "J07CA12",
          "display" : "Diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B"
        },
        {
          "code" : "J07CA13",
          "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C"
        },
        {
          "code" : "J07CA09",
          "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
        },
        {
          "code" : "J07CA05",
          "display" : "Diphtheria-hepatitis B-pertussis-tetanus"
        }]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [{
          "code" : "30937-7",
          "display" : "Long common name: Hepatitis B virus dose count in combination vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE6",
        "display" : "Hepatitis B-containing vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM9V38",
        "display" : "Hepatitis B, purified antigen"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836374004",
        "display" : "Hepatitis B virus antigen-containing vaccine product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BC01",
        "display" : "Hepatitis B, purified antigen"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM3G68",
        "display" : "Diphtheria, hepatitis B, tetanus vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA07",
        "display" : "Diphtheria-hepatitis B-tetanus"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM32L7",
        "display" : "Hemophilus influenzae B and hepatitis B vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "871806004",
        "display" : "Haemophilus influenzae type b and Hepatitis B virus antigens only vaccine product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA08",
        "display" : "Haemophilus influenzae B and hepatitis B"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM7JP3",
        "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus, hepatitis B vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA11",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0LT9",
        "display" : "Diphtheria, pertussis, poliomyelitis, tetanus, hepatitis B vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA12",
        "display" : "Diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM5XP9",
        "display" : "Diphtheria, hemophilus influenzae B, pertussis, tetanus-hepatitis B, meningococcus A + C vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA13",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM84S1",
        "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
      },
      {
        "system" : "http://loinc.org",
        "code" : "30937-7",
        "display" : "Long common name: Hepatitis B virus dose count in combination vaccine"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA09",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA05",
        "display" : "Diphtheria-hepatitis B-pertussis-tetanus"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE14",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14",
    "name" : "IMMZ_Z_DE14",
    "title" : "IMMZ.Z.DE14 ValueSet for Poliovirus-containing vaccines",
    "status" : "active",
    "description" : "ValueSet for Poliovirus-containing vaccines for IMMZ.Z.DE14",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE14",
          "display" : "Poliovirus-containing vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM0N50",
          "display" : "Poliomyelitis vaccines"
        },
        {
          "code" : "XM1LX9",
          "display" : "Diphtheria, hemophilus influenzae B, pertussis, poliomyelitis, tetanus vaccines"
        },
        {
          "code" : "XM09Q7",
          "display" : "Diphtheria, pertussis, poliomyelitis, tetanus vaccines"
        },
        {
          "code" : "XM0LT9",
          "display" : "Diphtheria, pertussis, poliomyelitis, tetanus, hepatitis B vaccines"
        },
        {
          "code" : "XM8AW1",
          "display" : "Diphtheria, poliomyelitis, tetanus vaccines"
        },
        {
          "code" : "XM01H1",
          "display" : "Hemophilus influenzae B and poliomyelitis vaccines"
        },
        {
          "code" : "XM21E6",
          "display" : "Diphtheria tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
        },
        {
          "code" : "XM84S1",
          "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
        },
        {
          "code" : "XM9JP8",
          "display" : "Diphtheria, tetanus, acellular pertussis, inactivated polio virus vaccines"
        },
        {
          "code" : "XM5V19",
          "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
        },
        {
          "code" : "XM79H3",
          "display" : "Poliomyelitis oral, bivalent, live attenuated"
        },
        {
          "code" : "XM0VX8",
          "display" : "Poliomyelitis oral, monovalent live attenuated"
        },
        {
          "code" : "XM0KZ1",
          "display" : "Poliomyelitis oral, trivalent, live attenuated"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "1031000221108",
          "display" : "Vaccine product containing Human poliovirus antigen (medicinal product)"
        },
        {
          "code" : "871740006",
          "display" : "Inactivated whole Human poliovirus antigen only vaccine product"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BF",
          "display" : "Poliomyelitis vaccines"
        },
        {
          "code" : "J07CA06",
          "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus"
        },
        {
          "code" : "J07CA02",
          "display" : "Diphtheria-pertussis-poliomyelitis-tetanus"
        },
        {
          "code" : "J07CA12",
          "display" : "Diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B"
        },
        {
          "code" : "J07CA01",
          "display" : "Diphtheria-poliomyelitis-tetanus"
        },
        {
          "code" : "J07CA04",
          "display" : "Haemophilus influenzae B and poliomyelitis"
        },
        {
          "code" : "J07BF03",
          "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
        },
        {
          "code" : "J07CA09",
          "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
        },
        {
          "code" : "J07BF04",
          "display" : "Poliomyelitis oral, bivalent, live attenuated"
        },
        {
          "code" : "J07BF01",
          "display" : "Poliomyelitis oral, monovalent, live attenuated"
        },
        {
          "code" : "J07BF02",
          "display" : "Poliomyelitis oral, trivalent, live attenuated"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE14",
        "display" : "Poliovirus-containing vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0N50",
        "display" : "Poliomyelitis vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "1031000221108",
        "display" : "Vaccine product containing Human poliovirus antigen (medicinal product)"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF",
        "display" : "Poliomyelitis vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM1LX9",
        "display" : "Diphtheria, hemophilus influenzae B, pertussis, poliomyelitis, tetanus vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA06",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM09Q7",
        "display" : "Diphtheria, pertussis, poliomyelitis, tetanus vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA02",
        "display" : "Diphtheria-pertussis-poliomyelitis-tetanus"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0LT9",
        "display" : "Diphtheria, pertussis, poliomyelitis, tetanus, hepatitis B vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA12",
        "display" : "Diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM8AW1",
        "display" : "Diphtheria, poliomyelitis, tetanus vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA01",
        "display" : "Diphtheria-poliomyelitis-tetanus"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM01H1",
        "display" : "Hemophilus influenzae B and poliomyelitis vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA04",
        "display" : "Haemophilus influenzae B and poliomyelitis"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM21E6",
        "display" : "Diphtheria tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM84S1",
        "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM9JP8",
        "display" : "Diphtheria, tetanus, acellular pertussis, inactivated polio virus vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM5V19",
        "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF03",
        "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA09",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM79H3",
        "display" : "Poliomyelitis oral, bivalent, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF04",
        "display" : "Poliomyelitis oral, bivalent, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0VX8",
        "display" : "Poliomyelitis oral, monovalent live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF01",
        "display" : "Poliomyelitis oral, monovalent, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0KZ1",
        "display" : "Poliomyelitis oral, trivalent, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF02",
        "display" : "Poliomyelitis oral, trivalent, live attenuated"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "871740006",
        "display" : "Inactivated whole Human poliovirus antigen only vaccine product"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE30",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE30",
    "name" : "IMMZ_Z_DE30",
    "title" : "IMMZ.Z.DE30 ValueSet for Oral polio vaccines",
    "status" : "active",
    "description" : "ValueSet for Oral polio vaccines for IMMZ.Z.DE30",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE30",
          "display" : "Oral polio vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM0VX8",
          "display" : "Poliomyelitis oral, monovalent live attenuated"
        },
        {
          "code" : "XM79H3",
          "display" : "Poliomyelitis oral, bivalent, live attenuated"
        },
        {
          "code" : "XM0KZ1",
          "display" : "Poliomyelitis oral, trivalent, live attenuated"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BF01",
          "display" : "Poliomyelitis oral, monovalent, live attenuated"
        },
        {
          "code" : "J07BF04",
          "display" : "Poliomyelitis oral, bivalent, live attenuated"
        },
        {
          "code" : "J07BF02",
          "display" : "Poliomyelitis oral, trivalent, live attenuated"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE30",
        "display" : "Oral polio vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0VX8",
        "display" : "Poliomyelitis oral, monovalent live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF01",
        "display" : "Poliomyelitis oral, monovalent, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM79H3",
        "display" : "Poliomyelitis oral, bivalent, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF04",
        "display" : "Poliomyelitis oral, bivalent, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0KZ1",
        "display" : "Poliomyelitis oral, trivalent, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF02",
        "display" : "Poliomyelitis oral, trivalent, live attenuated"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE31",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE31",
    "name" : "IMMZ_Z_DE31",
    "title" : "IMMZ.Z.DE31 ValueSet for Inactivated polio vaccines",
    "status" : "active",
    "description" : "ValueSet for Inactivated polio vaccines for IMMZ.Z.DE31",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE31",
          "display" : "Inactivated polio vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM5V19",
          "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
        },
        {
          "code" : "XM84S1",
          "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
        },
        {
          "code" : "XM21E6",
          "display" : "Diphtheria tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
        },
        {
          "code" : "XM9JP8",
          "display" : "Diphtheria, tetanus, acellular pertussis, inactivated polio virus vaccines"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BF03",
          "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
        },
        {
          "code" : "J07CA09",
          "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE31",
        "display" : "Inactivated polio vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM5V19",
        "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BF03",
        "display" : "Poliomyelitis, trivalent, inactivated, whole virus"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM84S1",
        "display" : "Diphtheria, hepatitis B, tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA09",
        "display" : "Diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM21E6",
        "display" : "Diphtheria tetanus, acellular pertussis, inactivated polio virus, haemophilus Influenzae type B vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM9JP8",
        "display" : "Diphtheria, tetanus, acellular pertussis, inactivated polio virus vaccines"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE1",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1",
    "name" : "IMMZ_Z_DE1",
    "title" : "IMMZ.Z.DE1 ValueSet for BCG vaccines",
    "status" : "active",
    "description" : "ValueSet for BCG vaccines for IMMZ.Z.DE1",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE1",
          "display" : "BCG vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM4639",
          "display" : "Tuberculosis vaccines"
        },
        {
          "code" : "XM8142",
          "display" : "Tuberculosis, live attenuated vaccines"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "418268006",
          "display" : "Bacillus Calmette-Guerin antigen-containing product"
        },
        {
          "code" : "774702006",
          "display" : "Bacillus Calmette-Guerin antigen only product"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "L03AX03",
          "display" : "BCG vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE1",
        "display" : "BCG vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM4639",
        "display" : "Tuberculosis vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "418268006",
        "display" : "Bacillus Calmette-Guerin antigen-containing product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "L03AX03",
        "display" : "BCG vaccine"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM8142",
        "display" : "Tuberculosis, live attenuated vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "774702006",
        "display" : "Bacillus Calmette-Guerin antigen only product"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE21",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21",
    "name" : "IMMZ_Z_DE21",
    "title" : "IMMZ.Z.DE21 ValueSet for Typhoid vaccines",
    "status" : "active",
    "description" : "ValueSet for Typhoid vaccines for IMMZ.Z.DE21",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE21",
          "display" : "Typhoid vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM8BU8",
          "display" : "Typhoid vaccines"
        },
        {
          "code" : "XM3JA6",
          "display" : "Typhoid, hepatitis A vaccines"
        },
        {
          "code" : "XM33K4",
          "display" : "Typhoid, oral, live attenuated vaccines"
        },
        {
          "code" : "XM89G3",
          "display" : "Typhoid, inactivated, whole cell vaccines"
        },
        {
          "code" : "XM3SF6",
          "display" : "Typhoid, purified polysaccharide antigen vaccines"
        },
        {
          "code" : "XM9UB1",
          "display" : "Typhoid-paratyphoid vaccines"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07AP",
          "display" : "Typhoid vaccines"
        },
        {
          "code" : "J07CA10",
          "display" : "Typhoid-hepatitis A"
        },
        {
          "code" : "J07AP01",
          "display" : "Typhoid, oral, live attenuated"
        },
        {
          "code" : "J07AP02",
          "display" : "Typhoid, inactivated, whole cell"
        },
        {
          "code" : "J07AP03",
          "display" : "Typhoid, purified polysaccharide antigen"
        },
        {
          "code" : "J07AP10",
          "display" : "Typhoid, combinations with paratyphi types"
        },
        {
          "code" : "J07AE51",
          "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE21",
        "display" : "Typhoid vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM8BU8",
        "display" : "Typhoid vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AP",
        "display" : "Typhoid vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM3JA6",
        "display" : "Typhoid, hepatitis A vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA10",
        "display" : "Typhoid-hepatitis A"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM33K4",
        "display" : "Typhoid, oral, live attenuated vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AP01",
        "display" : "Typhoid, oral, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM89G3",
        "display" : "Typhoid, inactivated, whole cell vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AP02",
        "display" : "Typhoid, inactivated, whole cell"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM3SF6",
        "display" : "Typhoid, purified polysaccharide antigen vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AP03",
        "display" : "Typhoid, purified polysaccharide antigen"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM9UB1",
        "display" : "Typhoid-paratyphoid vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AP10",
        "display" : "Typhoid, combinations with paratyphi types"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AE51",
        "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE9",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE9",
    "name" : "IMMZ_Z_DE9",
    "title" : "IMMZ.Z.DE9 ValueSet for Measles-containing vaccines",
    "status" : "active",
    "description" : "ValueSet for Measles-containing vaccines for IMMZ.Z.DE9",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE9",
          "display" : "Measles-containing vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM28X5",
          "display" : "Measles vaccines"
        },
        {
          "code" : "XM8L15",
          "display" : "Measles, live attenuated"
        },
        {
          "code" : "XM8TF3",
          "display" : "Measles, combinations with mumps and rubella, live attenuated"
        },
        {
          "code" : "XM21H2",
          "display" : "Measles, combinations with rubella, live attenuated"
        },
        {
          "code" : "XM4AJ8",
          "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
        },
        {
          "code" : "XM9439",
          "display" : "Measles, combinations with mumps, live attenuated"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836382004",
          "display" : "Measles morbillivirus antigen-containing vaccine product"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BD",
          "display" : "Measles vaccines"
        },
        {
          "code" : "J07BD01",
          "display" : "Measles, live attenuated"
        },
        {
          "code" : "J07BD52",
          "display" : "Measles, combinations with mumps and rubella, live attenuated"
        },
        {
          "code" : "J07BD53",
          "display" : "Measles, combinations with rubella, live attenuated"
        },
        {
          "code" : "J07BD54",
          "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
        },
        {
          "code" : "J07BD51",
          "display" : "Measles, combinations with mumps, live attenuated"
        }]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [{
          "code" : "30940-1",
          "display" : "Long common name: Measles virus + Mumps virus + Rubella virus dose count in combination vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE9",
        "display" : "Measles-containing vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM28X5",
        "display" : "Measles vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836382004",
        "display" : "Measles morbillivirus antigen-containing vaccine product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BD",
        "display" : "Measles vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM8L15",
        "display" : "Measles, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BD01",
        "display" : "Measles, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM8TF3",
        "display" : "Measles, combinations with mumps and rubella, live attenuated"
      },
      {
        "system" : "http://loinc.org",
        "code" : "30940-1",
        "display" : "Long common name: Measles virus + Mumps virus + Rubella virus dose count in combination vaccine"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BD52",
        "display" : "Measles, combinations with mumps and rubella, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM21H2",
        "display" : "Measles, combinations with rubella, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BD53",
        "display" : "Measles, combinations with rubella, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM4AJ8",
        "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BD54",
        "display" : "Measles, combinations with mumps, rubella and varicella, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM9439",
        "display" : "Measles, combinations with mumps, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BD51",
        "display" : "Measles, combinations with mumps, live attenuated"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE13",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE13",
    "name" : "IMMZ_Z_DE13",
    "title" : "IMMZ.Z.DE13 ValueSet for Pneumococcal vaccines",
    "status" : "active",
    "description" : "ValueSet for Pneumococcal vaccines for IMMZ.Z.DE13",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE13",
          "display" : "Pneumococcal vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM9EM7",
          "display" : "Pneumococcal vaccines"
        },
        {
          "code" : "XM9G97",
          "display" : "Pneumococcal conjugate (13-valent) vaccines"
        },
        {
          "code" : "XM2249",
          "display" : "Pneumococcal polysaccharide 23-valent vaccines"
        },
        {
          "code" : "XM91D7",
          "display" : "Pneumococcus, purified polysaccharides antigen vaccines"
        },
        {
          "code" : "XM96S7",
          "display" : "Pneumococcus, purified polysaccharides antigen conjugated vaccines"
        },
        {
          "code" : "XM4R39",
          "display" : "Pneumococcus purified polysaccharides antigen and Haemophilus influenzae, conjugated vaccines"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836398006",
          "display" : "Streptococcus pneumoniae antigen-containing vaccine product"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07AL",
          "display" : "Pneumococcal vaccines"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE13",
        "display" : "Pneumococcal vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM9EM7",
        "display" : "Pneumococcal vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836398006",
        "display" : "Streptococcus pneumoniae antigen-containing vaccine product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AL",
        "display" : "Pneumococcal vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM9G97",
        "display" : "Pneumococcal conjugate (13-valent) vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM2249",
        "display" : "Pneumococcal polysaccharide 23-valent vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM91D7",
        "display" : "Pneumococcus, purified polysaccharides antigen vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM96S7",
        "display" : "Pneumococcus, purified polysaccharides antigen conjugated vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM4R39",
        "display" : "Pneumococcus purified polysaccharides antigen and Haemophilus influenzae, conjugated vaccines"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE8",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE8",
    "name" : "IMMZ_Z_DE8",
    "title" : "IMMZ.Z.DE8 ValueSet for JE vaccines",
    "status" : "active",
    "description" : "ValueSet for JE vaccines for IMMZ.Z.DE8",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE8",
          "display" : "JE vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM0LB5",
          "display" : "Encephalitis, Japanese, inactivated, whole virus"
        },
        {
          "code" : "XM47S0",
          "display" : "Encephalitis, Japanese, live attenuated"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836378001",
          "display" : "Japanese encephalitis virus antigen-containing vaccine product"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BA02",
          "display" : "Encephalitis, Japanese, inactivated, whole virus"
        },
        {
          "code" : "J07BA03",
          "display" : "Encephalitis, Japanese, live attenuated"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE8",
        "display" : "JE vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0LB5",
        "display" : "Encephalitis, Japanese, inactivated, whole virus"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836378001",
        "display" : "Japanese encephalitis virus antigen-containing vaccine product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BA02",
        "display" : "Encephalitis, Japanese, inactivated, whole virus"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM47S0",
        "display" : "Encephalitis, Japanese, live attenuated"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BA03",
        "display" : "Encephalitis, Japanese, live attenuated"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE20",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE20",
    "name" : "IMMZ_Z_DE20",
    "title" : "IMMZ.Z.DE20 ValueSet for TBE vaccines",
    "status" : "active",
    "description" : "ValueSet for TBE vaccines for IMMZ.Z.DE20",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE20",
          "display" : "TBE vaccines"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836403007",
          "display" : "Tick-borne encephalitis virus antigen-containing vaccine product"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM0RC1",
          "display" : "Encephalitis vaccines"
        },
        {
          "code" : "XM8MP6",
          "display" : "Encephalitis, tick borne, inactivated, whole virus"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BA01",
          "display" : "Encephalitis, tick borne, inactivated, whole virus"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE20",
        "display" : "TBE vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836403007",
        "display" : "Tick-borne encephalitis virus antigen-containing vaccine product"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM0RC1",
        "display" : "Encephalitis vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM8MP6",
        "display" : "Encephalitis, tick borne, inactivated, whole virus"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BA01",
        "display" : "Encephalitis, tick borne, inactivated, whole virus"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE2",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2",
    "name" : "IMMZ_Z_DE2",
    "title" : "IMMZ.Z.DE2 ValueSet for Cholera vaccines",
    "status" : "active",
    "description" : "ValueSet for Cholera vaccines for IMMZ.Z.DE2",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE2",
          "display" : "Cholera vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM29K4",
          "display" : "Cholera vaccines"
        },
        {
          "code" : "XM3Z26",
          "display" : "Cholera, inactivated, whole cell vaccines"
        },
        {
          "code" : "XM72A0",
          "display" : "Cholera, live attenuated vaccines"
        },
        {
          "code" : "XM1FT6",
          "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell vaccines"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836383009",
          "display" : "Vibrio cholerae antigen-containing vaccine product"
        },
        {
          "code" : "1001000221103",
          "display" : "Inactivated whole Vibrio cholerae antigen only vaccine product in oral dose form"
        },
        {
          "code" : "1011000221100",
          "display" : "Live attenuated Vibrio cholerae antigen only vaccine product in oral dose form"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07AE",
          "display" : "Cholera vaccines"
        },
        {
          "code" : "J07AE01",
          "display" : "Cholera, inactivated, whole cell"
        },
        {
          "code" : "J07AE02",
          "display" : "Cholera, live attenuated"
        },
        {
          "code" : "J07AE51",
          "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE2",
        "display" : "Cholera vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM29K4",
        "display" : "Cholera vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836383009",
        "display" : "Vibrio cholerae antigen-containing vaccine product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AE",
        "display" : "Cholera vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM3Z26",
        "display" : "Cholera, inactivated, whole cell vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "1001000221103",
        "display" : "Inactivated whole Vibrio cholerae antigen only vaccine product in oral dose form"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AE01",
        "display" : "Cholera, inactivated, whole cell"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM72A0",
        "display" : "Cholera, live attenuated vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "1011000221100",
        "display" : "Live attenuated Vibrio cholerae antigen only vaccine product in oral dose form"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AE02",
        "display" : "Cholera, live attenuated"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM1FT6",
        "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AE51",
        "display" : "Cholera, combinations with typhoid vaccine, inactivated, whole cell"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE10",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10",
    "name" : "IMMZ_Z_DE10",
    "title" : "IMMZ.Z.DE10 ValueSet for Meningococcal vaccines",
    "status" : "active",
    "description" : "ValueSet for Meningococcal vaccines for IMMZ.Z.DE10",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE10",
          "display" : "Meningococcal vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM2WV4",
          "display" : "Meningococcal vaccines"
        },
        {
          "code" : "XM92B2",
          "display" : "Meningococcal monovalent purified polysaccharides antigen vaccines"
        },
        {
          "code" : "XM5LC2",
          "display" : "Meningococcal polyvalent purified polysaccharides antigen vaccines"
        },
        {
          "code" : "XM18Y8",
          "display" : "Meningococcus C, purified polysaccharides antigen conjugated vaccines"
        },
        {
          "code" : "XM2280",
          "display" : "Meningococcus A, purified polysaccharides antigen conjugated vaccines"
        },
        {
          "code" : "XM9GJ1",
          "display" : "Meningococcus B, outer membrane vesicle vaccines"
        },
        {
          "code" : "XM1X81",
          "display" : "Meningococcus B, multicomponent vaccines"
        },
        {
          "code" : "XM37L5",
          "display" : "Meningococcus A, purified polysaccharides antigen vaccines"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836401009",
          "display" : "Neisseria meningitidis antigen-containing vaccine product"
        },
        {
          "code" : "871871008",
          "display" : "Neisseria meningitidis serogroup A and C only vaccine product"
        },
        {
          "code" : "871866001",
          "display" : "Neisseria meningitidis serogroup C only vaccine product"
        },
        {
          "code" : "871873006",
          "display" : "Neisseria meningitidis serogroup A, C, W135 and Y only vaccine product"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07AH",
          "display" : "Meningococcal vaccines"
        },
        {
          "code" : "J07AH02",
          "display" : "Other meningococcal monovalent purified polysaccharides antigen"
        },
        {
          "code" : "J07AH05",
          "display" : "Other meningococcal polyvalent purified polysaccharides antigen"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE10",
        "display" : "Meningococcal vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM2WV4",
        "display" : "Meningococcal vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836401009",
        "display" : "Neisseria meningitidis antigen-containing vaccine product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AH",
        "display" : "Meningococcal vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM92B2",
        "display" : "Meningococcal monovalent purified polysaccharides antigen vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM5LC2",
        "display" : "Meningococcal polyvalent purified polysaccharides antigen vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM18Y8",
        "display" : "Meningococcus C, purified polysaccharides antigen conjugated vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM2280",
        "display" : "Meningococcus A, purified polysaccharides antigen conjugated vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM9GJ1",
        "display" : "Meningococcus B, outer membrane vesicle vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM1X81",
        "display" : "Meningococcus B, multicomponent vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM37L5",
        "display" : "Meningococcus A, purified polysaccharides antigen vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AH02",
        "display" : "Other meningococcal monovalent purified polysaccharides antigen"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07AH05",
        "display" : "Other meningococcal polyvalent purified polysaccharides antigen"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "871871008",
        "display" : "Neisseria meningitidis serogroup A and C only vaccine product"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "871866001",
        "display" : "Neisseria meningitidis serogroup C only vaccine product"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "871873006",
        "display" : "Neisseria meningitidis serogroup A, C, W135 and Y only vaccine product"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE5",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE5",
    "name" : "IMMZ_Z_DE5",
    "title" : "IMMZ.Z.DE5 ValueSet for Hepatitis A-containing vaccines",
    "status" : "active",
    "description" : "ValueSet for Hepatitis A-containing vaccines for IMMZ.Z.DE5",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE5",
          "display" : "Hepatitis A-containing vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM6LL6",
          "display" : "Hepatitis vaccines"
        },
        {
          "code" : "XM2A12",
          "display" : "Hepatitis A, inactivated, whole virus"
        },
        {
          "code" : "XM3JA6",
          "display" : "Typhoid, hepatitis A vaccines"
        },
        {
          "code" : "XM03Y7",
          "display" : "Combinations hepatitis vaccines"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836375003",
          "display" : "Hepatitis A virus antigen-containing vaccine product"
        },
        {
          "code" : "871803007",
          "display" : "Hepatitis A and Hepatitis B virus antigens only vaccine product"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BC02",
          "display" : "Hepatitis A, inactivated, whole virus"
        },
        {
          "code" : "J07CA10",
          "display" : "Typhoid-hepatitis A"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE5",
        "display" : "Hepatitis A-containing vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM6LL6",
        "display" : "Hepatitis vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836375003",
        "display" : "Hepatitis A virus antigen-containing vaccine product"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM2A12",
        "display" : "Hepatitis A, inactivated, whole virus"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BC02",
        "display" : "Hepatitis A, inactivated, whole virus"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM3JA6",
        "display" : "Typhoid, hepatitis A vaccines"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA10",
        "display" : "Typhoid-hepatitis A"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM03Y7",
        "display" : "Combinations hepatitis vaccines"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "871803007",
        "display" : "Hepatitis A and Hepatitis B virus antigens only vaccine product"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE15",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE15",
    "name" : "IMMZ_Z_DE15",
    "title" : "IMMZ.Z.DE15 ValueSet for Rabies vaccines",
    "status" : "active",
    "description" : "ValueSet for Rabies vaccines for IMMZ.Z.DE15",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE15",
          "display" : "Rabies vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM6T09",
          "display" : "Rabies vaccine"
        },
        {
          "code" : "XM7BE8",
          "display" : "Rabies, inactivated, whole virus"
        }]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [{
          "code" : "836393002",
          "display" : "Rabies lyssavirus antigen-containing vaccine product"
        },
        {
          "code" : "1131000221109",
          "display" : "Vaccine product containing only inactivated whole Rabies lyssavirus antigen"
        }]
      },
      {
        "system" : "http://www.whocc.no/atc",
        "concept" : [{
          "code" : "J07BG",
          "display" : "Rabies vaccines"
        },
        {
          "code" : "J07BG01",
          "display" : "Rabies, inactivated, whole virus"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE15",
        "display" : "Rabies vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM6T09",
        "display" : "Rabies vaccine"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "836393002",
        "display" : "Rabies lyssavirus antigen-containing vaccine product"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BG",
        "display" : "Rabies vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM7BE8",
        "display" : "Rabies, inactivated, whole virus"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "1131000221109",
        "display" : "Vaccine product containing only inactivated whole Rabies lyssavirus antigen"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07BG01",
        "display" : "Rabies, inactivated, whole virus"
      }]
    }
  },
  {
    "resourceType" : "ValueSet",
    "id" : "IMMZ.Z.DE25",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE25",
    "name" : "IMMZ_Z_DE25",
    "title" : "IMMZ.Z.DE25 ValueSet for Dengue vaccines",
    "status" : "active",
    "description" : "ValueSet for Dengue vaccines for IMMZ.Z.DE25",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "concept" : [{
          "code" : "DE25",
          "display" : "Dengue vaccines"
        }]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [{
          "code" : "XM38G7",
          "display" : "Dengue vaccine"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
        "code" : "DE25",
        "display" : "Dengue vaccines"
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "XM38G7",
        "display" : "Dengue vaccine"
      }]
    }
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D1.QRToBundle"
  }],
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZD1",
  "version" : "0.2.0",
  "title" : "IMMZ.D1.Capture or update client history",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-04-03T22:35:55+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.D1.Capture or update client history",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "HepBorPolio",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6') or %resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14') or %resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE30') or %resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE31')"
      }
    }],
    "linkId" : "birthDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE263"
    }],
    "text" : "Birth dose",
    "type" : "boolean",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "typeOfDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE258"
    }],
    "text" : "Type of dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE258"
  },
  {
    "linkId" : "completedThePrimaryVaccinationSeries",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE203"
    }],
    "text" : "Completed the primary vaccination series",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "completedTheBoosterSeries",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE257"
    }],
    "text" : "Completed the booster series",
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
    "linkId" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE242"
    }],
    "text" : "Date when primary vaccination series was completed",
    "type" : "date",
    "enableWhen" : [{
      "question" : "completedThePrimaryVaccinationSeries",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "hivStatus",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE204"
    },
    {
      "system" : "http://loinc.org",
      "code" : "55277-8",
      "display" : "HIV Status"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "278977008",
      "display" : "HIV status"
    }],
    "text" : "HIV status",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE204"
  },
  {
    "linkId" : "pretermBirth",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE208"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "code" : "KA21.4",
      "display" : "Preterm newborn"
    },
    {
      "system" : "http://loinc.org",
      "code" : "76517-2",
      "display" : "Premature infant"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "395507008",
      "display" : "Premature infant (finding)"
    }],
    "text" : "Preterm birth",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "immunocompromised",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE209"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "code" : "4B4Z",
      "display" : "Diseases of the immune system, unspecified"
    },
    {
      "system" : "http://loinc.org",
      "code" : "96381-9",
      "display" : "Immune status"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "370388006",
      "display" : "Patient immunocompromised (finding)"
    }],
    "text" : "Immunocompromised",
    "type" : "boolean",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "currentlyOnArt",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE210"
    }],
    "text" : "Currently on ART",
    "type" : "boolean",
    "enableWhen" : [{
      "question" : "hivStatus",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE205"
      }
    }],
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "BCG",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1')"
      }
    }],
    "linkId" : "typeOfTbInfectionTestPerformed",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE243"
    }],
    "text" : "Type of TB infection test performed",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE243"
  },
  {
    "linkId" : "tbInfectionTestResult",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE246"
    }],
    "text" : "TB infection test result",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "typeOfTbInfectionTestPerformed",
      "operator" : "exists",
      "answerBoolean" : true
    }],
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE246"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "BCGorTyphoid",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1') or %resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21')"
      }
    }],
    "linkId" : "immunologicallyStable",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE249"
    }],
    "text" : "Immunologically stable",
    "type" : "boolean",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "BCG",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1')"
      }
    }],
    "linkId" : "clinicallyWell",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE250"
    }],
    "text" : "Clinically well",
    "type" : "boolean",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal" : 0
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "BCGorHepB",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1') or %resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6')"
      }
    }],
    "linkId" : "birthWeightInGrams",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE211"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "code" : "KA21",
      "display" : "Disorders of newborn related to short gestation or low birth weight, not elsewhere classified"
    },
    {
      "system" : "http://loinc.org",
      "code" : "8339-4",
      "display" : "Birth weight measured"
    }],
    "text" : "Birth weight in grams",
    "type" : "decimal",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Polio",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14') or %resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE30') or %resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE31')"
      }
    }],
    "linkId" : "typeOfPoliovirusDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE212"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "code" : "XM0N50",
      "display" : "Poliomyelitis vaccines"
    }],
    "text" : "Type of poliovirus dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE212"
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
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Measles",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE9') or %resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE32')"
      }
    }],
    "linkId" : "artStartDate",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE215"
    }],
    "text" : "ART start date",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Pneumococcal",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE13')"
      }
    }],
    "linkId" : "highRiskOfPneumococcalInfection",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE251"
    }],
    "text" : "High risk of pneumococcal infection",
    "type" : "boolean",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "JE",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE8')"
      }
    }],
    "linkId" : "typeOfJeDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE216"
    }],
    "text" : "Type of JE dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE216"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "TBE",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE20')"
      }
    }],
    "linkId" : "typeOfTbeDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE220"
    }],
    "text" : "Type of TBE dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE220"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Typhoid",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE21')"
      }
    }],
    "linkId" : "typeOfTyphoidDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE225"
    }],
    "text" : "Type of typhoid dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE225"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Cholera",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2')"
      }
    }],
    "linkId" : "typeOfCholeraDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE229"
    }],
    "text" : "Type of cholera dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE229"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Meningococcal",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10')"
      }
    }],
    "linkId" : "typeOfMeningococcalDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE232"
    }],
    "text" : "Type of meningococcal dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE232"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal" : 0
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Meningococcal",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE10')"
      }
    }],
    "linkId" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE236"
    }],
    "text" : "Age in months when client received first meningococcal dose",
    "type" : "decimal",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "HepatitisA",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE5')"
      }
    }],
    "linkId" : "typeOfHepatitisADose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE237"
    }],
    "text" : "Type of hepatitis A dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE237"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "HepatitisB",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6')"
      }
    }],
    "linkId" : "typeOfHepatitisBDose",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE254"
    }],
    "text" : "Type of hepatitis B dose",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE254"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal" : 0
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Rabies",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE15')"
      }
    }],
    "linkId" : "vnaLevel",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE240"
    }],
    "text" : "VNA level",
    "type" : "decimal",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Rabies",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE15')"
      }
    }],
    "linkId" : "riskOfOccupationalExposureToRabiesVirus",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE253"
    }],
    "text" : "Risk of occupational exposure to rabies virus",
    "type" : "boolean",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
      "valueExpression" : {
        "name" : "Dengue",
        "language" : "text/fhirpath",
        "expression" : "%resource.item.where(linkId='vaccineType').answer.value.memberOf('http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE25')"
      }
    }],
    "linkId" : "dengueSerostatus",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE241"
    }],
    "text" : "Dengue serostatus",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE241"
  },
  {
    "linkId" : "vaccineType",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE19"
    },
    {
      "system" : "http://loinc.org",
      "code" : "39236-5",
      "display" : "Vaccine code (CPT [Current Procedural Terminology]) CPHS (Children's Preventative Health System)"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "787859002",
      "display" : "Vaccine product (medicinal product)"
    }],
    "text" : "Vaccine type",
    "type" : "choice",
    "required" : true,
    "repeats" : true,
    "answerValueSet" : "#IMMZ.Z.VS"
  },
  {
    "linkId" : "dateAndTimeOfVaccination",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE20"
    },
    {
      "system" : "http://loinc.org",
      "code" : "30952-6",
      "display" : "Date and time of vaccination"
    }],
    "text" : "Date and time of vaccination",
    "type" : "dateTime",
    "required" : true,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueDateTime" : "2100-01-01",
      "_valueDateTime" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
          "valueString" : "now()"
        }]
      }
    }],
    "linkId" : "contactDate",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE201"
    },
    {
      "system" : "http://loinc.org",
      "code" : "21975-8",
      "display" : "Date last contact"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "406543005",
      "display" : "Date of visit"
    }],
    "text" : "Contact date",
    "type" : "dateTime",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "ancContactNumber",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE202"
    },
    {
      "system" : "http://loinc.org",
      "code" : "75612-2",
      "display" : "Number of visits to this health-care entity in the last 12 months"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "3401000175105",
      "display" : "Total number of prenatal care visits"
    }],
    "text" : "ANC contact number",
    "type" : "integer",
    "required" : false,
    "repeats" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    }],
    "linkId" : "doseNumber",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE124"
    }],
    "text" : "Dose number",
    "type" : "integer",
    "required" : true,
    "repeats" : false
  }]
}

```
