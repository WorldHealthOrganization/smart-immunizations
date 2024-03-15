Instance: IMMZD5DTPolio
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.Polio"
Description: "Check contraindications for Polio vaccine"
Usage: #definition

* insert PlanDefMain( IMMZD5DTPolio, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding polio contraindication.]], [["""
    Show Guidance for the patient regarding polio contraindication.
  """]], Guidance, Guidance)
* insert PlanDefMedicationRequestUpdate([[Check Contraindication for Polio Immunization]], [["""
    Contraindication for polio immunization
  """]], Polio vaccination with bOPV is contraindicated, IMMZD5DTPoliobOPVMR, Draft Medication Request ID for bOPV dose )