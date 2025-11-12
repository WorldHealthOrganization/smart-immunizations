Instance: IMMZD2DTMeaslesLowTransmission
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.Low transmission"
Description: """
IMMZ.D2.DT.Measles.Low transmission
Countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)
"""
Usage: #definition

* insert PlanDefMain( IMMZD2DTMeaslesLowTransmission, 0.1.0 )

* insert PlanDefMRAction( [[Determine if the client is due for MCV1 in countries with low transmission.]], [["""
    Determine if the client is due for measles vaccination MCV1 according to the national immunization protocol.
    Countries with low levels of measles transmission.
  """]], [["""In countries with low levels of measles transmission MCV1 may be administered at 12 months of age. As a general rule, 
  live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be 
  given at any time before or after measles vaccination without interference in the response to either vaccine.
  """]], Client is due for MCV1, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE9']], Measles-containing vaccines )
* insert PlanDefMRAction( [[Determine if the client is due for MCV2 in countries with low transmission.]], [["""
    Determine if the client is due for measles vaccination MCV2 according to the national immunization protocol.
    Countries with low levels of measles transmission.
"""]], [["""In countries with low levels of measles transmission, administration of MCV2 at 15-18 months of age ensures early 
protection of the individual. The minimum interval between MCV1 and MCV2 is 4 weeks. As a general rule, live vaccines should 
be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time 
before or after measles vaccination without interference in the response to either vaccine.
"""]], Client is due for MCV2, 
  [[system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE9']], Measles-containing vaccines)

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding IMMZ.D2.DT.Measles.Low transmission.]], [["""
Show Guidance for the patient regarding IMMZ.D2.DT.Measles.Low transmission.
"""]], Has Guidance, Guidance)
