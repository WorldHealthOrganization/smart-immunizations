Instance: IMMZD2DTJEInactivatedVeroCellDerivedVaccine
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine"
Description: """
IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine
Inactivated Vero cell-derived vaccination schedule (2-dose scheme)
JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTJEInactivatedVeroCellDerivedVaccine, 0.1.0 )

* insert PlanDefMRAction( [[Determine if the client is due for JE.]], [["""
Determine if the client is due for JE vaccine according to the national immunization protocol.
Inactivated Vero cell-derived vaccination schedule (2-dose scheme) JE vaccination should be integrated 
into national immunization schedules in all areas where JE is recognized as a public health priority
"""]], [["""Inactivated Vero cell-derived vaccine: Primary series according to manufacturer’s recommendations 
(these vary by product), generally 2 doses at 4-week intervals starting the primary series at ≥ 6 months of age in endemic settings.
"""]], Client is due for JE vaccination, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE8']], JE vaccines )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine.]], [["""
Show Guidance for the patient regarding IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine.
"""]], Has Guidance, Guidance)
