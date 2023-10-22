Instance: QIMMZCRegisterClient
InstanceOf: sdc-questionnaire-extr-smap
Title: "Client Registration Questionnaire"
Description: "Immunization - Client Registration Questionnaire"
Usage: #definition
* id = "IMMZCRegisterClient"
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = IMMZ.C.DE5
//* contained[+] = YesNoUnknown

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/ig/smart-immunizations/StructureMap/IMMZCQRToPatient"


//Header
//* insert Question(header,Client Registration form: to fill in by ....,display,true,false)

* insert Question(uniqueId, Unique identifier for the client,string,true,false)
* item[=]
  * code[+] = IMMZ.C#DE1

* insert Question(name, Client name,group,true,false)
* item[=]
  * code[+] = IMMZ.C#DE2
  * code[+] = $LNC#54125-0 "Patient name"
  * code[+] = $SCT#371484003 "Patient name (observable entity)"
  * insert Question(fullName, Full name of the client,string,true,false)
  * item[=]
    * code[+] = IMMZ.C#DE2
    * code[+] = $LNC#54125-0 "Patient name"
    * code[+] = $SCT#371484003 "Patient name (observable entity)"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE3
    * code[+] = $LNC#45392-8 "First name"
    * code[+] = $SCT#184095009 "Patient forename (observable entity)"

  * insert Question(familyName, Family name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE4
    * code[+] = $LNC#45394-4 "Last name"
    * code[+] = $SCT#184096005 "Patient surname (observable entity)"


* insert Question(sex, Sex,choice,true,false)
* item[=]
  * answerValueSet = "#IMMZ.C.DE5"
  * code[+] = IMMZ.C#DE5
  * code[+] = $LNC#46098-0	"Sex"
  * code[+] = $SCT#184100006 "Patient sex (observable entity)"

* insert Question(birthDate, Birth Date,date,false,false)
* item[=]
  * code[+] = IMMZ.C#DE10
  * code[+] = $LNC#21112-8	"Birth date"
  * code[+] = $SCT#184099003 "Date of birth (observable entity)"

* insert Question(caregiver, Care giver name,group,true,false)
* item[=]
  * code[+] = IMMZ.C#DE14
  * code[+] = $SCT#184140000 "Caregiver details (observable entity)"

  * insert Question(fullName, Full name of the care giver,string,true,false)
  * item[=]
    * code[+] = IMMZ.C#DE15
    * code[+] = $SCT#184140000 "Caregiver details (observable entity)"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16

  * insert Question(familyName, Family name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE17

* insert Question(phone, Client Phone number,string,true,false)
* item[=]
  * code[+] = IMMZ.C#DE18
  * code[+] = $LNC#42077-8 "Patient Phone number"
  * code[+] = $SCT#184103008 "Patient telephone number (observable entity)"

* insert Question(administrativeArea, Administrative area,choice,false,false)
* item[=]
  * code[+] = IMMZ.C#DE19
  * code[+] = $LNC#56799-0 "Address"
  * code[+] = $SCT#184097001 "Patient address (observable entity)"


* insert Question(healthWorker, Health Worker,boolean,true,false)
* item[=]
  * code[+] = IMMZ.C#DE20


/*

* phone 1..1 string "Client's phone number"
  * code[+] = IMMZ.C#DE18
  * code[+] = $LNC#42077-8 "Patient Phone number"
  * code[+] = $SCT#184103008 "Patient telephone number (observable entity)"
* administrativeArea 0..1 CodeableConcept "The name of the city/municipality/town/village of where the client lives"
  * code[+] = IMMZ.C#DE19
  * code[+] = $LNC#56799-0 "Address"
  * code[+] = $SCT#184097001 "Patient address (observable entity)"
* healthWorker 1..1 boolean "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."
  * code[+] = IMMZ.C#DE20
  

*/
