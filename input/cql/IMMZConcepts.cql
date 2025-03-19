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

code "Potential contraindications": 'DE161' from "IMMZD" display 'Potential contraindications'
code "Currently pregnant": 'DE162' from "IMMZD" display 'Currently pregnant'
code "History of anaphylactic reactions": 'DE166' from "IMMZD" display 'History of anaphylactic reactions'
code "Severe allergic reactions": 'DE167' from "IMMZD" display 'Severe allergic reactions'
code "Severely immunocompromised": 'DE200' from "IMMZD" display 'Severely immunocompromised'
code "Severely immunosuppressed": 'DE165' from "IMMZD" display 'Severely immunosuppressed'
code "Symptomatic HIV infection": 'DE168' from "IMMZD" display 'Symptomatic HIV infection'
code "Immunodeficiency syndromes": 'DE187' from "IMMZD" display 'Immunodeficiency syndromes'
code "Exposed to immunosuppressive treatment": 'DE164' from "IMMZD" display 'Exposed to immunosuppressive treatment'