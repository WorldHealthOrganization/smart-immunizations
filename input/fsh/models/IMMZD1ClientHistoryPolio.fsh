Logical:      IMMZD1ClientHistoryPolio
Title:        "IMMZ.D1 Capture Client History for Polio"
Parent:       IMMZD1ClientHistory
Description:  "Data elements for the IMMZ.D1 Capture Client History Data Dictionary for Polio."

* ^name = "IMMZ_D1_Client_History_Polio"


* poliotype 0..1 Coding "Type of polio dose" "The type of the polio vaccine dose administered to the client"
  * ^code[+] = IMMZ.D1#DE35
  * ^code[+] = $ICD11#XM0N50
* poliotype from IMMZ.D1.DE35
