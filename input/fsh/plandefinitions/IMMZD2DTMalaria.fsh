Instance: IMMZD2DTMalaria
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Malaria"
Description: """
IMMZ.D2.DT.Malaria
4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTMalaria, 0.1.0 )

* insert PlanDefMRAction( [[Determine if the client is due for Malaria.]], [["""
Determine if the client is due for Malaria vaccine according to the national immunization protocol.
4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium 
falciparum malaria in children living in regions with moderate to high malaria transmission, as 
defined by WHO)
"""]], [["""The vaccine should be administered in a 3-dose primary schedule, with a fourth dose 
provided approximately 12–18 months after the third dose to prolong the duration of protection. 
There should be a minimum interval of 4 weeks between doses.
"""]], Client is due for malaria vaccination, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE27']], Malaria vaccines )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D2.DT.Malaria.]], [["""
Show Guidance for the patient regarding IMMZ.D2.DT.Malaria.
"""]], Has Guidance, Guidance)
