Instance: IMMZD5DTYellowFever
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.YellowFever"
Description: "Check contraindications for Yellow Fever vaccine"
Usage: #definition

* insert PlanDefMain( IMMZD5DTYellowFever, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding yellow fever contraindication.]], [["""
    Show Guidance for the patient regarding yellow fever contraindication.
  """]], Guidance, Guidance)
* insert PlanDefMedicationRequestUpdate([[Check Contraindication for Yellow Fever Immunization]], [["""
    Contraindication for yellow fever immunization
  """]], Yellow fever vaccination is contraindicated, IMMZD5DTYellowFeverMR, Draft Medication Request ID for Yellow Fever dose )