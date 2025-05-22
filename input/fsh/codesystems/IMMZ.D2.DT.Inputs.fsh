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

* #csailt9m "Client's age is less than 9 months" "Today's date − \"Date of birth\" < 9 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #nmpsdwa "No meningococcal primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csaimt9m "Client's age is more than 9 months" "Today's date − \"Date of birth\" ≥ 9 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
* #ompsdwa "One meningococcal primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csailt3m "Client's age is less than 3 months" "Today's date − \"Date of birth\" < 3 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
* #csaimtoet3m "Client's age is more than or equal to 3 months" "Today's date − \"Date of birth\" ≥ 3 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
* #tlmdwalt8wa "The latest meningococcal dose was administered less than 8 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 8 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
* #tlmdwamt8wa "The latest meningococcal dose was administered more than 8 weeks ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 8 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
* #tmpsdwa "Two meningococcal primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #csailt2m "Client's age is less than 2 months" "Today's date − \"Date of birth\" < 2 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #csaimtoet2m "Client's age is more than or equal to 2 months" "Today's date − \"Date of birth\" ≥ 2 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #csawltoet1mwtpsws "Client's age was less than or equal to 11 months when the primary series was started" "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" ≤ 11 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #tlmdwalt2ma "The latest meningococcal dose was administered less than 2 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 2 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #tlmdwamt2ma "The latest meningococcal dose was administered more than 2 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 2 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #csawmt1mwtpsws "Client's age was more than 11 months when the primary series was started" "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" > 11 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #tlmdwalt1ya "The latest meningococcal dose was administered less than 1 year ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 1 year"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #nmbdwa "No meningococcal booster dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tlmdwamt1ya "The latest meningococcal dose was administered more than 1 year ago" "Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 1 year"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #mbdwa "Meningococcal booster dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csailt2y "Client's age is less than 2 years" "Today's date − \"Date of birth\" < 2 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csaimtoet2y "Client's age is more than or equal to 2 years" "Today's date − \"Date of birth\" ≥ 2 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
* #csaimtoet9m "Client's age is more than or equal to 9 months" "Today's date − \"Date of birth\" ≥ 9 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #csawltoet23mwtpsws "Client's age was less than or equal to 23 months when the primary series was started" "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" ≤ 23 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #tlmdwalt3ma "The latest meningococcal dose was administered less than 3 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 3 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #tlmdwamt3ma "The latest meningococcal dose was administered more than 3 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 3 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #csawmt23mwtpsws "Client's age was more than 23 months when the primary series was started" "\"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" > 23 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
* #csaimt2y "Client's age is more than 2 years" "Today's date − \"Date of birth\" ≥ 2 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tlmdwalt3ya "The latest meningococcal dose was administered less than 3 years ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") < 3 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tlmdwamt3ya "The latest meningococcal dose was administered more than 3 years ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") ≥ 3 years"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #csailt12m "Client's age is less than 12 months" "Today's date − \"Date of birth\" < 12 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
* #nhapsdwa "No hepatitis A primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
* #csaimtoet12m "Client's age is more than or equal to 12 months" "Today's date − \"Date of birth\" ≥ 12 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
* #ohapsdwa "One hepatitis A primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
* #tlhadwalt6ma "The latest Hepatitis A dose was administered less than 6 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\") < 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
* #tlhadwamt6ma "The latest Hepatitis A dose was administered more than 6 months ago" "Today's date − \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\") ≥ 6 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
* #thapsdwa "Two hepatitis A primary series doses were administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
* #nhapsdwa "No hepatitis A primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 0"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #csailt18m "Client's age is less than 18 months" "Today's date − \"Date of birth\" < 18 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #csaimtoet18m "Client's age is more than or equal to 18 months" "Today's date − \"Date of birth\" ≥ 18 months"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #lvwaitl4w "Live vaccine was administered in the last 4 weeks" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) < 4 weekS"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #nlvwaitl4w "No live vaccine was administered in the last 4 weeks" "Today's date − latest \"Date and time of vaccination\" (where \"Live vaccine\" = TRUE) ≥ 4 weeks"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #ohapsdwa "One Hepatitis A primary series dose was administered" "Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
