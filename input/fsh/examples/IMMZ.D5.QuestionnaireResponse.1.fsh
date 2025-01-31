Instance: Example.IMMZ.D5.QuestionnaireResponse.1
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2025-01-31T19:20:20.913Z"
* questionnaire = Canonical(QIMMZD5)
* subject = Reference(IMMZ.C.Patient.2)

* insert QRItem( Coding, potentialContraindications, IMMZ.D#DE162 "Currently pregnant" )
* insert QRItem( Coding, potentialContraindications, IMMZ.D#DE167 "Severe allergic reactions" )


