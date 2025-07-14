Profile: DT.IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine2doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine2doses,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination","""If\, in a specific context\, there is a compelling reason to vaccinate infants aged under 9 months\, a 2-dose schedule should be used starting at 3 months of age\, with an interval of at least 8 weeks between doses.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first meningococcal dose as clients age is under 3 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 8 weeks ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second meningococcal dose as the latest meningococcal dose was administered more than 8 weeks ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Meningococcalimmunizationscheduleiscomplete,"Meningococcal immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. Two meningococcal primary series doses were administered.\nCheck for any other vaccines due. """)

