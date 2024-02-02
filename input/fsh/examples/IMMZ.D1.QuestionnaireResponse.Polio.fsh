Instance: Example.IMMZ.D1.QuestionnaireResponse.Polio
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-10-18T19:20:20.913Z"
* questionnaire = Canonical(QIMMZD1ClientHistoryPolio)
* subject = Reference(patient654321)

* item[+]
  * linkId = "birth"
  * answer.valueBoolean = false
* item[+]
  * linkId = "booster"
  * answer.valueBoolean = false
* item[+]
  * linkId = "completedPrimarySeries"
  * answer.valueBoolean = true
* item[+]
  * linkId = "dateSeriesCompleted"
  * answer.valueDate = "2023-01-01"
* item[+]
  * linkId = "hivStatus"
  * answer.valueCoding = IMMZ.D1#DE11
* item[+]
  * linkId = "pretermBirth"
  * answer.valueBoolean = false
* item[+]
  * linkId = "immunocompromised"
  * answer.valueBoolean = false
* item[+]
  * linkId = "OnART"
  * answer.valueBoolean = true
* item[+]
  * linkId = "severelyImmunosuppressed"
  * answer.valueBoolean = true
* item[+]
  * linkId = "artStartDate"
  * answer.valueDate = "2022-06-01"
* item[+]
  * linkId = "poliotype"
  * answer.valueCoding = IMMZ.D1#DE36
* item[+]
  * linkId = "vaccineHistory"
  * item[+]
    * linkId = "vaccineType"
    * answer.valueCoding = $ICD11#XM0N24
  * item[+]
    * linkId = "vaccineDate"
    * answer.valueDate = "2023-04-05"

