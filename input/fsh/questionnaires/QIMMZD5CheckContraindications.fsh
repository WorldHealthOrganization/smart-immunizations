Instance: QIMMZD5CheckContraindications
InstanceOf: sdc-questionnaire-extr-smap
Title: "Check Contraindications Questionnaire"
Description: "Immunization - Check Contraindications Questionnaire"
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = IMMZ.D.DE161

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/ig/smart-immunizations/StructureMap/IMMZD5QRToResources"


//* insert Question(contraindications, Specific situations or medical conditions in which it is advised or recommended to avoid or delay administering a particular vaccine, choice, false, true)
* insert Question(contraindications, Contraindications, choice, false, true)
* item[=]
  * answerValueSet = Canonical(IMMZ.D.DE161)
  * code[+] = IMMZ.D#DE161
