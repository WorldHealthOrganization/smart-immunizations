Logical:      IMMZD1ClientHistoryMeasles
Title:        "IMMZ.D1 Capture Client History for Measles"
Parent:       IMMZD1ClientHistory
Description:  "Data elements for the IMMZ.D1 Capture Client History Data Dictionary for Measles."

* ^name = "IMMZ_D1_Client_History_Measles"

* severelyImmunosuppressed 1..1 boolean "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
  * ^code[+] = IMMZ.D1#DE92
  * ^code[=] = $LNC#96381-9
* artStartDate 0..1 date "ART start date" "The date on which the client started or restarted antiretroviral therapy (ART)"
  * ^code[+] = IMMZ.D1#DE49
* vaccineHistory.vaccineType from IMMZ.Z.DE9