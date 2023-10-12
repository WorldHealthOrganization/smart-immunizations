Instance: IMMZD2DTMeasles
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles"
Description: "If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination"
Usage: #definition

* library = "http://fhir.org/guides/who/smart-immunization/Library/IMMZD2DTMeasles"
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


Instance: IMMZD2DTMeaslesMR
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity
Title: "IMMZ.D2.DT.Measles.MR"
Description: "Provide measles immunization"
Usage: #definition

* library = "http://fhir.org/guides/who/smart-immunization/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesMedicationRequest"
* status = #draft
* experimental = false
* date = 2023-10-03
* publisher = "World Health Organization (WHO)"
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #MedicationRequest
* intent = #proposal
* doNotPerform = false
* productCodeableConcept = $ICD11#XM28X5 "Measles vaccines"
* dynamicValue[+]
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"
* dynamicValue[+]
  * path = "intent"
  * expression
    * language = #text/cql
    * expression = "'proposal'"
* dynamicValue[+]
  * path = "dispenseRequest.validityPeriod.start"
  * expression
    * description = "Due date of the dose"
    * language = #text/cql-identifier
    * expression = "Schedule Due Date for MCV dose"
* dynamicValue[+]
  * path = "dispenseRequest.validityPeriod.end"
  * expression
    * description = "Expiration date for MCV dose"
    * language = #text/cql-identifier
    * expression = "Expiration Date for MCV dose"


Instance: IMMZD2DTMeaslesCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.Contraindication"
Description: "Check contraindications for Measles vaccine"
Usage: #definition

* library = "http://fhir.org/guides/who/smart-immunization/Library/IMMZD2DTMeasles"
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

Instance: IMMZD2DTMeaslesCIMR
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity
Title: "IMMZ.D2.DT.Measles.Contraindication"
Description: "Provide measles immunization"
Usage: #definition

* library = "http://fhir.org/guides/who/smart-immunization/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesContraindication"
* status = #draft
* experimental = false
* date = 2023-10-03
* publisher = "World Health Organization (WHO)"
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #MedicationRequest
* intent = #proposal
* doNotPerform = true
* productCodeableConcept = $ICD11#XM28X5 "Measles vaccines"
* dynamicValue[+]
  * path = "id"
  * expression
    * description = "Draft Medication Request for MCV dose"
    * language = #text/cql-identifier
    * expression = "Draft Medication Request for MCV dose"

Instance: IMMZD2DTMeaslesEval
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequestactivity
Title: "IMMZ.D2.DT.Measles.Eval"
Description: "Provide measles immunization"
Usage: #definition

* library = "http://fhir.org/guides/who/smart-immunization/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesContraindicationEvaluation"
* status = #draft
* experimental = false
* date = 2023-10-03
* publisher = "World Health Organization (WHO)"
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #ServiceRequest
* intent = #proposal
* doNotPerform = false