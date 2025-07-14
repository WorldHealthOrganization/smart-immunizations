Profile: DT.IMMZ.D2.DT.HepatitisB.3doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.HepatitisB.3doses,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination","""The first and second monovalent or as part of a combined vaccine may given at the same time as the first and third doses of diphtheria–tetanus–pertussis DTP-containing vaccine. The interval between doses should be at least 4 weeks.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first hepatitis B dose as clients age is not within appropriate age range. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first hepatitis B dose as clients age is within appropriate age range. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.HepatitisBimmunizationscheduleiscomplete,"Hepatitis B immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Hepatitis B immunization schedule is complete for client whose weight at birth was over 2000 g and who was not premature infant. Two hepatitis B primary series doses were administered. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination","""A birth dose of hepatitis B-containing vaccine can be given to low-birth-weight <2000 g and premature infants. For these infants\, the birth dose should not count as part of the primary 3-dose series; the 3 doses of the standard primary series should be given according to the national vaccination schedule.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B-containing vaccine was administered less than 4 weeks ago. \nCheck for any other vaccines due\, and inform the caregiver of when to come back for the third dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B-containing vaccine administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforahepatitisBvaccination,"Client is not due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforahepatitisBvaccination,"Client is due for a hepatitis B vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.HepatitisBimmunizationscheduleiscomplete,"Hepatitis B immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""The hepatitis B immunization schedule is complete for client whose weight at birth was below 2000 g and who was a premature infant. Four hepatitis B primary series doses were administered. \nCheck for any other vaccines due. """)

