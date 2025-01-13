Instance:     QIMMZD20
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "IMMZ.D20.Does client require a verifiable digital certificate"
Description:  "Questionnaire for IMMZ.D20.Does client require a verifiable digital certificate"
Usage: #definition

* version = "2025"
* status = #draft
* subjectType = #Patient
* language = #en

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/immunizations/StructureMap/"

* insert Question(digitalCertificateNeeded, Digital certificate needed, boolean, true, false)
* item[=]
  * code[+] = IMMZ.D#DE150
