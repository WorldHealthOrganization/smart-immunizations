Instance: IMMZD2DTPolioSequential
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Polio.Sequential"
Description: """
Determine if the client is due for a polio vaccination according to the national immunization protocol.
Sequential IPV–bOPV schedule (in countries with high vaccination coverage (e.g. 90–95%) and low importation risk (where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage))
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTPolioSequential, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for polio bOPV dose.]], [["""
    Determine if the client is due for a polio bOPV vaccination according to the national immunization schedule.
    Sequential IPV–bOPV schedule (in countries with high vaccination coverage (e.g. 90–95%) and low importation risk (where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage))
  """]], Client is due for bOPV vaccination, IMMZD2DTPoliobOPVMR )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for polio IPV dose.]], [["""
    Determine if the client is due for a polio IPV vaccination according to the national immunization schedule.
    Sequential IPV–bOPV schedule (in countries with high vaccination coverage (e.g. 90–95%) and low importation risk (where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage))
  """]], Client is due for IPV vaccination, IMMZD2DTPolioIPVMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding polio sequential IPV-bOPV primary series.]], [["""
    Send Guidance for the patient regarding polio sequential IPV-bOPV primary series.
    Sequential IPV–bOPV schedule (in countries with high vaccination coverage (e.g. 90–95%) and low importation risk (where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage))
  """]], Guidance, Guidance)