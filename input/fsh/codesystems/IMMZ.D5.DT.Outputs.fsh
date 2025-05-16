CodeSystem: IMMZ.D5.DT.Outputs
Title:        "IMMZ.D5.DT.Outputs CodeSystem for Decision Table Outputs"
Description:  "CodeSystem for Decision Table Outputs"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D5_DT_Outputs"
* ^status = #active
* ^property[+].code = #table
* ^property[=].description = "Contraindication Table ID"
* ^property[=].type = #string

* #mvcbccjircacn "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" "\"Immunization recommendation status\" (where \"Type of meningococcal dose\" = \"Polysaccharide vaccine\") = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Meningococcal contraindications"
