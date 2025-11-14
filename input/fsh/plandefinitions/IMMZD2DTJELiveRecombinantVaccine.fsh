Instance: IMMZD2DTJELiveRecombinantVaccine
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.JE.Live recombinant vaccine"
Description: """
IMMZ.D2.DT.JE.Live recombinant vaccine
Live recombinant vaccination schedule (1-dose scheme)
JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTJELiveRecombinantVaccine, 0.1.0 )

* insert PlanDefMRAction( [[Determine if the client is due for JE.]], [["""
Determine if the client is due for JE vaccine according to the national immunization protocol.
Live recombinant vaccination schedule (1-dose scheme) 
JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority
"""]], [["""Live recombinant vaccine: Single dose administered at ≥ 9 months of age. As a general rule, any live vaccine may be 
given either simultaneously or at an interval of 4 weeks.
"""]], Client is due for JE vaccination, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE8']], JE vaccines )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D2.DT.JE.Live recombinant vaccine.]], [["""
Show Guidance for the patient regarding IMMZ.D2.DT.JE.Live recombinant vaccine.
"""]], Has Guidance, Guidance)
