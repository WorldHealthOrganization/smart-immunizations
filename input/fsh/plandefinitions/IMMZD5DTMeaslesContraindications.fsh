Instance: IMMZD5DTMeaslesContraindications
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Measles contraindications"
Description: """
IMMZ.D5.DT.Measles contraindications
IMMZ.D5.DT.Measles contraindications
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTMeaslesContraindications, 0.1.0 )

* insert PlanDefMRUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
    Contraindication for measles immunization
  """]], Measles vaccination contraindicated, Draft Medication Request ID for Measles dose, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE9']], Measles-containing vaccines )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.Measles contraindications.]], [["""
Show Guidance for the patient regarding IMMZ.D5.DT.Measles contraindications.
"""]], Has Guidance, Guidance)
