Profile: DT.IMMZ.D2.DT.HepatitisB.4doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.HepatitisB.4doses,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination","""Monovalent birth dose is followed by 3 monovalent or combined\nvaccine doses\, usually given with other routine infant vaccines; the additional dose does not cause any harm. The interval between doses should be at least 4 weeks.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first hepatitis B dose as clients age is not within appropriate age range.\nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first hepatitis B dose as clients age is within appropriate age range.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago.\nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered more than 4 weeks ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago.\nCheck for any other vaccines due\, and inform the caregiver of when to come back for the third dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.HepatitisBimmunizationscheduleiscomplete,"Hepatitis B immunization schedule is complete","""-  """)
* insert SGDecisionTableGuidance("""The hepatitis B immunization schedule is complete. Three hepatitis B primary series doses were administered.\nCheck for any other vaccines due. """)

