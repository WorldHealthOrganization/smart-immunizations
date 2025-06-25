Instance: Example.IMMZ.D1.QuestionnaireResponse.Polio
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2025-01-13T19:20:20.913Z"
* questionnaire = Canonical(QIMMZD1)
* subject = Reference(IMMZ.C.Patient.1)

* insert QRItem( Boolean, birthDose, true ) //
* insert QRItem( Coding, typeOfDose, IMMZ.D#DE260 "Dose 0" )
* insert QRItem( Boolean, completedThePrimaryVaccinationSeries, false )
* insert QRItem( Boolean, completedTheBoosterSeries, false )
* insert QRItem( Coding, hivStatus, IMMZ.D#DE206 "HIV-negative" )
* insert QRItem( Boolean, pretermBirth, false )
* insert QRItem( Boolean, immunocompromised, false )
* insert QRItem( Coding, typeOfPoliovirusDose, IMMZ.D#DE214 "bOPV" ) //
* insert QRItem( Coding, vaccineType, IMMZ.Z#DE14 "Poliovirus-containing vaccines" )
* insert QRItem( DateTime, dateAndTimeOfVaccination, "2020-06-18T04:00:00Z")
* insert QRItem( Date, contactDate, "2020-06-18" )
* insert QRItem( Integer, doseNumber, 1 )
