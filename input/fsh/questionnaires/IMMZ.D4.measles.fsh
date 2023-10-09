Instance: Questionnaire-IMMZD4CheckContraindications
InstanceOf: sdc-questionnaire-extr-smap
Title: "Check Contraindications Questionnaire"
Description: "Immunization - Check Contraindications Questionnaire"
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = IMMZ.D4.DE161

* insert Question(contraindications, Specific situations or medical conditions in which it is advised or recommended to avoid or delay administering a particular vaccine, choice, false, true)
* item[=]
  * answerValueSet = Canonical(IMMZ.D4.DE161)
  * code[+] = IMMZ.D4#DE161
