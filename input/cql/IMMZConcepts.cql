library IMMZConcepts

codesystem "IMMZC": 'http://smart.who.int/immunizations/CodeSystem/IMMZ.C'
codesystem "IMMZD": 'http://smart.who.int/immunizations/CodeSystem/IMMZ.D'
codesystem "IMMZZ": 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z'

//WHO ATC IPS Valueset
valueset "WHO ATC": 'http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips'

// General use ValueSets 


// Vaccine Value Sets

valueset "Live Attenuated": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.LiveAttenuated'

valueset "Measles-containing vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE9'
valueset "BCG vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1'
valueset "Cholera vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2'
valueset "Hepatitis B-containing vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE6'
valueset "Poliovirus-containing vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE14'
valueset "Oral polio vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE30'
valueset "Inactivated polio vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE31'
valueset "DTP-containing vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE24'
valueset "Tetanus and diphtheria-containing vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE28'
valueset "Pertussis-containing vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE12'
valueset "Tetanus-containing vaccines": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE19'

code "IPV": 'DE213' from "IMMZD" display 'IPV'
code "bOPV": 'DE214' from "IMMZD" display 'bOPV'

code "Completed the primary vaccination series": 'DE203' from "IMMZD" display 'Completed the primary vaccination series'
code "HIV status": 'DE204' from "IMMZD" display 'HIV status'
code "HIV-positive": 'DE205' from "IMMZD" display 'HIV-positive'
code "HIV-negative": 'DE206' from "IMMZD" display 'HIV-negative'
code "HIV-Unknown": 'DE207' from "IMMZD" display 'Unknown'
code "Currently on ART": 'DE210' from "IMMZD" display 'Currently on ART'
code "Immunologically stable": 'DE249' from "IMMZD" display 'Immunologically stable'
code "TB infection test result": 'DE246' from "IMMZD" display 'TB infection test result'
code "TB-Positive": 'DE247' from "IMMZD" display 'Positive'
code "TB-Negative": 'DE248' from "IMMZD" display 'Negative'
code "Clinically well": 'DE250' from "IMMZD" display 'Clinically well'
code "Birth weight in grams": 'DE211' from "IMMZD" display 'Birth weight in grams'
code "Preterm birth": 'DE208' from "IMMZD" display 'Preterm birth'

code "Potential contraindications": 'DE161' from "IMMZD" display 'Potential contraindications'
code "Currently pregnant": 'DE162' from "IMMZD" display 'Currently pregnant'
code "History of anaphylactic reactions": 'DE166' from "IMMZD" display 'History of anaphylactic reactions'
code "Severe allergic reactions": 'DE167' from "IMMZD" display 'Severe allergic reactions'
code "Severely immunocompromised": 'DE200' from "IMMZD" display 'Severely immunocompromised'
code "Severely immunosuppressed": 'DE165' from "IMMZD" display 'Severely immunosuppressed'
code "Symptomatic HIV infection": 'DE168' from "IMMZD" display 'Symptomatic HIV infection'
code "Immunodeficiency syndromes": 'DE187' from "IMMZD" display 'Immunodeficiency syndromes'
code "Exposed to immunosuppressive treatment": 'DE164' from "IMMZD" display 'Exposed to immunosuppressive treatment'
code "Severe acute illness": 'DE188' from "IMMZD" display 'Severe acute illness'