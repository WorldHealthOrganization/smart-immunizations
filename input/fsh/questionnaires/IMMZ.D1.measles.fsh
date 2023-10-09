Instance: Questionnaire-IMMZD1ClientHistory
InstanceOf: sdc-questionnaire-extr-smap
Title: "Capture Client History Questionnaire"
Description: "Immunization - Capture Client History Questionnaire"
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = IMMZ.D1.DE10

* insert Question(dose0, Indicates if the client has received a birth dose and/or supplementary dose, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE80
* insert Question(completedPrimarySeries, Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series\, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen., boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE8
* insert Question(dateSeriesCompleted, The date when the client completed the primary vaccination series - per product/antigen, date, false, true)
* item[=]
  * code[+] = IMMZ.D1#DE81
* insert Question(hivStatus, The current human immunodeficiency virus HIV status of the client, choice, false, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE10)
  * code[+] = IMMZ.D1#DE10
  * code[+] = $LNC#55277-8
  * code[+] = $SCT#278977008
* insert Question(immunocompromised, The client is known to be immunocompromised or immunosuppressed. This means the client has a weakened immune system and having a reduced ability to fight infections and other diseases, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE16
  * code[+] = $ICD11#4B4Z
  * code[+] = $LNC#96381-9
  * code[+] = $SCT#370388006
* insert Question(onART, The client is currently receiving antiretroviral therapy ART, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE17
* insert Question(hivExposedInfant, The infant is known to be exposed to HIV\, i.e. born to an HIV-infected woman, boolean, false, true)
* item[=]
  * code[+] = IMMZ.D1#DE90
  * code[+] = $ICD11#QC60
  * code[+] = $LNC#10157-6
  * code[+] = $SCT#438998000
* insert Question(immuneReconstitutionAchieved, The client is known to have achieved immune reconstitution, boolean, false, true)
* item[=]
  * code[+] = IMMZ.D1#DE46
* insert Question(severelyImmunosuppressed, The client is known to be severely immunocompromised or immunosuppressed, boolean, false, true)
* item[=] 
  * code[+] = IMMZ.D1#DE92
  * code[=] = $LNC#96381-9
* insert Question(artStartDate, The date on which the client started or restarted antiretroviral therapy ART, date, false, true)
* item[=]
  * code[+] = IMMZ.D1#DE49
