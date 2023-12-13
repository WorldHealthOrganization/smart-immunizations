Instance: IMMZD2DTMeaslesSupp
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.Supp"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Measles supplementary dose administration.
"""
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD2DTMeaslesSupp"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesSupp"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Send Guidance for the patient regarding Measles supplementary dose administration."
  * description = """
      Show Guidance for the patient regarding the Measles supplementary dose administration.
    """
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Guidance"
      * language = #text/cql-identifier
      * expression = "Guidance"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesCR)