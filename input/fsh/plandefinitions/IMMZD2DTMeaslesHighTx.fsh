Instance: IMMZD2DTMeaslesHighTx
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.HighTx"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Countries with ongoing transmission in which the risk of measles mortality remains high.
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTMeaslesHighTx, 0.1.0 )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for MCV1 in countries with ongoing transmission.]], [["""
    Determine if the client is due for measles vaccination MCV1 according to the national immunization protocol.
    Countries with ongoing transmission in which the risk of measles mortality remains high.
  """]], Client is due for MCV1, IMMZD2DTMeaslesMR )
* insert PlanDefMedicationRequestAction( [[Determine if the client is due for MCV2 in countries with ongoing transmission.]], [["""
    Determine if the client is due for measles vaccination MCV2 according to the national immunization protocol.
    Countries with ongoing transmission in which the risk of measles mortality remains high.
"""]], Client is due for MCV2, IMMZD2DTMeaslesMR)
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding MCV primary series.]], [["""
    Send Guidance for the patient regarding MCV primary series.
  """]], Guidance, Guidance)