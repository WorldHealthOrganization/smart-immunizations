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

// Vaccine ValueSets
valueset "BCG Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/bcgvaccine-values'
valueset "DTP Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/dtpvaccine-values'
valueset "MCV Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/mcvvaccine-values'
valueset "Cholera Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/cholera-values'

// General use ValueSets 
valueset "Negative Result": 'http://example.org/ValueSets/negative-results'
valueset "Positive Result": 'http://example.org/ValueSets/positive-results'
valueset "HIV Status Positive": 'http://example.org/ValueSets/HIV-status-positive'
valueset "CD4% Test Result": 'http://example.org/ValueSets/CD4-test-result'

// Vaccine specific ValueSets
valueset "TST Test Result": 'http://example.org/ValueSets/tst-test'
valueset "IGRA Test Result": 'http://example.org/ValueSets/igra-tst'
//TODO: replace the TST/IGRA test link with a real valueset 
