Instance: IMMZD5DTHepatitisB
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.HepatitisB"
Description: "Check contraindications for Hepatitis B vaccine"
Usage: #definition

* insert PlanDefMain( IMMZD5DTHepatitisB, 0.1.0 )
* insert PlanDefCommunicationRequestAction([[Send Guidance for the patient regarding hepatitis B contraindication.]], [["""
    Show Guidance for the patient regarding hepatitis B contraindication.
  """]], Guidance, Guidance)