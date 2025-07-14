Profile: DT.IMMZ.D2.DT.Cholera.WCvaccines
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Cholera.WCvaccines,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueforcholeravaccination,"Client is not due for cholera vaccination","""For WC vaccines Shanchol\, Euvchol and mORCVAX\, 2 doses should be given 14 days apart to individuals aged ≥ 1 year.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera dose as clients age is under 1 year.\nCheck for any vaccines due and inform the caregiver of when to come back for the first cholera dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as no doses have been given. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueforcholeravaccination,"Client is not due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 14 days ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination","""–  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as the latest cholera dose was administered more than 14 days ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.Clientisnotduefo.3e43cbd132,"Primary series is complete. Client is not due for cholera booster dose","""Revaccination is recommended where there is continued risk of Vibrio cholerae infection. For WC vaccines\, revaccination is recommended after 3 years.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera booster dose as primary series was completed less than 3 years ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the first booster dose. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.Clientisdueforch.16a4e0f1c7,"Primary series is complete. Client is due for cholera booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as the primary series for cholera was completed more than 3 years ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueforcholeraboosterdose,"Client is not due for cholera booster dose",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera booster dose as the latest dose was administered less than 14 days ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeraboosterdose,"Client is due for cholera booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera booster dose as the booster series is not completed and the latest cholera dose was administered more than 14 days ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Boosterseriesiscomplete,"Booster series is complete",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera dose as the booster series for cholera was completed less than 3 years ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next booster series. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as the booster series for cholera was completed more than 3 years ago. \nCheck for contraindications. """)

