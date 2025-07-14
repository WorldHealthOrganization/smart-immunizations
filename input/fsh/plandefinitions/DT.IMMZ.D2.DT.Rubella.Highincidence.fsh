Profile: DT.IMMZ.D2.DT.Rubella.Highincidence
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Rubella.Highincidence,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueforrubellavaccination,"Client is not due for rubella vaccination","""The first dose of rubella-containing vaccine can be delivered at 9 months of age\, due to a high level of measles virus transmission.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with rubella dose as clients age is less than 9 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforrubellavaccination,"Client is due for rubella vaccination","""The first dose of rubella-containing vaccine can be delivered at 9 months of age\, due to a high level of measles virus transmission.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with rubella dose as no rubella doses were administered\, client is within the appropriate age range and no live vaccine was administered in the last 4 weeks.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueforrubellavaccination,"Client is not due for rubella vaccination","""Live vaccines should be given either simultaneously with rubella-containing vaccines\, or at least 4 weeks apart. An exception to this is oral poliovirus vaccine\, which can be given at any time before or after rubella-containing vaccines without interfering in the response to either vaccine. WHO recommends co-administration of rubella-containing vaccines and yellow fever-containing vaccines.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with rubella dose as live vaccine was administered in the last 4 weeks.\nCheck for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.Rubellaimmunizationscheduleiscomplete,"Rubella immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Rubella immunization schedule is complete. One rubella primary series dose was administered.\nCheck for any other vaccines due. """)

