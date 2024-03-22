Instance: IMMZD2DTMumps
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Mumps"
Description: """
Determine if the client is due for a mumps vaccination according to the national immunization schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTMumps, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for mumps]], [["""
    Determine if the client is due for mumps vaccination according to the national immunization protocol.
  """]], Client is due for mumps vaccination, IMMZD2DTMumpsMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding mumps primary series.]], [["""
    Send Guidance for the patient regarding mumps primary series.
  """]], Guidance, Guidance)