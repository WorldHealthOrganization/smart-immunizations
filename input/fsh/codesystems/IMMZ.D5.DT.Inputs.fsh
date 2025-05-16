CodeSystem: IMMZ.D5.DT.Inputs
Title:        "IMMZ.D5.DT.Inputs CodeSystem for Decision Table Inputs"
Description:  "CodeSystem for Decision Table Inputs"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D5_DT_Inputs"
* ^status = #active
* ^property[+].code = #table
* ^property[=].description = "Contraindication Table ID"
* ^property[=].type = #string

* #tchhosar "The client has history of severe allergic reactions" "\"Potential contraindications\" = \"Severe allergic reactions\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Meningococcal contraindications"
