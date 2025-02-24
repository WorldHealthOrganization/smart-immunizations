ValueSet: IMMZ.Z.DE1
Title: "IMMZ.Z.DE1 ValueSet for BCG vaccines"
Description: "ValueSet for BCG vaccines for IMMZ.Z.DE1"

* ^status = #active
* ^name = "IMMZ_Z_DE1"

* IMMZ.Z#DE1 "BCG vaccines"
* ^expansion.contains[+].system = Canonical(IMMZ.Z)
* ^expansion.contains[=].code = #DE1
* ^expansion.contains[=].display = "BCG vaccines"
* $ICD11#XM4639 "Tuberculosis vaccines"
* ^expansion.contains[+].system = $ICD11
* ^expansion.contains[=].code = #XM4639
* ^expansion.contains[=].display = "Tuberculosis vaccines"
* $SCT#418268006 "Bacillus Calmette-Guerin antigen-containing product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418268006
* ^expansion.contains[=].display = "Bacillus Calmette-Guerin antigen-containing product"
* $ATC#L03AX03 "BCG vaccine"
* ^expansion.contains[+].system = $ATC
* ^expansion.contains[=].code = #L03AX03
* ^expansion.contains[=].display = "BCG vaccine"
* $ICD11#XM8142 "Tuberculosis, live attenuated vaccines"
* ^expansion.contains[+].system = $ICD11
* ^expansion.contains[=].code = #XM8142
* ^expansion.contains[=].display = "Tuberculosis, live attenuated vaccines"
* $SCT#774702006 "Bacillus Calmette-Guerin antigen only product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #774702006
* ^expansion.contains[=].display = "Bacillus Calmette-Guerin antigen only product"
