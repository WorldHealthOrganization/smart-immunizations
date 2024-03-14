Instance: IMMZD5DTRubella
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Rubella"
Description: "Check contraindications for Rubella vaccine"
Usage: #definition

* insert PlanDefMain( IMMZD5DTRubella, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding Rubella contraindication.]], [["""
    Show Guidance for the patient regarding Rubella contraindication.
  """]], Guidance, Guidance)
* insert PlanDefMedicationRequestUpdate([[Check Contraindication for Rubella Immunization]], [["""
    Contraindication for rubella immunization
  """]], Rubella vaccination is contraindicated, IMMZD5DTRubellaMR, Draft Medication Request ID for Rubella dose )