ValueSet: IMMZ.Z.DE29
Title: "IMMZ.Z.DE29 ValueSet for Pentavalent vaccines"
Description: "ValueSet for Pentavalent vaccines for IMMZ.Z.DE29"

* ^status = #active
* ^name = "IMMZ_Z_DE29"

* IMMZ.Z#DE29 "Pentavalent vaccines"
* ^expansion.contains[+].system = Canonical(IMMZ.Z)
* ^expansion.contains[=].code = #DE29
* ^expansion.contains[=].display = "Pentavalent vaccines"
* $ICD11#XM7JP3 "Diphtheria, hemophilus influenzae B, pertussis, tetanus, hepatitis B vaccines"
* ^expansion.contains[+].system = $ICD11
* ^expansion.contains[=].code = #XM7JP3
* ^expansion.contains[=].display = "Diphtheria, hemophilus influenzae B, pertussis, tetanus, hepatitis B vaccines"
* $ATC#J07CA11 "diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B"
* ^expansion.contains[+].system = $ATC
* ^expansion.contains[=].code = #J07CA11
* ^expansion.contains[=].display = "diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B"
