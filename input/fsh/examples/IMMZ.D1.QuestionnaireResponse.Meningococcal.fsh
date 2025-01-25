Instance: Example.IMMZ.D1.QuestionnaireResponse.Meningococcal
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
* insert QRItem( Coding, typeOfMeningococcalDose, [[IMMZ.D#DE233 "MenA conjugate vaccine (5µg)"]] )
* insert QRItem( Integer, ageInMonthsWhenClientReceivedFirstMeningococcalDose, 9 )
* insert QRItem( Coding, vaccineType, IMMZ.Z#DE10 "Meningococcal vaccines" )
* insert QRItem( DateTime, dateAndTimeOfVaccination, "2021-04-01")
* insert QRItem( Date, contactDate, "2021-04-01" )
* insert QRItem( Integer, doseNumber, 1 )
