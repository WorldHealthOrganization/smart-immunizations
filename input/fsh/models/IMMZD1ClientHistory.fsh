Logical:      IMMZD1ClientHistory
Title:        "IMMZ.D1 Capture Client History for All Antigens"
Description:  "Data elements for the IMMZ.D1 Capture Client History Data Dictionary for the fields that apply to all antigens."

* ^name = "IMMZ_D1_Client_History"

* patient 1..1 Reference "Patient" "The patient who is being checked for contraindications."
* type 1..* Coding "Type of dose" "The type of dose in a series that the client received"
  * ^code[+] = IMMZ.D1#DE103
* type from IMMZ.D1.DE103
* completedPrimarySeries 0..1 boolean "Completed the primary vaccination series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
  * ^code[+] = IMMZ.D1#DE8
* booster 0..1 boolean "Completed the booster series" "Indicates if the client has completed the booster series of a product/antigen"
  * ^code[+] = IMMZ.D1#DE102
* dateSeriesCompleted 1..1 date "Date when primary vaccination series was completed" "The date when the client completed the primary vaccination series (per product/antigen)"
  * ^code[+] = IMMZ.D1#DE81
* hivStatus 0..1 Coding "HIV status" "The current human immunodeficiency virus (HIV) status of the client"
  * ^code[+] = IMMZ.D1#DE10
  * ^code[+] = $LNC#55277-8
  * ^code[+] = $SCT#278977008
* hivStatus from IMMZ.D1.DE10
* pretermBirth 0..1 boolean "Preterm birth" "The infant was preterm; the mother gave birth to the infant when gestational age was less than 37 weeks"
  * ^code[+] = IMMZ.D1#DE15
  * ^code[+] = $ICD11#KA21.4
  * ^code[+] = $LNC#76517-2
  * ^code[+] = $SCT#395507008
* immunocompromised 0..1 boolean "Immunocompromised" "The client is known to be immunocompromised. This means the client has a weakened immune system and having a reduced ability to fight infections and other diseases"
  * ^code[+] = IMMZ.D1#DE16
  * ^code[+] = $ICD11#4B4Z
  * ^code[+] = $LNC#96381-9
  * ^code[+] = $SCT#370388006
* onART 0..1 boolean "Currently on ART" "The client is currently receiving antiretroviral therapy (ART)"
  * ^code[+] = IMMZ.D1#DE17
* vaccineHistory 0..* BackboneElement "Vaccine History" "History of previous vaccine doses."
  * vaccineType 0..1 Coding "Vaccine type" "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine Library list of codes applies in this data element"
    * ^code[+] = IMMZ.D#DE19
    * ^code[+] = $LNC#39236-5
    * ^code[+] = $SCT#787859002
  * vaccineType from IMMZ.Z.DE23
  * vaccineDate 0..1 date "Date and time of vaccination" "Represents the visit/encounter date, which is the date and time when the vaccine was administered to the client"
    * ^code[+] = IMMZ.D#DE20
    * ^code[+] = $LNC#30952-6 