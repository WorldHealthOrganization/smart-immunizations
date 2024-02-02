Instance: IMMZD18SMeaslesHighTx
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D18.S.Measles.HighTx"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Countries with ongoing transmission in which the risk of measles mortality remains high.
"""
Usage: #definition

* insert PlanDefMain( IMMZD18SMeaslesHighTx, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Provision of first measles dose from the primary schedule.]], [["""
    Provision of first measles dose from the primary schedule.
    Countries with ongoing transmission in which the risk of measles mortality remains high.
  """]], Measles dose 1, Measles dose 1 Create)
* insert PlanDefCommunicationRequestAction([[Provision of second measles dose from the primary schedule.]], [["""
    Provision of second measles dose from the primary schedule.
    Countries with ongoing transmission in which the risk of measles mortality remains high.
  """]], Measles dose 2, Measles dose 2 Create)