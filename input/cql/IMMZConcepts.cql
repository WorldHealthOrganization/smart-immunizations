library IMMZConcepts

codesystem "IMMZC": 'http://smart.who.int/immunizations/CodeSystem/IMMZ.C'
codesystem "IMMZD": 'http://smart.who.int/immunizations/CodeSystem/IMMZ.D'
codesystem "IMMZZ": 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z'

//WHO ATC IPS Valueset
valueset "WHO ATC": 'http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips'

// General use ValueSets 


// Vaccine Value Sets

valueset "Live Attenuated": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.LiveAttenuated'
valueset "MCV Vaccine": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE9'

valueset "BCG Vaccine": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE1'
valueset "Cholera Vaccine": 'http://smart.who.int/immunizations/ValueSet/IMMZ.Z.DE2'

code "Completed the primary vaccination series": 'DE203' from "IMMZD" display 'Completed the primary vaccination series'

code "Potential contraindications": 'DE161' from "IMMZD" display 'Potential contraindications'
code "Currently pregnant": 'DE162' from "IMMZD" display 'Currently pregnant'
code "History of anaphylactic reactions": 'DE166' from "IMMZD" display 'History of anaphylactic reactions'
code "Severe allergic reactions": 'DE167' from "IMMZD" display 'Severe allergic reactions'
code "Severely immunocompromised": 'DE200' from "IMMZD" display 'Severely immunocompromised'
code "Severely immunosuppressed": 'DE165' from "IMMZD" display 'Severely immunosuppressed'
code "Symptomatic HIV infection": 'DE168' from "IMMZD" display 'Symptomatic HIV infection'