Instance: IMMZD2DTPolioIPVOnly
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Polio.IPVOnly"
Description: """
Determine if the client is due for a polio vaccination according to the national immunization protocol.
IPV-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (DTP3 >90%)
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTPolioIPVOnly, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for polio IPV dose.]], [["""
    Determine if the client is due for a polio IPV vaccination according to the national immunization schedule.
    IPV-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (DTP3 >90%)
  """]], Client is due for IPV vaccination, IMMZD2DTPolioIPVMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding polio sequential IPV only primary series.]], [["""
    Send Guidance for the patient regarding polio sequential IPV only primary series.
    IPV-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (DTP3 >90%)
  """]], Guidance, Guidance)