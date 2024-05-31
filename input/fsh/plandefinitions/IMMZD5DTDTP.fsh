Instance: IMMZD5DTDTP
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.DTP"
Description: "Check contraindications for DTP vaccine"
Usage: #definition

* insert PlanDefMain( IMMZD5DTDTP, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding DTP contraindication.]], [["""
    Show Guidance for the patient regarding DTP contraindication.
  """]], Guidance, Guidance)
* insert PlanDefMedicationRequestUpdate([[Check Contraindication for DTP Immunization]], [["""
    Contraindication for DTP immunization
  """]], Tetanus vaccination is contraindicated, IMMZD5DTDTPMR, Draft Medication Request ID for DTP dose )