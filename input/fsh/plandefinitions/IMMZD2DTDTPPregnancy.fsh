Instance: IMMZD2DTDTPPregnancy
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.DTP.Pregnancy"
Description: """
IMMZ.D2.DT.DTP.Pregnancy
Determine whether DTP-containing vaccines are needed for pregnant women
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTDTPPregnancy, 0.1.0 )

//TODO: Add needed actions for this plandefinition, e.g., create MedicationRequest

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D2.DT.DTP.Pregnancy.]], [["""
Show Guidance for the patient regarding IMMZ.D2.DT.DTP.Pregnancy.
"""]], Has Guidance, Guidance)
