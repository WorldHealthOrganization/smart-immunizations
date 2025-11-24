Instance: IMMZD5DTHepatitisAContraindications
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Hepatitis A contraindications"
Description: """
IMMZ.D5.DT.Hepatitis A contraindications
IMMZ.D5.DT.Hepatitis A contraindications
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTHepatitisAContraindications, 0.1.0 )

* insert PlanDefMRUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
  Contraindication for HepatitisA immunization
"""]], Live attentuated Hepatitis A-containing vaccine is contraindicated, Draft Medication Request ID for Hepatitis A dose, 
[[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE5']], Hepatitis A-containing vaccines )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.Hepatitis A contraindications.]], [["""
Show Guidance for the patient regarding IMMZ.D5.DT.Hepatitis A contraindications.
"""]], Has Guidance, Guidance)
