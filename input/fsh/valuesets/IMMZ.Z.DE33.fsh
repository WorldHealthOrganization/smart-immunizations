ValueSet: IMMZ.Z.DE33
Title: "IMMZ.Z.DE33 ValueSet for Tetanus and diphtheria-containing vaccines (DT)"
Description: "ValueSet for Tetanus and diphtheria-containing vaccines (DT) for IMMZ.Z.DE33"

* ^status = #active
* ^name = "IMMZ_Z_DE33"

* insert AddWithExpandCanonical( IMMZ.Z, #DE33, [[Tetanus and diphtheria-containing vaccines (DT)]] )
* ^expansion.contains[+].system = Canonical(IMMZ.Z)
* ^expansion.contains[=].code = #DE33
* ^expansion.contains[=].display = "Tetanus and diphtheria-containing vaccines (DT)"
* insert AddWithExpand( $ICD11, #XM4039, [[Vaccines diphtheria with tetanus]] )
* ^expansion.contains[+].system = $ICD11
* ^expansion.contains[=].code = #XM4039
* ^expansion.contains[=].display = "Vaccines diphtheria with tetanus"
