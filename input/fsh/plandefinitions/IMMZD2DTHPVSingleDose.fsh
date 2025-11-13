Instance: IMMZD2DTHPVSingleDose
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.HPV.Single dose"
Description: """
IMMZ.D2.DT.HPV.Single dose
Alternative single-dose schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTHPVSingleDose, 0.1.0 )

* insert PlanDefMRAction( [[Determine if the client is due for HPV.]], [["""
    Determine if the client is due for HPV vaccine according to the national immunization protocol.
    Alternative single-dose schedule
  """]], [["""As an off-label option, a single-dose schedule can be used in girls and boys aged 9–20 years.
  """]], Client is due for HPV vaccination, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE7']], HPV vaccines )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D2.DT.HPV.Single dose.]], [["""
Show Guidance for the patient regarding IMMZ.D2.DT.HPV.Single dose.
"""]], Has Guidance, Guidance)
