Instance: IMMZD2DTHepatitisBBirth
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.HepatitisBBirth"
Description: """
Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTHepatitisBBirth, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for hepatitis B.]], [["""
    Determine if the client is due for hepatitis B vaccination according to the national immunization protocol.
  """]], Client is due for hepatitis B monovalent vaccine, IMMZD2DTHepatitisBMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding hepatitis B birth dose.]], [["""
    Send Guidance for the patient regarding hepatitis B birth dose.
  """]], Guidance, Guidance)