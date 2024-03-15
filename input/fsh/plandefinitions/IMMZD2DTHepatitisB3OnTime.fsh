Instance: IMMZD2DTHepatitisB3OnTime
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.HepatitisB3OnTime"
Description: """
Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTHepatitisB3OnTime, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for hepatitis B.]], [["""
    Determine if the client is due for hepatitis B vaccination according to the national immunization protocol.
  """]], Client is due for a hepatitis B vaccination, IMMZD2DTHepatitisBMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding hepatitis B primary series.]], [["""
    Send Guidance for the patient regarding hepatitis B primary series.
  """]], Guidance, Guidance)