Instance: IMMZD2DTDTPOnTime
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.DTPOnTime"
Description: """
Determine if the client is due for a DTP vaccination according to the national immunization schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTDTPOnTime, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for DTP]], [["""
    Determine if the client is due for DTP vaccination according to the national immunization protocol.
  """]], Client is due for DTP vaccination, IMMZD2DTDTPMR )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for Tetanus and Diphtheria]], [["""
    Determine if the client is due for Tetanus and Diphtheria vaccination according to the national immunization protocol.
  """]], Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose., IMMZD2DTDTPMR )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for Pertussis]], [["""
    Determine if the client is due for pertussis vaccination according to the national immunization protocol.
  """]], Primary DTP series is complete. Client is due for pertussis booster dose, IMMZD2DTDTPMR )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding DTP series.]], [["""
    Send Guidance for the patient regarding DTP series.
  """]], Guidance, Guidance)