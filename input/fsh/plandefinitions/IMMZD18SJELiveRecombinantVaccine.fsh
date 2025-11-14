Instance: IMMZD18SJELiveRecombinantVaccine
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D18.S.JE.Live recombinant vaccination schedule"
Description: """
IMMZ.D18.S.JE.Live recombinant vaccination schedule
Live recombinant vaccination schedule (1-dose scheme)
"""
Usage: #definition

* insert PlanDefMain( IMMZD18SJELiveRecombinantVaccine, 0.1.0 )


* insert PlanDefCommunicationRequestAction([[Japanese encephalitis (JE) dose 1]], [["""
Provision of the JE dose 1
Trigger event: Child's birth
Trigger pseudo: 
Trigger date: "Date of birth"
Create condition: Live recombinant vaccine: Single dose administered at ≥9 months of age
"""]], [[Japanese encephalitis (JE) dose 1]], [[Japanese encephalitis (JE) dose 1 Create]])
