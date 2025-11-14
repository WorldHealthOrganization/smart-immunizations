# IMMZ.C4.Create client record - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.C4.Create client record**

## Logical Model: IMMZ.C4.Create client record 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZC4 | *Version*:0.2.0 |
| Active as of 2024-12-18 | *Computable Name*:IMMZ_C4_Create_client_record |

 
Data elements for the IMMZ.C4.Create client record Data Dictionary Activity. Identical to IMMZ.C5.3.Update client details. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZC4)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZC4.csv), [Excel](StructureDefinition-IMMZC4.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZC4",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
      "valueCode" : "shareable"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/version-algorithm",
        "code" : "semver"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
            "code" : "metadata"
          }
        ]
      }
    }
  ],
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4",
  "version" : "0.2.0",
  "name" : "IMMZ_C4_Create_client_record",
  "title" : "IMMZ.C4.Create client record",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-18",
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
  "description" : "Data elements for the IMMZ.C4.Create client record Data Dictionary Activity.  Identical to IMMZ.C5.3.Update client details.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "IMMZC4.to.Patient",
      "uri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZPatient",
      "name" : "Mapping from the IMMZ.C4 to the IMMZPatient profile"
    },
    {
      "identity" : "IMMZC4.to.RelatedPerson",
      "uri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZCaregiver",
      "name" : "Mapping from the IMMZ.C4 to the IMMZCaregiver (RelatedPerson) profile"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZC4",
        "path" : "IMMZC4",
        "short" : "IMMZ.C4.Create client record",
        "definition" : "Data elements for the IMMZ.C4.Create client record Data Dictionary Activity.  Identical to IMMZ.C5.3.Update client details.",
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient"
          }
        ]
      },
      {
        "id" : "IMMZC4.uniqueIdentifier",
        "path" : "IMMZC4.uniqueIdentifier",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
            "code" : "DE1"
          }
        ],
        "short" : "Unique identifier",
        "definition" : "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national identification [ID], health ID, immunization information system ID, medical record ID)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient.identifier.value"
          }
        ]
      },
      {
        "id" : "IMMZC4.name",
        "path" : "IMMZC4.name",
        "code" : [
          {
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
          }
        ],
        "short" : "Name",
        "definition" : "The full name of the client",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-C-name-1",
            "severity" : "error",
            "human" : "Only letters and special characters (period, dash) allowed.",
            "expression" : "$this.matches('[A-Za-z-.]*')",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient.name.text"
          }
        ]
      },
      {
        "id" : "IMMZC4.firstName",
        "path" : "IMMZC4.firstName",
        "code" : [
          {
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
          }
        ],
        "short" : "First name",
        "definition" : "Client's first name or given name",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-C-name-1",
            "severity" : "error",
            "human" : "Only letters and special characters (period, dash) allowed.",
            "expression" : "$this.matches('[A-Za-z-.]*')",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient.name.given"
          }
        ]
      },
      {
        "id" : "IMMZC4.familyName",
        "path" : "IMMZC4.familyName",
        "code" : [
          {
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
          }
        ],
        "short" : "Family name",
        "definition" : "Client's family name or last name",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-C-name-1",
            "severity" : "error",
            "human" : "Only letters and special characters (period, dash) allowed.",
            "expression" : "$this.matches('[A-Za-z-.]*')",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient.name.family"
          }
        ]
      },
      {
        "id" : "IMMZC4.sex",
        "path" : "IMMZC4.sex",
        "code" : [
          {
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
          }
        ],
        "short" : "Sex",
        "definition" : "Documentation of a specific instance of sex information for the client",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.C.DE5"
        },
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient.gender"
          }
        ]
      },
      {
        "id" : "IMMZC4.dateOfBirth",
        "path" : "IMMZC4.dateOfBirth",
        "code" : [
          {
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
          }
        ],
        "short" : "Date of birth",
        "definition" : "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient.birthDate"
          }
        ]
      },
      {
        "id" : "IMMZC4.age",
        "path" : "IMMZC4.age",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
            "code" : "DE13"
          },
          {
            "system" : "http://loinc.org",
            "code" : "63900-5",
            "display" : "Current age or age at death"
          }
        ],
        "short" : "Age",
        "definition" : "The client's calculated age (presented as number of years, months, weeks, days) based on the DOB and the visit date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-C-age-1",
            "severity" : "error",
            "human" : "Required if date of birth is entered.",
            "expression" : "not(%resource.dateOfBirth.exists()) or $this.exists()",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4"
          }
        ]
      },
      {
        "id" : "IMMZC4.caregiversMultiple",
        "path" : "IMMZC4.caregiversMultiple",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
            "code" : "DE14"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "184140000",
            "display" : "Caregiver details (observable entity)"
          }
        ],
        "short" : "Caregivers (multiple)",
        "definition" : "Details of the client's caregiver (person) who could be next of kin (e.g. partner, husband, mother, sibling, etc.)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.RelatedPerson",
            "map" : "RelatedPerson"
          }
        ]
      },
      {
        "id" : "IMMZC4.caregiversMultiple.caregiversFullName",
        "path" : "IMMZC4.caregiversMultiple.caregiversFullName",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
            "code" : "DE15"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "184140000",
            "display" : "Caregiver details (observable entity)"
          }
        ],
        "short" : "Caregiver's full name",
        "definition" : "The full name of the client's caregiver",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-C-name-1",
            "severity" : "error",
            "human" : "Only letters and special characters (period, dash) allowed.",
            "expression" : "$this.matches('[A-Za-z-.]*')",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.RelatedPerson",
            "map" : "RelatedPerson.name.text"
          }
        ]
      },
      {
        "id" : "IMMZC4.caregiversMultiple.caregiversFirstName",
        "path" : "IMMZC4.caregiversMultiple.caregiversFirstName",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
            "code" : "DE16"
          },
          {
            "system" : "http://loinc.org",
            "code" : "45392-8",
            "display" : "First name"
          }
        ],
        "short" : "Caregiver's first name",
        "definition" : "First or given name of the client's caregiver",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-C-name-1",
            "severity" : "error",
            "human" : "Only letters and special characters (period, dash) allowed.",
            "expression" : "$this.matches('[A-Za-z-.]*')",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.RelatedPerson",
            "map" : "RelatedPerson.name.given"
          }
        ]
      },
      {
        "id" : "IMMZC4.caregiversMultiple.caregiversFamilyName",
        "path" : "IMMZC4.caregiversMultiple.caregiversFamilyName",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.C",
            "code" : "DE17"
          },
          {
            "system" : "http://loinc.org",
            "code" : "45394-4",
            "display" : "Last name"
          }
        ],
        "short" : "Caregiver's family name",
        "definition" : "Family name or last name of the client's caregiver",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "constraint" : [
          {
            "key" : "IMMZ-C-name-1",
            "severity" : "error",
            "human" : "Only letters and special characters (period, dash) allowed.",
            "expression" : "$this.matches('[A-Za-z-.]*')",
            "source" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.RelatedPerson",
            "map" : "RelatedPerson.name.family"
          }
        ]
      },
      {
        "id" : "IMMZC4.contactPhoneNumber",
        "path" : "IMMZC4.contactPhoneNumber",
        "code" : [
          {
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
          }
        ],
        "short" : "Contact phone number",
        "definition" : "Client's phone number; can be a landline or a mobile phone number",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient.telecom.value"
          }
        ]
      },
      {
        "id" : "IMMZC4.address",
        "path" : "IMMZC4.address",
        "code" : [
          {
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
          }
        ],
        "short" : "Address",
        "definition" : "Client's home address or address that the client is consenting to disclose",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZC4.to.Patient",
            "map" : "Patient.address.text"
          }
        ]
      }
    ]
  }
}

```
