
Instance: IMMZD5DTBCGCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZD5DTBCGCI"
Description: """
IMMZ.D5.DT.BCG contraindications
Potential contraindications
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTBCGCI, 0.1.0 )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.BCG contraindications.]], [["""
    Show Guidance for the patient regarding IMMZ.D5.DT.BCG contraindications.
  """]], Has Guidance, Guidance)
* insert PlanDefMedicationRequestUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
    Contraindication for BCG immunization
  """]], BCG vaccination is contraindicated, IMMZD5DTMeaslesMR, Draft Medication Request ID for BCG dose )
* insert PlanDefMedicationRequestUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
    Contraindication for BCG immunization
  """]], [[Bacille Calmette–Guérin (BCG) vaccination is contraindicated]], IMMZD5DTMeaslesMR, Draft Medication Request ID for BCG dose )
