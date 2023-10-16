Instance: IMMZD2DTMeasles
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles"
Description: "If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination"
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeasles"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Immunize patient for Measles"
  * description = "Provide measles immunization"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Provision of the MCV dose"
      * language = #text/cql-identifier
      * expression = "Provision of the MCV dose"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesMR)