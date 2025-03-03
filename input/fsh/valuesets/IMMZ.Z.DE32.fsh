ValueSet: IMMZ.Z.DE32
Title: "IMMZ.Z.DE32 ValueSet for Measles and rubella-containing vaccines"
Description: "ValueSet for Measles and rubella-containing vaccines for IMMZ.Z.DE32"

* ^status = #active
* ^name = "IMMZ_Z_DE32"

* insert AddWithExpandCanonical( IMMZ.Z, #DE32, [[Measles and rubella-containing vaccines]] )
* ^expansion.contains[+].system = Canonical(IMMZ.Z)
* ^expansion.contains[=].code = #DE32
* ^expansion.contains[=].display = "Measles and rubella-containing vaccines"
* insert AddWithExpand( $ICD11, #XM21H2, [[Measles, combinations with rubella, live attenuated]] )
* ^expansion.contains[+].system = $ICD11
* ^expansion.contains[=].code = #XM21H2
* ^expansion.contains[=].display = "Measles, combinations with rubella, live attenuated"
* insert AddWithExpand( $ATC, #J07BD53, [[Measles, combinations with rubella, live attenuated]] )
* ^expansion.contains[+].system = $ATC
* ^expansion.contains[=].code = #J07BD53
* ^expansion.contains[=].display = "Measles, combinations with rubella, live attenuated"
* insert AddWithExpand( $ICD11, #XM8TF3, [[Measles, combinations with mumps and rubella, live attenuated]] )
* ^expansion.contains[+].system = $ICD11
* ^expansion.contains[=].code = #XM8TF3
* ^expansion.contains[=].display = "Measles, combinations with mumps and rubella, live attenuated"
* insert AddWithExpand( $LNC, #30940-1, [[Long common name: Measles virus + Mumps virus + Rubella virus dose count in combination vaccine]] )
* ^expansion.contains[+].system = $LNC
* ^expansion.contains[=].code = #30940-1
* ^expansion.contains[=].display = "Long common name: Measles virus + Mumps virus + Rubella virus dose count in combination vaccine"
* insert AddWithExpand( $ATC, #J07BD52, [[Measles, combinations with mumps and rubella, live attenuated]] )
* ^expansion.contains[+].system = $ATC
* ^expansion.contains[=].code = #J07BD52
* ^expansion.contains[=].display = "Measles, combinations with mumps and rubella, live attenuated"
* insert AddWithExpand( $ICD11, #XM4AJ8, [[Measles, combinations with mumps, rubella and varicella, live attenuated]] )
* ^expansion.contains[+].system = $ICD11
* ^expansion.contains[=].code = #XM4AJ8
* ^expansion.contains[=].display = "Measles, combinations with mumps, rubella and varicella, live attenuated"
* insert AddWithExpand( $ATC, #J07BD54, [[Measles, combinations with mumps, rubella and varicella, live attenuated]] )
* ^expansion.contains[+].system = $ATC
* ^expansion.contains[=].code = #J07BD54
* ^expansion.contains[=].display = "Measles, combinations with mumps, rubella and varicella, live attenuated"
