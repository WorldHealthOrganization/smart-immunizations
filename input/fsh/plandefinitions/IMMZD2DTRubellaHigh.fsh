Instance: IMMZD2DTRubellaHigh
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.RubellaHigh"
Description: """
Determine if the client is due for a rubella vaccination according to the national immunization schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTRubellaHigh, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for rubella]], [["""
    Determine if the client is due for rubella vaccination according to the national immunization protocol.
  """]], Client is due for rubella vaccination, IMMZD2DTRubellaMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding rubella primary series.]], [["""
    Send Guidance for the patient regarding rubella primary series.
  """]], Guidance, Guidance)