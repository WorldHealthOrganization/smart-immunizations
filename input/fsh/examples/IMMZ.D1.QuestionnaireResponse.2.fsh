Instance: Example.IMMZ.D1.QuestionnaireResponse.2
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-10-18T19:20:20.913Z"
* questionnaire = Canonical(QIMMZD1ClientHistoryMeasles)
* subject = Reference(patient654321)

* item[+]
  * linkId = "birth"
  * answer.valueBoolean = false
* item[+]
  * linkId = "type"
  * answer.valueCoding = IMMZ.D1#DE104
* item[+]
  * linkId = "booster"
  * answer.valueBoolean = false
* item[+]
  * linkId = "completedPrimarySeries"
  * answer.valueBoolean = false
* item[+]
  * linkId = "hivStatus"
  * answer.valueCoding = IMMZ.D1#DE12
* item[+]
  * linkId = "pretermBirth"
  * answer.valueBoolean = false
* item[+]
  * linkId = "immunocompromised"
  * answer.valueBoolean = false
* item[+]
  * linkId = "OnART"
  * answer.valueBoolean = false
* item[+]
  * linkId = "severelyImmunosuppressed"
  * answer.valueBoolean = false
* item[+]
  * linkId = "vaccineHistory"
  * item[+]
    * linkId = "vaccineType"
    * answer.valueCoding = $ICD11#XM4AJ8
  * item[+]
    * linkId = "vaccineDate"
    * answer.valueDate = "2023-04-05"


