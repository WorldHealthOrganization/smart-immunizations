Instance: IMMZD18SHepatitisALiveAttenuatedHAV1Dose
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule"
Description: """
IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule
Live attenuated hepatitis A virus (HAV), 1 dose schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD18SHepatitisALiveAttenuatedHAV1Dose, 0.1.0 )


* insert PlanDefCommunicationRequestAction([[Hepatitis A dose 1]], [["""
Provision of the hepatitis A dose 1
Trigger event: Child's birth
Trigger pseudo: 
Trigger date: "Date of birth"
Create condition: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.
"""]], [[Hepatitis A dose 1]], [[Hepatitis A dose 1 Create]])
