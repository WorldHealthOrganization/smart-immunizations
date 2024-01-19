Instance: QIMMZD1ClientHistoryMeasles
InstanceOf: sdc-questionnaire-extr-smap
Title: "Capture Client History Questionnaire"
Description: "Immunization - Capture Client History Questionnaire"
Usage: #definition
* id = "IMMZD1ClientHistoryMeasles"
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = IMMZ.D1.DE10
* contained[+] = IMMZ.D1.DE103

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/ig/smart-immunizations/StructureMap/IMMZD1QRToResources"


* insert Question(birth, Indicates if the client received a dose within 24 hours of birth. Whether a birth dose is counted as part of the primary series will depend on the antigen., boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE109
* insert Question(type, The type of dose in a series that the client received, choice, false, true)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE103)
  * code[+] = IMMZ.D1#DE103
* insert Question(booster, Indicates if the client has completed the booster series of a product/antigen, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE102
* insert Question(completedPrimarySeries, Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series\, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen., boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE8
* insert Question(dateSeriesCompleted, The date when the client completed the primary vaccination series - per product/antigen, date, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE81
* insert Question(hivStatus, The current human immunodeficiency virus HIV status of the client, choice, false, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE10)
  * code[+] = IMMZ.D1#DE10
  * code[+] = $LNC#55277-8
  * code[+] = $SCT#278977008
* insert Question(pretermBirth, The infant was preterm; the mother gave birth to the infant when gestational age was less than 37 weeks, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE15
  * code[+] = $ICD11#KA21.4
  * code[+] = $LNC#76517-2
  * code[+] = $SCT#395507008
* insert Question(immunocompromised, The client is known to be immunocompromised. This means the client has a weakened immune system and having a reduced ability to fight infections and other diseases, boolean, true, false)
* item[=]
  * code[+] = IMMZ.D1#DE16
  * code[+] = $ICD11#4B4Z
  * code[+] = $LNC#96381-9
  * code[+] = $SCT#370388006
* insert Question(onART, The client is currently receiving antiretroviral therapy - ART, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE17
* insert Question(severelyImmunosuppressed, The client is known to be severely immunocompromised or immunosuppressed, boolean, true, false)
* item[=] 
  * code[+] = IMMZ.D1#DE92
  * code[+] = $LNC#96381-9
* insert Question(artStartDate, The date on which the client started or restarted antiretroviral therapy ART, date, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE49
* insert Question(vaccineHistory, Vaccine History, group, false, true)
* item[=]
  * insert Question(vaccineType, Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine Library list of codes applies in this data element, choice, true, false)
  * item[=]
    * answerValueSet = Canonical(IMMZ.Z.DE9)
    * code[+] = IMMZ.D#DE19
    * code[+] = $LNC#39236-5
    * code[+] = $SCT#787859002
  * insert Question(vaccineDate, Represents the visit/encounter date\, which is the date and time when the vaccine was administered to the client, date, true, false)
  * item[=]
    * code[+] = IMMZ.D#DE20
    * code[+] = $LNC#30952-6  