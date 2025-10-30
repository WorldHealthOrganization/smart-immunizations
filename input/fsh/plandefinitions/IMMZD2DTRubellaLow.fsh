
Instance: IMMZD2DTRubellaLow
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Rubella.Low incidence"
Description: """
IMMZ.D2.DT.Rubella.Low incidence
Countries with low incidence of rubella
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTRubellaLow, 0.1.0 )
* insert PlanDefMRAction( [[Determine if the client is due for Rubella.]], [["""
    Determine if the client is due for Rubella vaccine according to the national immunization protocol.
    Countries with low incidence of rubella
  """]], [["""The first dose of rubella-containing vaccine can be delivered at 12 months of age.
  """]], Client is due for rubella vaccination,  
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE17']], Rubella-containing vaccines )
* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D2.DT.Rubella.Low incidence.]], [["""
    Show Guidance for the patient regarding IMMZ.D2.DT.Rubella.Low incidence.
  """]], Has Guidance, Guidance)
