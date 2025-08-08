CodeSystem: IMMZ.D2.DT.Inputs
Title:        "IMMZ.D2.DT.Inputs CodeSystem for Decision Table Inputs"
Description:  "CodeSystem for Decision Table Inputs"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D2_DT_Inputs"
* ^status = #active
* ^property[+].code = #table
* ^property[=].description = "Decision Table ID"
* ^property[=].type = #string

* #csailt9m-34.43 "Client's age is less than 9 months" "Today's date − \"Date of birth\" < 9 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #nmpsdwa-53.130 "No meningococcal primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csaimt9m-34.43 "Client's age is more than 9 months" "Today's date − \"Date of birth\" ≥ 9 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
* #ompsdwa-54.130 "One meningococcal primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csailt3m-34.43 "Client's age is less than 3 months" "Today's date − \"Date of birth\" < 3 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
* #csaimtoet3m-46.43 "Client's age is more than or equal to 3 months" "Today's date − \"Date of birth\" ≥ 3 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
* #tlmdwalt8wa-68.111 "The latest meningococcal dose was administered less than 8 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 8 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
* #tlmdwamt8wa-68.111 "The latest meningococcal dose was administered more than 8 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 8 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
* #tmpsdwa-56.130 "Two meningococcal primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #csailt2m-34.43 "Client's age is less than 2 months" "Today's date − \"Date of birth\" < 2 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
* #csaimtoet2m-46.43 "Client's age is more than or equal to 2 months" "Today's date − \"Date of birth\" ≥ 2 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
* #csawltoet1mwtpsws-84.118 "Client's age was less than or equal to 11 months when the primary series was started" "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" ≤ 11 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
* #tlmdwalt2ma-69.112 "The latest meningococcal dose was administered less than 2 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 2 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
* #tlmdwamt2ma-69.112 "The latest meningococcal dose was administered more than 2 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 2 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
* #csawmt1mwtpsws-72.118 "Client's age was more than 11 months when the primary series was started" "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" > 11 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
* #tlmdwalt1ya-67.117 "The latest meningococcal dose was administered less than 1 year ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 1 year"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
* #nmbdwa-46.128 "No meningococcal booster dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tlmdwamt1ya-67.117 "The latest meningococcal dose was administered more than 1 year ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 1 year"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
* #mbdwa-43.128 "Meningococcal booster dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csailt2y-33.42 "Client's age is less than 2 years" "Today's date − \"Date of birth\" < 2 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csaimtoet2y-45.42 "Client's age is more than or equal to 2 years" "Today's date − \"Date of birth\" ≥ 2 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
* #csaimtoet9m-46.43 "Client's age is more than or equal to 9 months" "Today's date − \"Date of birth\" ≥ 9 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #csawltoet23mwtpsws-84.118 "Client's age was less than or equal to 23 months when the primary series was started" "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" ≤ 23 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #tlmdwalt3ma-69.112 "The latest meningococcal dose was administered less than 3 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 3 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #tlmdwamt3ma-69.112 "The latest meningococcal dose was administered more than 3 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 3 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #csawmt23mwtpsws-72.118 "Client's age was more than 23 months when the primary series was started" "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" > 23 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #csaimt2y-33.42 "Client's age is more than 2 years" "Today's date − \"Date of birth\" ≥ 2 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tlmdwalt3ya-68.111 "The latest meningococcal dose was administered less than 3 years ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 3 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tlmdwamt3ya-68.111 "The latest meningococcal dose was administered more than 3 years ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 3 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csailt12m-35.44 "Client's age is less than 12 months" "Today's date − \"Date of birth\" < 12 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
* #nhapsdwa-53.139 "No hepatitis A primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
* #csaimtoet12m-47.44 "Client's age is more than or equal to 12 months" "Today's date − \"Date of birth\" ≥ 12 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
* #ohapsdwa-52.139 "One Hepatitis A primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
* #tlhadwalt6ma-67.121 "The latest Hepatitis A dose was administered less than 6 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\") < 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
* #tlhadwamt6ma-67.121 "The latest Hepatitis A dose was administered more than 6 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\") ≥ 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
* #thapsdwa-54.139 "Two hepatitis A primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
* #nhapsdwa-51.139 "No hepatitis A primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #csailt18m-35.44 "Client's age is less than 18 months" "Today's date − \"Date of birth\" < 18 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #csaimtoet18m-47.44 "Client's age is more than or equal to 18 months" "Today's date − \"Date of birth\" ≥ 18 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #lvwaitl4w-49.96 "Live vaccine was administered in the last 4 weeks" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weekS"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #nlvwaitl4w-52.96 "No live vaccine was administered in the last 4 weeks" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #nrpsdwa-48.123 "No rabies primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #orpsdwa-49.123 "One rabies primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #tlrdwalt7da-60.103 "The latest rabies dose was administered less than 7 days ago" "''Today's date - Latest \"Date of vaccination\" (where \"Vaccine type\" = \"Rabies vaccines\") < 7 days"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #tlrdwamt7da-60.103 "The latest rabies dose was administered more than 7 days ago" "''Today's date - Latest \"Date of vaccination\" (where \"Vaccine type\" = \"Rabies vaccines\") ≥ 7 days"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #trpsdwa-49.123 "Two rabies primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #csailt9y-33.43 "Client's age is less than 9 years" "Today's date − \"Date of birth\" <  9 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #csaimt45y-34.43 "Client's age is more than 45 years" "Today's date − \"Date of birth\" > 45 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #csdsin-38.36 "Client's dengue serostatus is negative" "\"Dengue serostatus\" = \"Negative\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
* #ndpsdwa-48.123 "No dengue primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #csaib9ya45y-44.54 "Client's age is between 9 years and 45 years" "9 years ≤ Today's date − \"Date of birth\" ≤  45 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #csdsip-38.36 "Client's dengue serostatus is positive" "\"Dengue serostatus\" = \"Positive\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
* #odpsdwa-47.123 "One dengue primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #tlddwalt6ma-62.112 "The latest dengue dose was administered less than 6 months ago" "Today's date - Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Dengue vaccines\") < 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #tlddwamt6ma-62.112 "The latest dengue dose was administered more than 6 months ago" "Today's date - Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Dengue vaccines\") ≥ 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #tdpsdwa-49.123 "Two dengue primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #tdpsdwa-51.123 "Three dengue primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 3"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #csailt5m-34.43 "Client's age is less than 5 months" "Today's date − \"Date of birth\" < 5 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #nmpsdwa-49.124 "No malaria primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #csaimtoet5m-46.43 "Client's age is more than or equal to 5 months" "Today's date − \"Date of birth\" ≥ 5 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #ompsdwa-48.124 "One malaria primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #tlmdwalt4wa-62.105 "The latest malaria dose was administered less than 4 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") < 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #tlmdwamt4wa-62.112 "The latest malaria dose was administered more than 4 weeks ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #tmpsdwa-50.124 "Two malaria primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #tmpsdwa-52.124 "Three malaria primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 3"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #fmpsdwa-51.124 "Four malaria primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 4"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #csailt5m-34.41 "Client's age is less than 5 months" "Today's date − \"Date of birth\" < 5 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #nmpsdwa-49.116 "No malaria primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #csaimtoet5m-46.41 "Client's age is more than or equal to 5 months" "Today's date − \"Date of birth\" ≥ 5 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #ompsdwa-48.116 "One malaria primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #tlmdwalt4wa-62.99 "The latest malaria dose was administered less than 4 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") < 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #tlmdwamt4wa-62.106 "The latest malaria dose was administered more than 4 weeks ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Malaria vaccines\") ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #tmpsdwa-50.116 "Two malaria primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #tmpsdwa-52.116 "Three malaria primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 3"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #fmpsdwa-51.116 "Four malaria primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Malaria vaccines\" and \"Type of dose\" = \"Primary series\") = 4"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #csailt12m-35.42 "Client's age is less than 12 months" "Today's date − \"Date of birth\" < 12 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #nmpsdwa-47.125 "No mumps primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Mumps-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
* #csaimtoet12m-47.42 "Client's age is more than or equal to 12 months" "Today's date − \"Date of birth\" ≥ 12 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
* #lvwaitp4w-49.92 "Live vaccine was administered in the past 4 weeks" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #nlvwaitp4w-52.92 "No live vaccine was administered in the past 4 weeks" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #ompsdwa-46.125 "One mumps primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Mumps-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
* #tlmdwalt4wa-60.108 "The latest mumps dose was administered less than 4 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Mumps-containing vaccines\") < 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
* #tlmdwamt4wa-60.108 "The latest mumps dose was administered more than 4 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Mumps-containing vaccines\") ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
* #tmpsdwa-48.125 "Two mumps primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Mumps-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Mumps"
* #csailt6m-34.41 "Client's age is less than 6 months" "Today's date − \"Date of birth\" < 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #nsipsdwa-60.127 "No seasonal influenza primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #csaimtoet6m-46.41 "Client's age is more than or equal to 6 months" "Today's date − \"Date of birth\" ≥ 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #osipsdwa-61.127 "One seasonal influenza primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #csailt9y-33.40 "Client's age is less than 9 years" "Today's date − \"Date of birth\" < 9 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #tlsidwalt4wa-73.110 "The latest seasonal influenza dose was administered less than 4 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") < 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #tlsidwamt4wa-73.110 "The latest seasonal influenza dose was administered more than 4 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #csaimtoet9y-45.40 "Client's age is more than or equal to 9 years" "Today's date − \"Date of birth\" ≥ 9 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #tlsidwalt1ya-73.109 "The latest seasonal influenza dose was  administered less than 1 year ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") < 1 year"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #tlsidwamt1ya-72.109 "The latest seasonal influenza dose was administered more than 1 year ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\") ≥ 1 year"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #tsipsdwa-61.127 "Two seasonal influenza primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Seasonal influenza"
* #nvpsdwa-49.129 "No varicella primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.1 dose"
* #csaimtoet12m-46.42 "Cient's age is more than or equal to 12 months" "Today's date − \"Date of birth\" ≥ 12 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #ovpsdwa-50.129 "One varicella primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.1 dose"
* #nvpsdwa-51.129 "No varicella primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #ovpsdwa-50.128 "One varicella primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") =1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #tlvdalt4wa-60.112 "The latest varicella dose administered less than 4 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Varicella-containing vaccines\") < 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #tlvdamt4wa-60.112 "The latest varicella dose administered more than 4 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Varicella-containing vaccines\") ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #tvpsdwa-52.129 "Two varicella primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Varicella-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Varicella.2 doses"
* #csailt1y-32.39 "Client's age is less than 1 year" "Today's date − \"Date of birth\" < 1 year"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #csaimtoet1y-44.39 "Client's age is more than or equal to 1 year" "Today's date − \"Date of birth\" ≥ 1 year"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #ncpsdwa-47.116 "No cholera primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #ocpsdwa-48.116 "One cholera primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #tlcdwalt14da-62.106 "The latest cholera dose was administered less than 14 days ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 14 days"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #tlcdwamt14da-62.106 "The latest cholera dose was administered more than 14 days ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 14 days"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #tcpsdwa-50.116 "Two cholera primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #ncbsdwa-47.114 "No cholera booster series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Booster dose\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #tlcdwalt3ya-62.106 "The latest cholera dose was administered less than 3 years ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 3 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #tlcdwamt3ya-62.106 "The latest cholera dose was administered more than 3 years ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 3 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #alobsdwa-49.115 "At least one booster series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Booster dose\") >= 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #dnotldio-37.68 "Dose number of the latest dose is one" "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #tlcdwamt14daalt3ya-88.118 "The latest cholera dose was administered more than 14 days ago and less than 3 years ago" "14 days <= Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") <= 3 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #dnotldit-37.68 "Dose number of the latest dose is two" "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC vaccines"
* #csailt2y-33.40 "Client's age is less than 2 years" "Today's date − \"Date of birth\" < 2 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
* #csai25y-25.50 "Client's age is 2–5 years" "2 years ≤ Today's date − \"Date of birth\" ≤ 5 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
* #alocpsdwa-57.117 "At least one cholera primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") >= 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #dnotlpsdio-52.106 "Dose number of the latest primary series dose is one" "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #tlcdwalt1wa-61.105 "The latest cholera dose was administered less than 1 week ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 1 week"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #tlcdwamt1walt6wa-83.115 "The latest cholera dose was administered more than 1 week and less than 6 weeks ago" "1 week ≤ Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") < 6 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #dnotlpsdit-52.106 "Dose number of the latest primary series dose is two" "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
* #dnotlpsdiltt-64.106 "Dose number of the latest primary series dose is less than three" "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") < 3"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
* #tlcdwamt6wa-62.106 "The latest cholera dose was administered more than 6 weeks ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 6 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #dnotlpsdit-54.106 "Dose number of the latest primary series dose is three" "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 3"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
* #tlcdwaltmsdllda-95.132 "The latest cholera dose was administered less than {Member States defined lower limit} days ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≤ Member States defined lower limit"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
* #tlcdwaalt6mamsdei-116.107 "The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≤ 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
* #tlcdwaamt6mamsdei-116.107 "The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") > 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses"
* #csaimt5y-33.40 "Client's age is more than 5 years" "Today's date − \"Date of birth\" > 5 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #dnotlpsdimtoett-74.107 "Dose number of the latest primary series dose is more than or equal to two" "Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") >= 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #tlcdwaalt2yamsdi-109.139 "The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≤ 2 years ± Member States defined interval"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #tlcdwaamt2yamsdi-109.139 "The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") > 2 years ± Member States defined interval"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses"
* #nbpsdwa-43.112 "No BCG primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"BCG vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #csailtoet28d-45.40 "Client's age is less than or equal to 28 days" "Today's date − \"Date of birth\" ≤ 28 days"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cshsinou-42.29 "Client's HIV status is negative or unknown" "\"HIV status\" ≠ \"HIV-positive\""
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #nlvwa-32.90 "No live vaccine was administered" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) IS NULL"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #lvwaitlfw-52.92 "Live vaccine was administered in the last four weeks" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cshsip-31.29 "Client's HIV status is positive" "\"HIV status\" = \"HIV-positive\""
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cicrat-52.25 "Client is currently receiving antiretroviral therapy" "\"Currently on ART\" = TRUE"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #ciis-32.31 "Client is immunologically stable" "\"Immunologically stable\" = TRUE"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cinis-36.32 "Client is not immunologically stable" "\"Immunologically stable\" = FALSE"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cicnrat-56.26 "Client is currently not receiving antiretroviral therapy" "\"Currently on ART\" = FALSE"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #csaib28da5y-43.50 "Client's age is between 28 days and 5 years" "28 days < Today's date − \"Date of birth\" < 5 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cstitrin-45.39 "Client's TB infection test result is negative" "\"TB infection test result\" = \"Negative\""
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #nlvwaitlfw-55.92 "No live vaccine was administered in the last four weeks" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cstitriutndonry-77.34 "Client's TB infection test result is unknown (test not done or no result yet)" "\"TB infection test result\" IS NULL"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cstitrip-45.39 "Client's TB infection test result is positive" "\"TB infection test result\" = \"Positive\""
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cincw-29.25 "Client is not clinically well" "\"Clinically well\" = FALSE"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #cicw-25.24 "Client is clinically well" "\"Clinically well\" = TRUE"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #obpsdwa-44.112 "One BCG primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"BCG vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule"
* #hbbdwna-43.117 "Hepatitis B birth dose was not administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Birth dose\" = TRUE) = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis B.Birth dose"
* #csailtmsdul-61.66 "Client's age is less than {Member States defined upper limit}" "Today's date − \"Date of birth\" < Member States defined upper limit"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis B.Birth dose"
* #csaimtmsdul-61.66 "Client's age is more than {Member States defined upper limit}" "Today's date - \"Date of birth\" > Member States defined upper limit"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis B.Birth dose"
* #hbbdwa-39.117 "Hepatitis B birth dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Birth dose\" = TRUE) = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis B.Birth dose"
