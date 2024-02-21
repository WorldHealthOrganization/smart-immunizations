Instance: IMMZD2DTPolioBirth
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Polio.Birth"
Description: """
Determine if the client is due for a polio vaccination according to the national immunization protocol.
Birth dose administration as part of "bOPV plus IPV" schedule (In countries that are polio-endemic countries or countries at high risk for importation and subsequent spread of poliovirus, that follow the combined bOPV-IPV schedule)
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTPolioBirth, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for polio.]], [["""
    Determine if the client is due for a polio vaccination according to the national immunization schedule.
    Birth dose administration as part of "bOPV plus IPV" schedule (In countries that are polio-endemic countries or countries at high risk for importation and subsequent spread of poliovirus, that follow the combined bOPV-IPV schedule)
  """]], Client is due for the bOPV birth dose, IMMZD2DTPoliobOPVMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding polio birth dose.]], [["""
    Send Guidance for the patient regarding polio birth dose.
    Birth dose administration as part of "bOPV plus IPV" schedule (In countries that are polio-endemic countries or countries at high risk for importation and subsequent spread of poliovirus, that follow the combined bOPV-IPV schedule)
  """]], Guidance, Guidance)