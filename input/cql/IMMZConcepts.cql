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