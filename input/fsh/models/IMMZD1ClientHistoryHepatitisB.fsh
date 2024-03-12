Logical:      IMMZD1ClientHistoryHepatitisB
Title:        "IMMZ.D1 Capture Client History for Hepatitis B"
Parent:       IMMZD1ClientHistory
Description:  "Data elements for the IMMZ.D1 Capture Client History Data Dictionary for Hepatitis B."

* ^name = "IMMZ_D1_Client_History_HepatitisB"

* birth 1..1 boolean "Birth dose" "Indicates if the client received a dose within 24 hours of birth. Whether a birth dose is counted as part of the primary series will depend on the antigen."
  * ^code[+] = IMMZ.D1#DE109
* birthweight 1..1 integer "Birth weight in grams" "Represents the client's birth weight value measures in grams"
  * ^code[+] = IMMZ.D1#DE29
  * ^code[+] = $ICD11#KA21
  * ^code[+] = $LNC#8339-4
* hepbtype 1..1 Coding "Type of hepatitis B dose" "The type of hepatitis B vaccine dose administered to the client"
  * ^code[+] = IMMZ.D1#DE99
* hepbtype from IMMZ.D1.DE99
* vaccineHistory.vaccineType from IMMZ.Z.DE6

