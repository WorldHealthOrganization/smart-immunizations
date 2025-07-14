Profile: DT.IMMZ.D2.DT.HepatitisB.Delayedstart
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.HepatitisB.Delayedstart,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisdueforhepatitisBvaccination,"Client is due for hepatitis B vaccination","""If delayed or interrupted scheduling of vaccination for children\, adolescents and adults\, 3 doses are recommended\, with the second dose administered at least 1 month after the first\, and the third dose 6 months after the first dose. If the vaccination schedule is interrupted\, it is not necessary to restart the vaccine series.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first hepatitis B dose as hepatitis B birth dose was not administered. The first hepatitis B dose should be administered as soon as possible.  \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. \nCheck for any other vaccines due\, and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. Two hepatitis B doses have been administered to the client. \nCheck for any other vaccines due\, and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third hepatitis B dose as the first hepatitis B dose was administered less than 6 months ago. \nCheck for any other vaccines due\, and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third hepatitis B dose as the first hepatitis B dose was administered more than 6 months ago and the latest hepatitis B dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.HepatitisBimmunizationscheduleiscomplete,"Hepatitis B immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Hepatitis B immunization schedule is complete. Three hepatitis B primary series doses were administered. \nCheck for any other vaccines due. """)

