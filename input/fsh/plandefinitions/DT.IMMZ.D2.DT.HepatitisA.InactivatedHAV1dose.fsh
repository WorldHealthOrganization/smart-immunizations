Profile: DT.IMMZ.D2.DT.HepatitisA.InactivatedHAV1dose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( IMMZ.D2.DT.HepatitisA.InactivatedHAV1dose,"0.2.0)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHepatitisAvaccination,"Client is not due for Hepatitis A vaccination","""For children\, inactivated hepatitis A-containing vaccines can be given as a single-dose or 2-dose schedule\, and administered intramuscularly.\nFor adults aged over 40 years\, vaccination with inactivated vaccines using the 2-dose schedule is preferred since there is insufficient evidence on the immunogenicity and long-term protection from a single dose in this age group.\nWith a 2-dose schedule\, the first dose should be given from ≥ 12 months of age.  """)
* insert SGDecisionTableCondition("Clientsageislessthan12months")
* insert SGDecisionTableGuidance("""Should not vaccinate client with Hepatitis A dose as clients age is less than 12 months.\nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableCondition("Clientsageislessthan12months")
* insert SGDecisionTableOutput(DTO.ClientisdueforHepatitisAvaccination,"Client is due for Hepatitis A vaccination","""With a 2-dose schedule\, the first dose should be given from ≥ 12 months of age.  """)
* insert SGDecisionTableCondition("NohepatitisAprimaryseriesdosewasadministered")
* insert SGDecisionTableCondition("Clientsageismorethanorequalto12months")
* insert SGDecisionTableGuidance("""Should vaccinate client with hepatitis A dose as no hepatitis A dose was administered and clients age is within appropriate age range.\nCheck for contraindications. """)
* insert SGDecisionTableCondition("NohepatitisAprimaryseriesdosewasadministered")
* insert SGDecisionTableCondition("Clientsageismorethanorequalto12months")
* insert SGDecisionTableOutput(DTO.HepatitisAimmunizationscheduleiscomplete,"Hepatitis A immunization schedule is complete","""-  """)
* insert SGDecisionTableCondition("OnehepatitisAprimaryseriesdosewasadministered")
* insert SGDecisionTableGuidance("""Hepatitis A immunization schedule is complete. One hepatitis A primary series dose was administered.\nCheck for any other vaccines due. """)
* insert SGDecisionTableCondition("OnehepatitisAprimaryseriesdosewasadministered")
