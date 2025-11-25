# IMMZ.Z CodeSystem for Data Elements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Z CodeSystem for Data Elements**

## CodeSystem: IMMZ.Z CodeSystem for Data Elements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.Z | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_Z |

 
CodeSystem for IMMZ.Z Data Elements 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMMZ_Z_DE1](ValueSet-IMMZ.Z.DE1.md)
* [IMMZ_Z_DE10](ValueSet-IMMZ.Z.DE10.md)
* [IMMZ_Z_DE11](ValueSet-IMMZ.Z.DE11.md)
* [IMMZ_Z_DE12](ValueSet-IMMZ.Z.DE12.md)
* [IMMZ_Z_DE13](ValueSet-IMMZ.Z.DE13.md)
* [IMMZ_Z_DE14](ValueSet-IMMZ.Z.DE14.md)
* [IMMZ_Z_DE15](ValueSet-IMMZ.Z.DE15.md)
* [IMMZ_Z_DE16](ValueSet-IMMZ.Z.DE16.md)
* [IMMZ_Z_DE17](ValueSet-IMMZ.Z.DE17.md)
* [IMMZ_Z_DE18](ValueSet-IMMZ.Z.DE18.md)
* [IMMZ_Z_DE19](ValueSet-IMMZ.Z.DE19.md)
* [IMMZ_Z_DE2](ValueSet-IMMZ.Z.DE2.md)
* [IMMZ_Z_DE20](ValueSet-IMMZ.Z.DE20.md)
* [IMMZ_Z_DE21](ValueSet-IMMZ.Z.DE21.md)
* [IMMZ_Z_DE22](ValueSet-IMMZ.Z.DE22.md)
* [IMMZ_Z_DE23](ValueSet-IMMZ.Z.DE23.md)
* [IMMZ_Z_DE24](ValueSet-IMMZ.Z.DE24.md)
* [IMMZ_Z_DE25](ValueSet-IMMZ.Z.DE25.md)
* [IMMZ_Z_DE26](ValueSet-IMMZ.Z.DE26.md)
* [IMMZ_Z_DE27](ValueSet-IMMZ.Z.DE27.md)
* [IMMZ_Z_DE28](ValueSet-IMMZ.Z.DE28.md)
* [IMMZ_Z_DE29](ValueSet-IMMZ.Z.DE29.md)
* [IMMZ_Z_DE3](ValueSet-IMMZ.Z.DE3.md)
* [IMMZ_Z_DE30](ValueSet-IMMZ.Z.DE30.md)
* [IMMZ_Z_DE31](ValueSet-IMMZ.Z.DE31.md)
* [IMMZ_Z_DE32](ValueSet-IMMZ.Z.DE32.md)
* [IMMZ_Z_DE33](ValueSet-IMMZ.Z.DE33.md)
* [IMMZ_Z_DE34](ValueSet-IMMZ.Z.DE34.md)
* [IMMZ_Z_DE4](ValueSet-IMMZ.Z.DE4.md)
* [IMMZ_Z_DE5](ValueSet-IMMZ.Z.DE5.md)
* [IMMZ_Z_DE6](ValueSet-IMMZ.Z.DE6.md)
* [IMMZ_Z_DE7](ValueSet-IMMZ.Z.DE7.md)
* [IMMZ_Z_DE8](ValueSet-IMMZ.Z.DE8.md)
* [IMMZ_Z_DE9](ValueSet-IMMZ.Z.DE9.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IMMZ.Z",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
  "version" : "0.2.0",
  "name" : "IMMZ_Z",
  "title" : "IMMZ.Z CodeSystem for Data Elements",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-25T19:41:02+00:00",
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
  "description" : "CodeSystem for IMMZ.Z Data Elements",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 35,
  "concept" : [
    {
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
    }
  ]
}

```
