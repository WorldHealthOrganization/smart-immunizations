Instance: IMMZD2DTMeaslesLowTx
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.LowTx"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Countries with low levels of measles transmission.
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTMeaslesLowTx, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for MCV1 in countries with ongoing transmission.]], [["""
    Determine if the client is due for measles vaccination MCV1 according to the national immunization protocol.
    Countries with low levels of measles transmission.
  """]], Client is due for MCV1, IMMZD2DTMeaslesMR )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for MCV2 in countries with ongoing transmission.]], [["""
    Countries with low levels of measles transmission.
"""]], Client is due for MCV2, IMMZD2DTMeaslesMR)
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding MCV primary series.]], [["""
    Send Guidance for the patient regarding MCV primary series.
  """]], Guidance, Guidance)