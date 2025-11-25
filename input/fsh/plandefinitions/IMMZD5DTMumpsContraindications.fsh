Instance: IMMZD5DTMumpsContraindications
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Mumps contraindications"
Description: """
IMMZ.D5.DT.Mumps contraindications
IMMZ.D5.DT.Mumps contraindications
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTMumpsContraindications, 0.1.0 )

* insert PlanDefMRUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
  Contraindication for Mumps immunization
"""]], Mumps vaccination is contraindicated, Draft Medication Request ID for Mumps dose, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE11']], Mumps-containing vaccines )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.Mumps contraindications.]], [["""
Show Guidance for the patient regarding IMMZ.D5.DT.Mumps contraindications.
"""]], Has Guidance, Guidance)
