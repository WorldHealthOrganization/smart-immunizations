Instance: IMMZD2DTMeaslesDose0
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.Dose0"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Measles dose 0 (MCV0) administration.
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTMeaslesDose0, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding Measles dose 0 (MCV0) administration.]], [["""
    Send Guidance for the patient regarding Measles dose 0 (MCV0) administration.
  """]], Guidance, Guidance)
