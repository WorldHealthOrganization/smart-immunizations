library IMMZConcepts

// Code Systems
//Probably can delete these once imported WHOConcepts
codesystem "ICD-10": 'http://hl7.org/fhir/sid/icd-10'
codesystem "SNOMED-CT": 'http://snomed.info/sct'
codesystem "LOINC": 'http://loinc.org'
codesystem "RxNorm": 'http://www.nlm.nih.gov/research/umls/rxnorm'
codesystem "CIEL": 'http://hl7.org/fhir/sid/ciel'
codesystem "ICD-11": 'http://hl7.org/fhir/sid/icd-11'
codesystem "ICHI": 'https://mitel.dimi.uniud.it/ichi/#http://id.who.int/ichi'
codesystem "ICF": 'http://hl7.org/fhir/sid/icf-nl'
codesystem "Extended Codes CodeSystem codes": 'http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes'

// Value Sets
valueset "BCG Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/bcgvaccine-values'
valueset "DTP Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/dtpvaccine-values'
valueset "MCV Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/mcvvaccine-values'
valueset "Cholera Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/cholera-values'