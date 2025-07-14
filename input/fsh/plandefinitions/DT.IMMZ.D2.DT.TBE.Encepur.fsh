Profile: DT.IMMZ.D2.DT.TBE.Encepur
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.TBE.Encepur,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""Vaccines against tick-borne encephalitis: WHO position paper June 2011 19 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""Vaccines against tick-borne encephalitis: WHO position paper June 2011 19 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1\nVaccines against tick-borne encephalitis: WHO position paper June 2011 19 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforTBEvaccination,"Client is not due for TBE vaccination","""The vaccines manufactured in Austria and Germany FSME-Immun and Encepur can be given from > 1 year of age.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first TBE dose as clients age is less than 1 year. \nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforTBEvaccination,"Client is due for TBE vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first TBE dose as no TBE doses have been administered and clients age is more than 1 year. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforTBEvaccination,"Client is not due for TBE vaccination","""For the conventional vaccination schedule the dose interval is 1–3 months between doses 1 and 2. For Encepur\, the accelerated schedule requires vaccination on days 0 and 14\, followed by a third dose delivered 9–12 months later. In addition\, Encepur may be used on a rapid schedule\, with vaccination on days 0\, 7 and 21\, followed by a fourth dose delivered 12–18 months later.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforTBEvaccination,"Client is due for TBE vaccination","""For the conventional vaccination schedule\, the dose interval is 1–3 months between doses 1 and 2.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforTBEvaccination,"Client is not due for TBE vaccination","""For Encepur\, the requirement is 9–12 months between doses 2 and 3.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third TBE dose as the latest dose was administered less than 9 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforTBEvaccination,"Client is due for TBE vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third TBE dose as the latest dose was administered more than 9 months ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete.Clientisnotdu.c8ed11f7bd,"The primary series is complete. Client is not due for TBE booster dose","""Vaccination against the disease requires a primary series of 3 doses; those who will continue to be at risk should probably have ≥1 booster doses. For both vaccines FSME-Immun and Encepur the manufacturers recommend a booster dose to be administered 3 years after completion of the primary series.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete,"The primary series is complete",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with TBE booster dose as the primary series has been completed and the latest TBE dose was administered more than 3 years ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote,"Clinical judgement is required. Create a clinical note","""Vaccination against the disease requires a primary series of 3 doses; those who will continue to be at risk should probably have ≥1 booster doses. Although there is a strong indication that the spacing of boosters could be expanded considerably from the intervals currently recommended by the manufacturers every 3–5 years\, the evidence is still insufficient for a definitive recommendation on the optimal frequency and number of booster doses.  """)
* insert SGDecisionTableGuidance("""Assess if supplementary booster TBE doses are necessary and create a clinical note. \nCheck for any vaccines due. """)

