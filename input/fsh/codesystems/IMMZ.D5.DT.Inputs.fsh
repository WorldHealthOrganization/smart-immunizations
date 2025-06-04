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

* #tchhosar-51.63 "The client has history of severe allergic reactions" "\"Potential contraindications\" = \"Severe allergic reactions\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Meningococcal contraindications"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Rabies contraindications"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tcicp-32.56 "The client is currently pregnant" "\"Potential contraindications\" = \"Currently pregnant\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Hepatitis A contraindications"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tcisi-40.64 "The client is severely immunocompromised" "\"Potential contraindications\" = \"Severely immunocompromised\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Hepatitis A contraindications"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchahosar-53.64 "The client has a history of severe allergic reactions" "'\"Potential contraindications\" = \"Severe allergic reactions\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Hepatitis A contraindications"
* #tcii-31.55 "The client is immunocompromised" "\"Potential contraindications\" = \"Immunocompromised\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tcicl-33.52 "The client is currently lactating" "'\"Potential contraindications\" = \"Breastfeeding\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchhoar-48.70 "The client has history of anaphylactic reactions" "\"Potential contraindications\" =\"History of anaphylactic reactions\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchis-41.64 "The client has immunodeficiency syndromes" "\"Potential contraindications\" = \"Immunodeficiency syndromes\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tcisi-39.63 "The client is severely immunosuppressed" "\"Potential contraindications\" = \"Severely immunosuppressed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchshi-40.63 "The client has symptomatic HIV infection" "\"Potential contraindications\" = \"Symptomatic HIV infection\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #tchhtaotvc-64.72 "The client has hypersensitivity to any of the vaccine components" "\"Potential contraindications\" = \"Hypersensitivity to vaccine components\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Malaria contraindications"
* #tcicp-32.52 "The client is currently pregnant" "\"Potential contraindications\" = \"Currently pregnant\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Mumps contraindications"
* #tchatvc-44.60 "The client has allergy to vaccine components" "'\"Potential contraindications\" = \"Severe allergic reactions\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Mumps contraindications"
* #tchid-32.60 "The client has immune deficiency" "\"Potential contraindications\" = \"Immunodeficiency syndromes\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Mumps contraindications"
* #tcisi-39.59 "The client is severely immunosuppressed" "\"Potential contraindications\" = \"Severely immunosuppressed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Mumps contraindications"
