Instance: Example.IMMZ.D5.QuestionnaireResponse.4
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-10-11"
* questionnaire = Canonical(QIMMZD5CheckContraindications)
* subject = Reference(patient123456)

* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZ.D#DE162 "Currently pregnant"
* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZ.D#DE167 "Severe allergic reactions"
* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZ.D#DE168 "Symptomatic HIV infection"
* item[+]
  * linkId = "contraindications"
  * text = "Contraindications"
  * answer.valueCoding = IMMZ.D#DE165 "Severely immunosuppressed"
