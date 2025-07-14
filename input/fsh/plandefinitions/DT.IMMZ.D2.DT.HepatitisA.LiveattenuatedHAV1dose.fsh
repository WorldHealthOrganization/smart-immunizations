Profile: DT.IMMZ.D2.DT.HepatitisA.LiveattenuatedHAV1dose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.HepatitisA.LiveattenuatedHAV1dose,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforHepatitisAvaccination,"Client is not due for Hepatitis A vaccination","""Live vaccines are licensed for individuals aged ≥18 months and are administered as a single subcutaneous dose.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with Hepatitis A dose as clients age is less than 18 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHepatitisAvaccination,"Client is not due for Hepatitis A vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with Hepatitis A dose as live vaccine was administered in the last 4 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHepatitisAvaccination,"Client is due for Hepatitis A vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with hepatitis A dose as no Hepatitis A dose was administered\, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.HepatitisAimmunizationscheduleiscomplete,"Hepatitis A immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Hepatitis A immunization schedule is complete. One hepatitis A primary series dose was administered. \nCheck for any other vaccines due. """)

