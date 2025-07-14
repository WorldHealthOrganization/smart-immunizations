Profile: DT.IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueforcholeravaccination,"Client is not due for cholera vaccination","""For WC-rBS vaccine Dukoral\, 3 doses should be given to children aged 2–5 years.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera dose as clients age is less than 2 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first cholera dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination","""For WC-rBS vaccine Dukoral\, 3 doses should be given to children aged 2–5 years of age\, with an interval of 1–6 weeks between doses.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as no cholera doses have been administered.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueforcholeravaccination,"Client is not due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueforcholeravaccination,"Client is not due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination","""If interval since last dose ≥ 6 weeks\, restart primary series.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.Clientisnotduefo.3e43cbd132,"Primary series is complete. Client is not due for cholera booster dose","""Revaccination is recommended where there is continued risk of Vibrio cholerae infection. For WC-rBS vaccine\, children aged 2–5 years revaccination is recommended within 6 months. If less than 6 months have passed\, 1 dose for revaccination.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera dose as the latest cholera dose was administered less than {Member States defined lower limit} days ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.Clientisdueforch.16a4e0f1c7,"Primary series is complete. Client is due for cholera booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera booster dose as the latest cholera dose was administered less than approximately 6 months ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination","""For WC-rBS vaccine\, children aged 2–5 years revaccination is recommended within 6 months. If more than 6 months have passed\, the primary series of 3 doses should be repeated.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than approximately 6 months ago.\nCheck for contraindications. """)

