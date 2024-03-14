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

codesystem "IMMZ.C": 'http://smart.who.int/ig/smart-immunizations/CodeSystem/IMMZ.C'
codesystem "IMMZ.D1": 'http://smart.who.int/ig/smart-immunizations/CodeSystem/IMMZ.D1'
codesystem "IMMZ.D": 'http://smart.who.int/ig/smart-immunizations/CodeSystem/IMMZ.D'

//WHO ATC IPS Valueset
valueset "WHO ATC": 'http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips'

// General use ValueSets 
valueset "Negative Result": 'http://smart.who.int/ig/smart-immunizations/ValueSet/Negativetestresult-values'
valueset "Positive Result": 'http://smart.who.int/ig/smart-immunizations/ValueSet/PositiveTestResult-values'
valueset "Immunocompromised": 'http://smart.who.int/ig/smart-immunizations/ValueSet/Immunocompromised-values'
//valueset "Patient birth weight observation value": 'http://smart.who.int/ig/smart-immunizations/ValueSet/Birthweight-values'
//valueset "PretermBirth": 'http://smart.who.int/ig/smart-immunizations/ValueSet/Preterm-values'
valueset "Live Attenuated": 'http://smart.who.int/ig/smart-immunizations/ValueSet/LiveAttenuatedVaccines'

//valueset "Target Disease": 'http://hl7.org/fhir/ValueSet/immunization-target-disease'

valueset "HIV status": 'http://smart.who.int/ig/smart-immunizations/ValueSet/HIVstatus-values'
valueset "HIV status - HIV positive Choices": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de46'
valueset "HIV status - HIV negative Choices": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de47'

valueset "ARV Drugs": 'http://smart.who.int/ig/smart-immunizations/ValueSet/ARVDrugs-values'

// Vaccine Value Sets 

valueset "MCV Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE9'
valueset "Yellow Fever Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE23'
valueset "Polio Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE14'
valueset "Polio Vaccine - bOPV": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE30'
valueset "Polio Vaccine - IPV": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE31'
valueset "Hepatitis B Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE6'
valueset "DTP Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE24'
valueset "Tetanus and Diphtheria Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE28'
valueset "Pertussis Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE12'
valueset "Rubella Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE17'
valueset "Measles and Rubella Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE32'
valueset "All Rubella Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.Z.DE17.All'


/*
// Plugin is complaining about not finding these so that should be resolved, but here until it can be fixed
valueset "BCG Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.A1.DE1'
valueset "Cholera Vaccine": 'http://smart.who.int/ig/smart-immunizations/ValueSet/IMMZ.A1.DE2'
*/


code "Birth Weight in Grams": 'DE29' from "IMMZ.D1" display 'Birth Weight in Grams'
code "Preterm Birth": 'DE15' from "IMMZ.D1" display 'Preterm Birth'

code "Adverse Event Severity": '246112005' from "SNOMED-CT" display 'Severity (attribute)'
code "Adverse Event Manifestation": '246112005' from "SNOMED-CT" display 'Severity (attribute)'

code "Currently Pregnant": 'DE162' from "IMMZ.D" display 'Currently Pregnant'
code "Planning to get pregnant in the next month": 'DE169' from "IMMZ.D" display 'Planning to get pregnant in the next month'
code "Receiving blood products": 'DE170' from "IMMZ.D" display 'Receiving blood products'
code "Severely immunosuppressed": 'DE165' from "IMMZ.D" display 'Severely immunosuppressed'
code "Exposed to immunosuppressive treatment": 'DE164' from "IMMZ.D" display 'Exposed to immunosuppressive treatment'
code "History of anaphylactic reactions": 'DE166' from "IMMZ.D" display 'History of anaphylactic reactions'
code "Severe allergic reactions": 'DE167' from "IMMZ.D" display 'Severe allergic reactions'
code "Symptomatic HIV infection": 'DE168' from "IMMZ.D" display 'Symptomatic HIV infection'
code "TB disease": 'DE190' from "IMMZ.D" display 'TB disease'
code "Immunodeficiency syndromes": 'DE187' from "IMMZ.D" display 'Immunodeficiency syndromes'
code "Severely immunocompromised": 'DE200' from "IMMZ.D" display 'Severely immunocompromised'
code "Breastfeeding": 'DE191' from "IMMZ.D" display 'Breastfeeding'
code "Severe acute illness": 'DE188' from "IMMZ.D" display 'Severe acute illness'
