Instance: IMMZD2DTMeaslesCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.Contraindication"
Description: "Check contraindications for Measles vaccine"
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesContraindication"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Check Contraindication for Measles Immunization"
  * description = "Contraindication for measles immunization"
  * type = #update
  * condition[+]
    * kind = #applicability
    * expression
      * description = "MCV Dose Contraindicated"
      * language = #text/cql-identifier
      * expression = "MCV Dose Contraindicated"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesCIMR)
* action[+]
  * title = "Evaluate Contraindication for Measles"
  * description = "Provide further evaluation for measles contraindication"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Contraindication Evaluation of the MCV dose"
      * language = #text/cql-identifier
      * expression = "Contraindication Evaluation of the MCV dose"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesEval)