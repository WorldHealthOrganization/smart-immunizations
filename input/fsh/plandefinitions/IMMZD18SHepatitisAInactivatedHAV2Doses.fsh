Instance: IMMZD18SHepatitisAInactivatedHAV2Doses
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule"
Description: """
IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule
Inactivated hepatitis A virus (HAV), 2-dose schedule
"""
Usage: #definition

* insert PlanDefMain( IMMZD18SHepatitisAInactivatedHAV2Doses, 0.1.0 )


* insert PlanDefCommunicationRequestAction([[Hepatitis A dose 1]], [["""
Provision of the hepatitis A dose 1
Trigger event: Child's birth
Trigger pseudo: 
Trigger date: "Date of birth"
Create condition: With a 2-dose schedule, the first dose should be given from ≥ 12 months of age.
"""]], [[Hepatitis A dose 1]], [[Hepatitis A dose 1 Create]])

* insert PlanDefCommunicationRequestAction([[Hepatitis A dose 2]], [["""
Provision of the hepatitis A dose 2
Trigger event: First hepatitis A dose from the primary series was administered
Trigger pseudo: Count of vaccines administered (where "Vaccine type" = "Hepatitis A-containing vaccines" and "Type of dose" = "Primary series") = 1
Trigger date: "Date and time of vaccination" (where "Vaccine type" = "Hepatitis A-containing vaccines")
Create condition: The interval between doses is flexible, from 6 months to 4–5 years or more, but is usually 6–18 months.
"""]], [[Hepatitis A dose 2]], [[Hepatitis A dose 2 Create]])
