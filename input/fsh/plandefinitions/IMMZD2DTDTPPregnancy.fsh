Instance: IMMZD2DTDTPPregnancy
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.DTPPregnancy"
Description: """
Determine if the client is due for a DTP vaccination according to the national immunization schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTDTPPregnancy, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding DTP series.]], [["""
    Send Guidance for the patient regarding DTP series.
  """]], Guidance, Guidance)