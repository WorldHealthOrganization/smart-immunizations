
Instance: IMMZD5DTDTPCI
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D5.DT.DTP contraindications"
Description: """
IMMZ.D5.DT.DTP contraindications
Potential contraindications
"""
Usage: #definition

* insert PlanDefMain( IMMZD5DTDTPCI, 0.1.0 )
* insert PlanDefMRUpdate([[Check for contraindications before administering the vaccine(s) due]], [["""
    Contraindication for Tetanus immunization
  """]], Tetanus vaccination is contraindicated, Draft Medication Request ID for Tetanus dose,
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE19']], Tetanus-containing vaccines )
* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D5.DT.DTP contraindications.]], [["""
    Show Guidance for the patient regarding IMMZ.D5.DT.DTP contraindications.
  """]], Has Guidance, Guidance)
