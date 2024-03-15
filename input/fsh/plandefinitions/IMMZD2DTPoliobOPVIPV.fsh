Instance: IMMZD2DTPoliobOPVIPV
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Polio.bOPVIPV"
Description: """
Determine if the client is due for a polio vaccination according to the national immunization protocol.
bOPV plus IPV schedule (applicable for all countries)
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTPoliobOPVIPV, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for polio bOPV dose.]], [["""
    Determine if the client is due for a polio bOPV vaccination according to the national immunization schedule.
    bOPV plus IPV schedule (applicable for all countries)
  """]], Client is due for bOPV vaccination, IMMZD2DTPoliobOPVMR )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for polio bOPV dose.]], [["""
    Determine if the client is due for a polio bOPV vaccination according to the national immunization schedule.
    bOPV plus IPV schedule (applicable for all countries)
  """]], Client is due for bOPV and IPV vaccination, IMMZD2DTPoliobOPVMR )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for polio IPV dose.]], [["""
    Determine if the client is due for a polio IPV vaccination according to the national immunization schedule.
    bOPV plus IPV schedule (applicable for all countries)
  """]], Client is due for IPV vaccination, IMMZD2DTPolioIPVMR )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for polio IPV dose.]], [["""
    Determine if the client is due for a polio IPV vaccination according to the national immunization schedule.
    bOPV plus IPV schedule (applicable for all countries)
  """]], Client is due for bOPV and IPV vaccination, IMMZD2DTPolioIPVMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding polio bOPV plus IPV primary series.]], [["""
    Send Guidance for the patient regarding polio bOPV plus IPV primary series.
    bOPV plus IPV schedule (applicable for all countries)
  """]], Guidance, Guidance)