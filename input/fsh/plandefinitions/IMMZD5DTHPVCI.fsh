
Instance: IMMZD5DTHPVCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.HPV contraindications"
Description: """
IMMZ.D5.DT.HPV contraindications
Potential contraindications
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTHPVCI, 0.1.0 )
* insert PlanDefMRUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
    Contraindication for HPV immunization
  """]], [[Human papillomavirus (HPV) vaccination is contraindicated]], Draft Medication Request ID for HPV dose, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE7']], HPV vaccines )
* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.HPV contraindications.]], [["""
    Show Guidance for the patient regarding IMMZ.D5.DT.HPV contraindications.
  """]], Has Guidance, Guidance)
