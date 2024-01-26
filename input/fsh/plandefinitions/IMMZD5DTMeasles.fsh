Instance: IMMZD5DTMeasles
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Measles"
Description: "Check contraindications for Measles vaccine"
Usage: #definition

* insert PlanDefMain( IMMZD5DTMeasles, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding MCV contraindication.]], [["""
    Show Guidance for the patient regarding MCV contraindication.
  """]], Guidance, Guidance)
* insert PlanDefMedicationRequestUpdate([[Check Contraindication for Measles Immunization]], [["""
    Contraindication for measles immunization
  """]], Measles vaccination contraindicated, IMMZD5DTMeaslesMR, Draft Medication Request ID for MCV dose )