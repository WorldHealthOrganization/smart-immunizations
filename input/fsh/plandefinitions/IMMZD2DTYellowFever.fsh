Instance: IMMZD2DTYellowFever
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.YellowFever"
Description: """
Determine if the client is due for a yellow fever vaccination according to the national immunization protocol.
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTYellowFever, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for yellow fever.]], [["""
    Determine if the client is due for yellow fever vaccination according to the national immunization protocol.
  """]], Client is due for yellow fever vaccination, IMMZD2DTYellowFeverMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding yellow fever primary series.]], [["""
    Send Guidance for the patient regarding yellow fever primary series.
  """]], Guidance, Guidance)