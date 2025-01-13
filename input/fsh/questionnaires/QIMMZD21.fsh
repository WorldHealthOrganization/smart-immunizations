Instance:     QIMMZD21
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "IMMZ.D21.Generate verifiable digital certificate"
Description:  "Questionnaire for IMMZ.D21.Generate verifiable digital certificate"
Usage: #definition

* version = "2025"
* status = #draft
* subjectType = #Patient
* language = #en

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/immunizations/StructureMap/"

* insert Question(certificateIssuer, Certificate issuer, string, true, false)
* item[=]
  * code[+] = IMMZ.D#DE151
* insert Question(healthCertificateIdentifier, Health Certificate Identifier (HCID), string, true, false)
* item[=]
  * code[+] = IMMZ.D#DE152
* insert Question(certificateValidFrom, Certificate valid from, dateTime, true, false)
* item[=]
  * code[+] = IMMZ.D#DE153
* insert Question(certificateValidUntil, Certificate valid until, dateTime, true, false)
* item[=]
  * code[+] = IMMZ.D#DE154
* insert Question(certificateSchemaVersion, Certificate schema version, string, true, false)
* item[=]
  * code[+] = IMMZ.D#DE155
