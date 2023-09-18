Logical:      IMMZ-D1-client-history-measles
Title:        "IMMZ.D1 Capture Client History for Measles"
Description:  "Data elements for the IMMZ.D1 Capture Client History Data Dictionary for Measles."

* ^name = "IMMZ_D1_Client_History_Measles"

* dose0 0..1 boolean "Dose 0 administered" "Indicates if the client has received a birth dose and/or supplementary dose"
  * ^code[+] = IMMZ.D1#DE80
* completedPrimarySeries 0..1 boolean "Completed the primary vaccination series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
  * ^code[+] = IMMZ.D1#DE8
* dateSeriesCompleted 1..1 date "Date when primary vaccination series was completed" "The date when the client completed the primary vaccination series (per product/antigen)"
  * ^code[+] = IMMZ.D1#DE81
* pregnant 0..1 boolean "Currently pregnant" "The client is currently pregnant"
  * ^code[+] = IMMZ.D1#DE9
  * ^code[+] = $ICD11#XT0S
  * ^code[+] = $LNC#82810-3
  * ^code[+] = $SCT#77386006
* breastfeeding 0..1 boolean "Breastfeeding" "The client is currently breastfeeding"
  * ^code[+] = IMMZ.D1#DE82
  * ^code[+] = $ICD11#QA48.1
  * ^code[+] = $LNC#63895-7
  * ^code[+] = $SCT#69840006
* hivStatus 0..1 Coding "HIV status" "The current human immunodeficiency virus (HIV) status of the client"
  * ^code[+] = IMMZ.D1#DE10
  * ^code[+] = $LNC#55277-8
  * ^code[+] = $SCT#278977008
* hivStatus from IMMZ.D1.DE10
* pretermBirth 0..1 boolean "Preterm birth" "The infant was preterm,  the mother gave birth to the infant when gestational age was less than 37 weeks"
  * ^code[+] = IMMZ.D1#DE15
  * ^code[+] = $ICD11#KA21.4
  * ^code[+] = $LNC#76517-2
  * ^code[+] = $SCT#395507008
* immunocompromised 0..1 boolean "Immunocompromised" "The client is known to be immunocompromised or immunosuppressed. This means the client has a weakened immune system and having a reduced ability to fight infections and other diseases"
  * ^code[+] = IMMZ.D1#DE16
  * ^code[+] = $ICD11#4B4Z
  * ^code[+] = $LNC#96381-9
  * ^code[+] = $SCT#370388006
* onART 0..1 boolean "Currently on ART" "The client is currently receiving antiretroviral therapy (ART)"
  * ^code[+] = IMMZ.D1#DE17
* hivExposedInfant 1..1 boolean "HIV-exposed infant" "The infant is  known to be exposed to HIV (i.e. born to an HIV-infected woman)"
  * ^code[+] = IMMZ.D1#DE90
  * ^code[+] = $ICD11#QC60
  * ^code[+] = $LNC#10157-6
  * ^code[+] = $SCT#438998000
* immuneReconstitutionAchieved 1..1 boolean "Immune reconstitution was achieved" "The client is known to have achieved immune reconstitution"
  * ^code[+] = IMMZ.D1#DE46
* severelyImmunosuppressed 1..1 boolean "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
  * ^code[+] = IMMZ.D1#DE92
  * ^code[=] = $LNC#96381-9
* artStartDate 1..1 date "ART start date" "The date on which the client started or restarted antiretroviral therapy (ART)"
  * ^code[+] = IMMZ.D1#DE49
