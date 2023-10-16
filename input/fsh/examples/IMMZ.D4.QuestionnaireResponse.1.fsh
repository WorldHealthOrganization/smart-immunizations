Instance: Example.IMMZ.D4.QuestionnaireResponse.1
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-10-11"
* questionnaire = Canonical(QIMMZD4CheckContraindicationsMeasles)
* subject = Reference(patient123456)

* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZ.D4#DE162 "Currently pregnant"