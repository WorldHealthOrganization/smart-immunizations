Instance: IMMZDTUmbrella
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-strategydefinition
Title: "IMMZ.DT.Umbrella"
Description: "If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination"
Usage: #definition

* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZDTUmbrella"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Check Immunizations"
  * description = "Check immunization plan definitions to see what is required."
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs#dispense-medications
  * selectionBehavior = #all
  * action[+]
    * title = "Immunize patient for Measles"
    * description = "Provide measles immunization"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs#dispense-medications
    * selectionBehavior = #all
    * definitionCanonical = Canonical(IMMZD2DTMeasles)