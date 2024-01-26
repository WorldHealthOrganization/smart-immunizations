Instance: IMMZD18SYellowFever
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D18.S.YellowFever"
Description: """
Determine if the client is due for a yellow fever vaccination according to the national immunization protocol.
"""
Usage: #definition

* insert PlanDefMain( IMMZD18SYellowFever, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Provision of yellow fever dose from the primary schedule.]], [["""
    Provision of yellow fever dose from the primary schedule.
  """]], Yellow fever dose 1, Yellow fever dose 1 Create)
