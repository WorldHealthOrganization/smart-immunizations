Instance: Example.IMMZ.D1.QuestionnaireResponse.YellowFever
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2025-01-13T19:20:20.913Z"
* questionnaire = Canonical(QIMMZD1)
* subject = Reference(IMMZ.C.Patient.1)

* insert QRItem( Coding, typeOfDose, IMMZ.D#DE259 "Primary series" )
* insert QRItem( Boolean, completedThePrimaryVaccinationSeries, true )
* insert QRItem( Boolean, completedTheBoosterSeries, false )
* insert QRItem( Date, dateWhenPrimaryVaccinationSeriesWasCompleted, "2021-04-05" ) //
* insert QRItem( Coding, hivStatus, IMMZ.D#DE206 "HIV-negative" )
* insert QRItem( Boolean, pretermBirth, false )
* insert QRItem( Boolean, immunocompromised, false )
* insert QRItem( Coding, vaccineType, IMMZ.Z#DE23 "Yellow fever vaccines" )
* insert QRItem( DateTime, dateAndTimeOfVaccination, "2021-04-05")
* insert QRItem( Date, contactDate, "2021-04-05" )
* insert QRItem( Integer, doseNumber, 1 )
