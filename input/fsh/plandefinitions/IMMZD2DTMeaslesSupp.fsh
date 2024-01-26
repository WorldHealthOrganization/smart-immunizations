Instance: IMMZD2DTMeaslesSupp
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.Supp"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Measles supplementary dose administration.
"""
Usage: #definition


* insert PlanDefMain( IMMZD2DTMeaslesSupp, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding Measles supplementary dose administration.]], [["""
    Show Guidance for the patient regarding the Measles supplementary dose administration.
  """]], Guidance, Guidance)