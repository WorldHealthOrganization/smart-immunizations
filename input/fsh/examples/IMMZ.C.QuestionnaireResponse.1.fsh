Instance: Example.IMMZ.C.QuestionnaireResponse.1
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2024-12-13T19:20:20.913Z"
* questionnaire = Canonical(QIMMZCClientregistration)
* item[+]
  * linkId = "uniqueIdentifier"
  * answer.valueString = "12345-ZA"
* item[+]
  * linkId = "name"
  * answer.valueString = "Thabo Mbulelo Mbeki"
* item[+]
  * linkId = "firstName"
  * answer.valueString = "Thabo Mbulelo"
* item[+]
  * linkId = "familyName"
  * answer.valueString = "Mbeki"
* item[+]
  * linkId = "sex"
  * answer.valueCoding = IMMZ.C#DE6 "Male"
* item[+]
  * linkId = "dateOfBirth"
  * answer.valueDate = "1942-06-18"
* item[+]
  * linkId = "age"
  * answer.valueInteger = 82
* item[+]
  * linkId = "caregiversMultiple"
  * item[+]
    * linkId = "caregiversFullName"
    * answer.valueString = "Zanele Mbeki"
  * item[+]
    * linkId = "caregiversFirstName"
    * answer.valueString = "Zanele"
  * item[+]
    * linkId = "caregiversFamilyName"
    * answer.valueString = "Mbeki"
* item[+]
  * linkId = "contactPhoneNumber"
  * answer.valueString = "+27 21 465 8000"
* item[+]
  * linkId = "address"
  * answer.valueString = "123 Main Street, Cape Town, Western Cape, 8001, ZA"

