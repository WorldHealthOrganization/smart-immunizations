Instance: Example.IMMZ.D4.QuestionnaireResponse.4
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
* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZ.D4#DE167 "Severe allergic reactions"
* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZ.D4#DE168 "Symptomatic HIV infection"
* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZ.D4#DE165 "Severely immunosuppressed"
