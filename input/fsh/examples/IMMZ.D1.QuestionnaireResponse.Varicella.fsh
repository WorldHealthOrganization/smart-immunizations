Instance: Example.IMMZ.D1.QuestionnaireResponse.Varicella
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2025-01-13T19:20:20.913Z"
* questionnaire = Canonical(QIMMZD1)
* subject = Reference(IMMZ.C.Patient.1)

* insert QRItem( Coding, typeOfDose, IMMZ.D#DE259 "Primary series" )
* insert QRItem( Boolean, completedThePrimaryVaccinationSeries, false )
* insert QRItem( Boolean, completedTheBoosterSeries, false )
* insert QRItem( Coding, hivStatus, IMMZ.D#DE206 "HIV-negative" )
* insert QRItem( Boolean, pretermBirth, false )
* insert QRItem( Boolean, immunocompromised, false )
* insert QRItem( Coding, vaccineType, IMMZ.Z#DE22 "Varicella-containing vaccines" )
* insert QRItem( DateTime, dateAndTimeOfVaccination, "2021-06-18T04:00:00Z")
* insert QRItem( Date, contactDate, "2021-06-18" )
* insert QRItem( Integer, doseNumber, 1 )
