
Instance: IMMZD5DTVaricellaCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Varicella contraindications"
Description: """
IMMZ.D5.DT.Varicella contraindications
Potential contraindications
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTVaricellaCI, 0.1.0 )
* insert PlanDefMRUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
  Contraindication for Varicella immunization
"""]], Varicella vaccination is contraindicated, Draft Medication Request ID for Varicella dose, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE22']], Varicella-containing vaccines )
* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.Varicella contraindications.]], [["""
    Show Guidance for the patient regarding IMMZ.D5.DT.Varicella contraindications.
  """]], Has Guidance, Guidance)
