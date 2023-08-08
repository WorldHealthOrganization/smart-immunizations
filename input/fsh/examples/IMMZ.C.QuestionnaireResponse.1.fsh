Instance: Example.IMMZ.C.QuestionnaireResponse.1
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-08-08T19:20:20.913Z"
* item[+]
  * linkId = "uniqueId"
  * text = "Unique identifier for the client"
  * answer.valueString = "123456"
* item[+]
  * linkId = "name"
  * .text = "Client name"
  * item[+]
    * linkId = "fullName"
    * text = "Full name of the client"
    * answer.valueString = "Test Patient"
  * item[+]
    * linkId = "firstName"
    * text = "First or given name"
    * answer.valueString = "Test"
  * item[+]
    * linkId = "familyName"
    * text = "Family name"
    * answer.valueString = "Patient"
* item[+]
  * linkId = "sex"
  * text = "Sex"
  * answer.valueCoding
    * system = Canonical(IMMZ.C.DE5)
    * code = #DE6
* item[+]
  * linkId = "birthDate"
  * text = "Birth Date"
  * answer.valueDate = "1993-08-12"
* item[+]
  * linkId = "ageInWeeks"
  * text = "Age in Weeks"
  * answer.valueInteger = 1565
* item[+]
  * linkId = "ageInMonths"
  * text = "Age in Months"
  * answer.valueInteger = 359
* item[+]
  * linkId = "ageInYears"
  * text = "Age in Years"
  * answer.valueInteger = 29
* item[+]
  * linkId = "caregiver"
  * text = "Care giver name"
  * item[+]
    * linkId = "fullName"
    * text = "Full name of the care giver"
    * answer.valueString = "Mother Patient"
  * item[+]
    * linkId = "firstName"
    * text = "First or given name"
    * answer.valueString = "Mother"
  * item[+]
    * linkId = "familyName"
    * text = "Family name"
    * answer.valueString = "Patient"
* item[+]
  * linkId = "phone"
  * text = "Client Phone number"
  * answer.valueString = "406-555-12-12"
* item[+]
  * linkId = "healthWorker"
  * text = "Health Worker"
  * answer.valueBoolean = false
