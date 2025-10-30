
Instance: IMMZD5DTTyphoidCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Typhoid contraindications"
Description: """
IMMZ.D5.DT.Typhoid contraindications
Potential contraindications		
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTTyphoidCI, 0.1.0 )
* insert PlanDefMRUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
    Contraindication for Typhoid immunization
  """]], Typhoid vaccination is contraindicated for Ty21a vaccine, Draft Medication Request ID for Typhoid dose, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE21']], Typhoid vaccines )
* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.Typhoid contraindications.]], [["""
    Show Guidance for the patient regarding IMMZ.D5.DT.Typhoid contraindications.
  """]], Has Guidance, Guidance)
