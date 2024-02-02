Instance: IMMZD18SMeaslesLowTx
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D18.S.Measles.LowTx"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Countries with low levels of measles transmission.
"""
Usage: #definition

* insert PlanDefMain( IMMZD18SMeaslesLowTx, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Provision of first measles dose from the primary schedule.]], [["""
    Provision of first measles dose from the primary schedule.
    Countries with low levels of measles transmission.
  """]], Measles dose 1, Measles dose 1 Create)
* insert PlanDefCommunicationRequestAction([[Provision of second measles dose from the primary schedule.]], [["""
    Provision of second measles dose from the primary schedule.
    Countries with low levels of measles transmission.
  """]], Measles dose 2, Measles dose 2 Create)