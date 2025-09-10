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
valueset "CD4% Test Result": 'http://fhir.org/guides/who/smart-immunization/ValueSet/CD4percentageTest-values'
valueset "CD4 Count Test Result": 'http://fhir.org/guides/who/smart-immunization/ValueSet/CD4CountTestResult-values'
valueset "Immunocompromised": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Immunocompromised-values'
valueset "Patient birth weight observation value": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Birthweight-values'
valueset "Seronegative": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Seronegative-values'
valueset "PretermBirth": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Preterm-values'

// TODO : Adapt from ANC
valueset "HIV status": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de45'
valueset "HIV status - HIV positive Choices": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de46'
valueset "HIV status - HIV negative Choices": 'http://fhir.org/guides/who/anc-cds/ValueSet/anc-b9-de47'

// Vaccine specific ValueSets
//BCG specific ValuSets
valueset "TST Test Result": 'http://fhir.org/guides/who/smart-immunization/ValueSet/TSTTestResult-values'
valueset "IGRA Test Result": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IGRATestResult-values'
valueset "ARV Drugs": 'http://fhir.org/guides/who/smart-immunization/ValueSet/ARVDrugs-values'
valueset "VNA levels": 'http://fhir.org/guides/who/smart-immunization/ValueSet/VNAlevelsRAbies-values'

// JE Classification 
valueset "Inactivated Vero cell-derived Japanese Encephalitis vaccines": 'http://fhir.org/guides/who/smart-immunization/ValueSet/InactivatedJE-values'

//valueset "Target Disease": 'http://hl7.org/fhir/ValueSet/immunization-target-disease'

// Vaccine Value Sets
valueset "BCG Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE1'
valueset "Cholera Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE2'
valueset "Diphtheria Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE3'
valueset "Hib Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE4'
valueset "HepA Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE5'
valueset "HepB Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE6'
valueset "HPV Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE7'
valueset "Japanese Encephalitis Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE8'
valueset "MCV Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE9'
valueset "Meningococcal Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE10'
valueset "Mumps Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE11'
valueset "Pertussis Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE12'
valueset "Pneumococcal Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE13'
valueset "Polio Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE14'
valueset "Rabies Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE15'
valueset "Rotavirus Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE16'
valueset "Rubella Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE17'
valueset "Seasonal Influenza Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE18'
valueset "Tetanus Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE19'
valueset "Typhoid Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE21'
valueset "TBE Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE20'
valueset "Varicella Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE22'
valueset "Yellow Fever Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE23'
valueset "DTP Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE24'
valueset "Inactivated Polio Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE25'
valueset "Oral Polio Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE26'
valueset "Dengue Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE27'
valueset "Inactivated HAV": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE28'


code "Adverse Event Severity": '246112005' from "SNOMED-CT" display 'Severity (attribute)'
code "Adverse Event Manifestation": '246112005' from "SNOMED-CT" display 'Severity (attribute)'
code "Sickle-cell Disease Condition": '127040003' from "SNOMED-CT" display 'Sickle cell-hemoglobin SS disease (disorder)'

// Cholera vaccine classes
valueset "WC Class Cholera Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/WCClassCholeraVaccine-values'
valueset "WC-rBS Class Cholera Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/WC-rBSClassCholeraVaccine-values'
valueset "ViPS Class Typhoid Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/ViPSClassTyphoidVaccine-values'
valueset "Ty21a Class Typhoid Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Ty21aClassTyphoidVaccine-values'
//  MenA vaccine classes
valueset "MenA conjugate vaccine (5µg)": 'http://fhir.org/guides/who/smart-immunization/ValueSet/MenAconjugatevaccine-values'
valueset "monovalent MenC conjugate": 'http://fhir.org/guides/who/smart-immunization/ValueSet/monovalentMenCconjugate-values'
valueset "Quadrivalent conjugate": 'http://fhir.org/guides/who/smart-immunization/ValueSet/Quadrivalentconjugate-values'
// TBE classifications of vaccines
// Assumption: Classifications of TBE vaccine can be codified using some (yet to be discovered) code system - possibly using GTIN on the product?
valueset "FSME-Immun Class TBE Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/FSME-ImmunClassTBEVaccine-values'
valueset "TBE-Moscow Class TBE Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/TBE-MoscowClassTBEVaccine-values'
valueset "EnceVir Class TBE Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/EnceVirClassTBEVaccine-values'
valueset "Encepur Class TBE Vaccine": 'http://fhir.org/guides/who/smart-immunization/ValueSet/EncepurClassTBEVaccine-values'

valueset "Intussusception": 'http://fhir.org/guides/who/smart-immunization/ValueSet/intussusception-values'