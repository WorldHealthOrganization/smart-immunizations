Instance: Example.IMMZ.D1.QuestionnaireResponse.1
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-10-18T19:20:20.913Z"
* questionnaire = Canonical(QIMMZD1ClientHistoryMeasles)
* subject = Reference(patient123456)

* item[+]
  * linkId = "dose0"
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
  * linkId = "severelyImmunosuppressed"
  * answer.valueBoolean = false



