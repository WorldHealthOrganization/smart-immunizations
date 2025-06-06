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

* #mvcbccjircacn-106.138 "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" "\"Immunization recommendation status\" (where \"Type of meningococcal dose\" = \"Polysaccharide vaccine\") = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Meningococcal contraindications"
* #lahacvic-66.139 "Live attentuated Hepatitis A-containing vaccine is contraindicated" "\"Immunization recommendation status\" = \"Contraindicated\" (where \"Type of hepatitis A dose\" = \"Live attenuated hepatitis A vaccine\")"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Hepatitis A contraindications"
* #havcbccjircacn-104.70 "Hepatitis A vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" "\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Hepatitis A contraindications"
* #cjircacn-54.70 "Clinical judgement is required. Create a clinical note" "\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Rabies contraindications"
* #dvic-37.60 "Dengue vaccination is contraindicated" "\"Immunization recommendation status\" = \"Contraindicated\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #dvcbccjircacn-100.70 "Dengue vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." "\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Dengue contraindications"
* #mvcbccjircacn-100.67 "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" "\"Immunization recommendation status\" =  \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Malaria contraindications"
* #mvic-36.56 "Mumps vaccination is contraindicated" "\"Immunization recommendation status\" = \"Contraindicated\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Mumps contraindications"
* #mvcbccjir-75.23 "Mumps vaccination could be contraindicated. Clinical judgement is required." "Create a clinical note."
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Mumps contraindications"
* #sivcbccjircacn-111.67 "Seasonal influenza vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" "'\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Seasonal influenza contraindications"
* #vvic-40.56 "Varicella vaccination is contraindicated" "\"Immunization recommendation status\" = \"Contraindicated\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Varicella contraindications"
* #cjirccn-52.66 "Clinical judgement is required. Create clinical note" "\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Varicella contraindications"
* #vvcbccjirccn-100.66 "Varicella vaccination could be contraindicated. Clinical judgement is required. Create clinical note" "\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Varicella contraindications"
* #cjirccn-52.67 "Clinical judgement is required. Create clinical note" "'\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D5.DT.Varicella contraindications"

