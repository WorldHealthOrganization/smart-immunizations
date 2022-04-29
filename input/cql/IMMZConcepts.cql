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
valueset "Negative Result": 'http://fhir.org/guides/who/smart-immunization/ValueSet/negativetestresult-values'
valueset "Positive Result": 'http://fhir.org/guides/who/smart-immunization/ValueSet/PositiveTestResult-values'
valueset "HIV Status Positive": 'http://example.org/ValueSets/HIV-status-positive'
valueset "CD4% Test Result": 'http://example.org/ValueSets/CD4-test-result'
valueset "CD4 Count Test Result": 'http://example.org/ValueSets/CD4-count-test-result'
valueset "Immunocompromised": 'http://example.org/ValueSets/Immunocompromised'
valueset "Patient birth weight observation value": 'http://example.org/ValueSets/Patient-birth-weight-observation-value'


// TODO : Adapt from ANC
valueset "HIV status": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de45'
valueset "HIV status - HIV positive Choices": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de46'
valueset "HIV status - HIV negative Choices": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de47'

// Vaccine specific ValueSets
//BCG specific ValuSets
valueset "TST Test Result": 'http://example.org/ValueSets/tst-test'
valueset "IGRA Test Result": 'http://example.org/ValueSets/igra-tst'
valueset "ARV Drugs": 'http://exmaple.org/ValueSets/arv-drugs'
valueset "VNA levels": 'http://example.org/ValueSet/vna-levels'

// JE Classification 
valueset "Inactivated Vero cell-derived Japanese Encephalitis vaccines": 'http://example.org/ValueSet/inactivated-vero-cell-derived-je-vaccines'

//TODO: replace the TST/IGRA test link with a real valueset 
// Vaccine Value Sets
valueset "BCG Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE1'
valueset "Cholera Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE2'
valueset "Diphtheria Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE3'
valueset "Hib Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE4'
valueset "HepA Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE5'
valueset "HepB Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE6'
valueset "HPV Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE7'
valueset "Japanese Encephalitis Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE8'
valueset "MCV Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE9'
valueset "Meningococcal Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE10'
valueset "Mumps Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE11'
valueset "Pertussis Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE12'
valueset "Pneumococcal Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE13'
valueset "Polio Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE14'
valueset "Rabies Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE15'
valueset "Rotavirus Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE16'
valueset "Rubella Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE17'
valueset "Seasonal Influenza Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE18'
valueset "Tetanus Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE19'
valueset "Typhoid Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE21'
valueset "TBE Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE20'
valueset "Varicella Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE22'
valueset "Yellow Fever Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE23'
valueset "DTP Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE24'
valueset "Inactivated Polio Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE25'
valueset "Oral Polio Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE26'
valueset "Dengue Vaccine": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE27'
valueset "Inactivated HAV": 'http://fhir.org/guides/who/smart-immunize/ValueSet/IMMZ.A1.DE28'


code "Adverse Event Severity": '246112005' from "SNOMED-CT" display 'Severity (attribute)'
code "Adverse Event Manifestation": '246112005' from "SNOMED-CT" display 'Severity (attribute)'
// Cholera vaccine classes
valueset "WC Class Cholera Vaccine": 'http://example.org/ValueSet/wc-cholera'
valueset "WC-rBS Class Cholera Vaccine": 'http://example.org/ValueSet/wc-rbs-cholera'
valueset "ViPS Class Typhoid Vaccine": 'http://example.org/ValueSet/vips'
valueset "Ty21a Class Typhoid Vaccine": 'http://example.org/ValueSet/ty21a'
//  MenA vaccine classes
valueset "MenA conjugate vaccine (5µg)": 'http://example.org/ValueSet/MenA'
valueset "monovalent MenC conjugate": 'http://example.org/ValueSet/Menc'
valueset "Quadrivalent conjugate": 'http://example.org/ValueSet/Menc'
// TBE classifications of vaccines
// Assumption: Classifications of TBE vaccine can be codified using some (yet to be discovered) code system - possibly using GTIN on the product?
valueset "FSME-Immun Class TBE Vaccine": 'http://example.org/ValueSet/FSME-Immun'
valueset "TBE-Moscow Class TBE Vaccine": 'http://example.org/ValueSet/TBE-Moscow'
valueset "EnceVir Class TBE Vaccine": 'http://example.org/ValueSet/EnceVir'
valueset "Encepur Class TBE Vaccine": 'http://example.org/ValueSet/Encepur'

