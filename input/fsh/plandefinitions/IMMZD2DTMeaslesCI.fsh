Instance: IMMZD5DTMeaslesCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Measles.Contraindication"
Description: "Check contraindications for Measles vaccine"
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD5DTMeaslesCI"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD5DTMeaslesContraindication"
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
      * description = "Measles vaccination contraindicated"
      * language = #text/cql-identifier
      * expression = "Measles vaccination contraindicated"
  * definitionCanonical = Canonical(IMMZD5DTMeaslesCIMR)
  * dynamicValue[+]
    * path = "id"
    * expression
      * description = "Draft Medication Request ID for MCV dose"
      * language = #text/cql-identifier
      * expression = "Draft Medication Request ID for MCV dose"
/*
* action[+]
  * title = "Evaluate Contraindication for Measles"
  * description = "Provide further evaluation for measles contraindication"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Clinical judgement required"
      * language = #text/cql-identifier
      * expression = "Clinical judgement required"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesEval)
*/
* action[+]
  * title = "Send Guidance for the patient regarding MCV contraindication."
  * description = """
      Show Guidance for the patient regarding MCV contraindication.
    """
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Guidance"
      * language = #text/cql-identifier
      * expression = "Guidance"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesCR)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text-cql
      * expression = "'active'"
  * dynamicValue[+]
    * path = "payload.contentAttachment.title"
    * expression
      * language = #text/cql-identifier
      * expression = "Guidance"
  * dynamicValue[+]
    * path = "payload.contentAttachment.language"
    * expression
      * language = #text/cql
      * expression = "'en-US'"
  * dynamicValue[+]
    * path = "payload.contentAttachment.contentType"
    * expression
      * language = #text/cql
      * expression = "'text/plain'"
  * dynamicValue[+]
    * path = "category.coding"
    * expression
      * description = "Category of communication"
      * language = #text/cql
      * expression = "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
  * dynamicValue[+]
    * path = "priority"
    * expression
      * description = "Alert priority"
      * language = #text/cql
      * expression = "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"