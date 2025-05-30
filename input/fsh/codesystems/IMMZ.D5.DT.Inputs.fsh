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
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Rabies contraindications"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tcicp "The client is currently pregnant" "\"Potential contraindications\" = \"Currently pregnant\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Hepatitis A contraindications"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tcisi "The client is severely immunocompromised" "\"Potential contraindications\" = \"Severely immunocompromised\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Hepatitis A contraindications"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchahosar "The client has a history of severe allergic reactions" "'\"Potential contraindications\" = \"Severe allergic reactions\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Hepatitis A contraindications"
* #tcii "The client is immunocompromised" "\"Potential contraindications\" = \"Immunocompromised\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tcicl "The client is currently lactating" "'\"Potential contraindications\" = \"Breastfeeding\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchhoar "The client has history of anaphylactic reactions" "\"Potential contraindications\" =\"History of anaphylactic reactions\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchis "The client has immunodeficiency syndromes" "\"Potential contraindications\" = \"Immunodeficiency syndromes\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tcisi "The client is severely immunosuppressed" "\"Potential contraindications\" = \"Severely immunosuppressed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchshi "The client has symptomatic HIV infection" "\"Potential contraindications\" = \"Symptomatic HIV infection\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"

