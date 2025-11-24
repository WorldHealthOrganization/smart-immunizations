Instance: IMMZD5DTDengueContraindications
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Dengue contraindications"
Description: """
IMMZ.D5.DT.Dengue contraindications
IMMZ.D5.DT.Dengue contraindications
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTDengueContraindications, 0.1.0 )

* insert PlanDefMRUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
  Contraindication for Dengue immunization
"""]], Dengue vaccination is contraindicated, Draft Medication Request ID for Dengue dose,
[[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE25']], Dengue vaccines )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.Dengue contraindications.]], [["""
Show Guidance for the patient regarding IMMZ.D5.DT.Dengue contraindications.
"""]], Has Guidance, Guidance)
