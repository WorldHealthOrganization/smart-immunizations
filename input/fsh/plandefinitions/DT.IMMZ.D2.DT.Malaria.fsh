Profile: DT.IMMZ.D2.DT.Malaria
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Malaria,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueformalariavaccination,"Client is not due for malaria vaccination","""WHO recommends that the first dose of vaccine be administered from 5 months of age.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first malaria dose as clients age is less than 5 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformalariavaccination,"Client is due for malaria vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first malaria dose as no malaria doses were administered and client is within appropriate age range. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueformalariavaccination,"Client is not due for malaria vaccination","""The vaccine should be administered in a 3-dose primary schedule\, with a fourth dose provided approximately 12–18 months after the third dose to prolong the duration of protection. There should be a minimum interval of 4 weeks between doses.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformalariavaccination,"Client is due for malaria vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueformalariavaccination,"Client is not due for malaria vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformalariavaccination,"Client is due for malaria vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueformalariavaccination,"Client is not due for malaria vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with fourth malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the fourth dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformalariavaccination,"Client is due for malaria vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with fourth malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Malariaimmunizationscheduleiscomplete,"Malaria immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Malaria immunization schedule is complete. Four malaria primary series doses were administered. \nCheck for any other vaccines due. """)

