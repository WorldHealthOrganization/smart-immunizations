# IMMZ.Z CodeSystem for Data Elements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z CodeSystem for Data Elements**

## CodeSystem: IMMZ.Z CodeSystem for Data Elements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.Z | *Version*:1.0.0 |
| Active as of 2026-10-01 | *Computable Name*:IMMZ_Z |

 
CodeSystem for IMMZ.Z Data Elements 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMMZ.Z.DE1 ValueSet for BCG vaccines](ValueSet-IMMZ.Z.DE1.md)
* [IMMZ.Z.DE10 ValueSet for Meningococcal vaccines](ValueSet-IMMZ.Z.DE10.md)
* [IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines](ValueSet-IMMZ.Z.DE11.md)
* [IMMZ.Z.DE12 ValueSet for Pertussis-containing vaccines](ValueSet-IMMZ.Z.DE12.md)
* [IMMZ.Z.DE13 ValueSet for Pneumococcal vaccines](ValueSet-IMMZ.Z.DE13.md)
* [IMMZ.Z.DE14 ValueSet for Poliovirus-containing vaccines](ValueSet-IMMZ.Z.DE14.md)
* [IMMZ.Z.DE15 ValueSet for Rabies vaccines](ValueSet-IMMZ.Z.DE15.md)
* [IMMZ.Z.DE16 ValueSet for Rotavirus vaccines](ValueSet-IMMZ.Z.DE16.md)
* [IMMZ.Z.DE17 ValueSet for Rubella-containing vaccines](ValueSet-IMMZ.Z.DE17.md)
* [IMMZ.Z.DE18 ValueSet for Seasonal influenza vaccines](ValueSet-IMMZ.Z.DE18.md)
* [IMMZ.Z.DE19 ValueSet for Tetanus-containing vaccines](ValueSet-IMMZ.Z.DE19.md)
* [IMMZ.Z.DE2 ValueSet for Cholera vaccines](ValueSet-IMMZ.Z.DE2.md)
* [IMMZ.Z.DE20 ValueSet for TBE vaccines](ValueSet-IMMZ.Z.DE20.md)
* [IMMZ.Z.DE21 ValueSet for Typhoid vaccines](ValueSet-IMMZ.Z.DE21.md)
* [IMMZ.Z.DE22 ValueSet for Varicella-containing vaccines](ValueSet-IMMZ.Z.DE22.md)
* [IMMZ.Z.DE23 ValueSet for Yellow fever vaccines](ValueSet-IMMZ.Z.DE23.md)
* [IMMZ.Z.DE24 ValueSet for DTP-containing vaccines](ValueSet-IMMZ.Z.DE24.md)
* [IMMZ.Z.DE25 ValueSet for Dengue vaccines](ValueSet-IMMZ.Z.DE25.md)
* [IMMZ.Z.DE26 ValueSet for COVID-19 vaccines](ValueSet-IMMZ.Z.DE26.md)
* [IMMZ.Z.DE27 ValueSet for Malaria vaccines](ValueSet-IMMZ.Z.DE27.md)
* [IMMZ.Z.DE28 ValueSet for Tetanus and diphtheria-containing vaccines](ValueSet-IMMZ.Z.DE28.md)
* [IMMZ.Z.DE29 ValueSet for Pentavalent vaccines](ValueSet-IMMZ.Z.DE29.md)
* [IMMZ.Z.DE3 ValueSet for Diphtheria-containing vaccines](ValueSet-IMMZ.Z.DE3.md)
* [IMMZ.Z.DE30 ValueSet for Oral polio vaccines](ValueSet-IMMZ.Z.DE30.md)
* [IMMZ.Z.DE31 ValueSet for Inactivated polio vaccines](ValueSet-IMMZ.Z.DE31.md)
* [IMMZ.Z.DE32 ValueSet for Measles and rubella-containing vaccines](ValueSet-IMMZ.Z.DE32.md)
* [IMMZ.Z.DE33 ValueSet for Tetanus and diphtheria-containing vaccines (DT)](ValueSet-IMMZ.Z.DE33.md)
* [IMMZ.Z.DE34 ValueSet for Tetanus and diphtheria-containing vaccines (Td)](ValueSet-IMMZ.Z.DE34.md)
* [IMMZ.Z.DE4 ValueSet for Hib-containing vaccines](ValueSet-IMMZ.Z.DE4.md)
* [IMMZ.Z.DE5 ValueSet for Hepatitis A-containing vaccines](ValueSet-IMMZ.Z.DE5.md)
* [IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines](ValueSet-IMMZ.Z.DE6.md)
* [IMMZ.Z.DE7 ValueSet for HPV vaccines](ValueSet-IMMZ.Z.DE7.md)
* [IMMZ.Z.DE8 ValueSet for JE vaccines](ValueSet-IMMZ.Z.DE8.md)
* [IMMZ.Z.DE9 ValueSet for Measles-containing vaccines](ValueSet-IMMZ.Z.DE9.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IMMZ.Z",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
  "version" : "1.0.0",
  "name" : "IMMZ_Z",
  "title" : "IMMZ.Z CodeSystem for Data Elements",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-01T12:12:05+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "CodeSystem for IMMZ.Z Data Elements",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 35,
  "concept" : [{
    "code" : "DE0",
    "display" : "Vaccine",
    "definition" : "Any vaccine"
  },
  {
    "code" : "DE1",
    "display" : "BCG vaccines",
    "definition" : "Vaccine terminology codes for bacille Calmette–Guérin (BCG)"
  },
  {
    "code" : "DE2",
    "display" : "Cholera vaccines",
    "definition" : "Vaccine terminology codes for cholera"
  },
  {
    "code" : "DE3",
    "display" : "Diphtheria-containing vaccines",
    "definition" : "Vaccine terminology codes for diphtheria"
  },
  {
    "code" : "DE4",
    "display" : "Hib-containing vaccines",
    "definition" : "Vaccine terminology codes for Haemophilus influenzae type b (Hib)"
  },
  {
    "code" : "DE5",
    "display" : "Hepatitis A-containing vaccines",
    "definition" : "Vaccine terminology codes for hepatitis A"
  },
  {
    "code" : "DE6",
    "display" : "Hepatitis B-containing vaccines",
    "definition" : "Vaccine terminology codes for hepatitis B"
  },
  {
    "code" : "DE7",
    "display" : "HPV vaccines",
    "definition" : "Vaccine terminology codes for human papillomavirus (HPV)"
  },
  {
    "code" : "DE8",
    "display" : "JE vaccines",
    "definition" : "Vaccine terminology codes for Japanese encephalitis (JE)"
  },
  {
    "code" : "DE9",
    "display" : "Measles-containing vaccines",
    "definition" : "Vaccine terminology codes for measles-containing vaccines (MCV)"
  },
  {
    "code" : "DE10",
    "display" : "Meningococcal vaccines",
    "definition" : "Vaccine terminology codes for meningococcal"
  },
  {
    "code" : "DE11",
    "display" : "Mumps-containing vaccines",
    "definition" : "Vaccine terminology codes for mumps"
  },
  {
    "code" : "DE12",
    "display" : "Pertussis-containing vaccines",
    "definition" : "Vaccine terminology codes for pertussis"
  },
  {
    "code" : "DE13",
    "display" : "Pneumococcal vaccines",
    "definition" : "Vaccine terminology codes for pneumococcal"
  },
  {
    "code" : "DE14",
    "display" : "Poliovirus-containing vaccines",
    "definition" : "Vaccine terminology codes for poliovirus"
  },
  {
    "code" : "DE30",
    "display" : "Oral polio vaccines",
    "definition" : "Vaccine terminology codes for oral polio vaccines (OPV)"
  },
  {
    "code" : "DE31",
    "display" : "Inactivated polio vaccines",
    "definition" : "Vaccine terminology codes for inactivated polio vaccines (IPV)"
  },
  {
    "code" : "DE15",
    "display" : "Rabies vaccines",
    "definition" : "Vaccine terminology codes for rabies"
  },
  {
    "code" : "DE16",
    "display" : "Rotavirus vaccines",
    "definition" : "Vaccine terminology codes for rotavirus"
  },
  {
    "code" : "DE17",
    "display" : "Rubella-containing vaccines",
    "definition" : "Vaccine terminology codes for rubella"
  },
  {
    "code" : "DE32",
    "display" : "Measles and rubella-containing vaccines",
    "definition" : "Vaccine terminology codes for measles and rubella"
  },
  {
    "code" : "DE18",
    "display" : "Seasonal influenza vaccines",
    "definition" : "Vaccine terminology codes for seasonal influenza"
  },
  {
    "code" : "DE19",
    "display" : "Tetanus-containing vaccines",
    "definition" : "Vaccine terminology codes for tetanus"
  },
  {
    "code" : "DE20",
    "display" : "TBE vaccines",
    "definition" : "Vaccine terminology codes for tick-borne encephalitis (TBE)"
  },
  {
    "code" : "DE21",
    "display" : "Typhoid vaccines",
    "definition" : "Vaccine terminology codes for typhoid"
  },
  {
    "code" : "DE22",
    "display" : "Varicella-containing vaccines",
    "definition" : "Vaccine terminology codes for varicella"
  },
  {
    "code" : "DE23",
    "display" : "Yellow fever vaccines",
    "definition" : "Vaccine terminology codes for yellow fever"
  },
  {
    "code" : "DE24",
    "display" : "DTP-containing vaccines",
    "definition" : "Vaccine terminology codes for diphtheria–tetanus–pertussis (DTP)"
  },
  {
    "code" : "DE28",
    "display" : "Tetanus and diphtheria-containing vaccines",
    "definition" : "Vaccine terminology codes for tetanus and diphtheria"
  },
  {
    "code" : "DE33",
    "display" : "Tetanus and diphtheria-containing vaccines (DT)",
    "definition" : "Vaccine terminology codes for vaccines containing tetanus and diphtheria intended for children"
  },
  {
    "code" : "DE34",
    "display" : "Tetanus and diphtheria-containing vaccines (Td)",
    "definition" : "Vaccine terminology codes for booster vaccines containing tetanus and diphtheria intended for older children and adults"
  },
  {
    "code" : "DE25",
    "display" : "Dengue vaccines",
    "definition" : "Vaccine terminology codes for dengue"
  },
  {
    "code" : "DE26",
    "display" : "COVID-19 vaccines",
    "definition" : "Vaccine terminology codes for coronavirus disease (COVID-19)"
  },
  {
    "code" : "DE27",
    "display" : "Malaria vaccines",
    "definition" : "Vaccine terminology codes for malaria"
  },
  {
    "code" : "DE29",
    "display" : "Pentavalent vaccines",
    "definition" : "Vaccine terminology codes for pentavalent vaccine (a combination vaccine that provides protection from diphtheria, pertussis, tetanus, hepatitis B and Hib)"
  }]
}

```
