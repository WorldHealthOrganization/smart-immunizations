Instance: IMMZD2DTMeaslesSupplementaryDose
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.Supplementary dose"
Description: """
IMMZ.D2.DT.Measles.Supplementary dose
Measles-containing vaccine (MCV) supplementary dose administration
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTMeaslesSupplementaryDose, 0.1.0 )

//TODO: Add needed actions for this plandefinition, e.g., create MedicationRequest

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D2.DT.Measles.Supplementary dose.]], [["""
Show Guidance for the patient regarding IMMZ.D2.DT.Measles.Supplementary dose.
"""]], Has Guidance, Guidance)
