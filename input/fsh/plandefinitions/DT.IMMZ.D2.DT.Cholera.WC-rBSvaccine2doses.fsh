Profile: DT.IMMZ.D2.DT.Cholera.WC-rBSvaccine2doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Cholera.WC-rBSvaccine2doses,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination","""For WC-rBS vaccine Dukoral\, 2 doses should be given to children aged ≥6 years and adults\, with an interval of 1–6 weeks between doses. If the interval since the last dose ≥ 6 weeks\, restart the primary series.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as no cholera doses have been administered.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueforcholeravaccination,"Client is not due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.Clientisdueforch.16a4e0f1c7,"Primary series is complete. Client is due for cholera booster dose","""For those aged ≥6 years\, if less than 2 years have passed\, 1 dose for revaccination. If more than 2 years have passed\, the primary series of 2 doses should be repeated.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera booster dose as the latest cholera dose was administered approximately less than 2 years ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforcholeravaccination,"Client is due for cholera vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered approximately more than 2 years ago. \nCheck for contraindications. """)

