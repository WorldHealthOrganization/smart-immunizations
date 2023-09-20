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

//WHO ATC IPS Valueset
valueset "WHO ATC": 'http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips'

// General use ValueSets 
valueset "Negative Result": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Negativetestresult-values'
valueset "Positive Result": 'http://fhir.org/guides/who/smart-immunization/ValueSet/PositiveTestResult-values'
valueset "Immunocompromised": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Immunocompromised-values'
valueset "Patient birth weight observation value": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Birthweight-values'
valueset "PretermBirth": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Preterm-values'
valueset "Live Attenuated": 'http://fhir.org/guides/who/smart-immunization/ValueSet/LiveAttenduatedVaccines'

//valueset "Target Disease": 'http://hl7.org/fhir/ValueSet/immunization-target-disease'

valueset "HIV status": 'http://fhir.org/guides/who/smart-immunization/ValueSet/HIVstatus-values'
valueset "HIV status - HIV positive Choices": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de46'
valueset "HIV status - HIV negative Choices": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de47'

valueset "ARV Drugs": 'http://fhir.org/guides/who/smart-immunization/ValueSet/ARVDrugs-values'

// Vaccine Value Sets

valueset "MCV Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE9'

// Plugin is complaining about not finding these so that should be resolved, but here until it can be fixed
valueset "BCG Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE1'
valueset "Cholera Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE2'



code "Adverse Event Severity": '246112005' from "SNOMED-CT" display 'Severity (attribute)'
code "Adverse Event Manifestation": '246112005' from "SNOMED-CT" display 'Severity (attribute)'

