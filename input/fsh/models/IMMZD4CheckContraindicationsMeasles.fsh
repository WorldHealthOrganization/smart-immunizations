Logical:      IMMZD4CheckContraindicationsMeasles
Title:        "IMMZ.D4 Check Contraindications for Measles"
Description:  "Data elements for the IMMZ.D4 Check Contraindications Data Dictionary for Measles."

* ^name = "IMMZ_D4_Check_Contraindications_Measles"

* patient 1..1 Reference "Patient" "The patient who is being checked for contraindications."
* contraindications 0..* Coding "Potential contraindications" "Specific situations or medical conditions in which it is advised or recommended to avoid or delay administering a particular vaccine."
  * ^code[+] = IMMZ.D4#DE161
* contraindications from IMMZ.D4.DE161

