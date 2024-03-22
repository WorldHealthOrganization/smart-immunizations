Instance: IMMZD5DTMumps
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Mumps"
Description: "Check contraindications for Mumps vaccine"
Usage: #definition

* insert PlanDefMain( IMMZD5DTMumps, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding Mumps contraindication.]], [["""
    Show Guidance for the patient regarding Mumps contraindication.
  """]], Guidance, Guidance)
* insert PlanDefMedicationRequestUpdate([[Check Contraindication for Mumps Immunization]], [["""
    Contraindication for rubella immunization
  """]], Mumps vaccination is contraindicated, IMMZD5DTMumpsMR, Draft Medication Request ID for Mumps dose )