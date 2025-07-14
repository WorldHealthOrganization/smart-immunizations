Profile: DT.IMMZ.D2.DT.TBE.EnceVir
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.TBE.EnceVir,0.2.0)

* insert SGDecisionTableCitation("""Vaccines against tick-borne encephalitis: WHO position paper June 2011 19 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""References """)
* insert SGDecisionTableCitation("""Vaccines against tick-borne encephalitis: WHO position paper June 2011 19 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforTBEvaccination,"Client is not due for TBE vaccination","""The EnceVir vaccine is not licensed for use in children aged under 3 years1;  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first TBE dose as clients age is less than 3 years. \nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforTBEvaccination,"Client is due for TBE vaccination","""The EnceVir vaccine is licensed for use in people aged 3 years and older.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first TBE dose as no TBE doses have been administered and clients age is more than 3 years.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforTBEvaccination,"Client is not due for TBE vaccination","""The manufacturer of EnceVir recommends 2 doses given at an interval of 5–7 months. For EnceVir\, there is a rapid schedule for emergency situations: an interval of 1–2 months between the first 2 doses.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second TBE dose as the latest dose was administered less than 5 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose """)
* insert SGDecisionTableOutput(DTO.ClientisdueforTBEvaccination,"Client is due for TBE vaccination","""The manufacturer of EnceVir recommends 2 doses given at an interval of 5-7 months.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second TBE dose as the latest dose was administered more than 5 months ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforTBEvaccination,"Client is not due for TBE vaccination","""The recommended interval is 12 months between the second and third doses.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third TBE dose as the latest dose was administered less than 12 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose """)
* insert SGDecisionTableOutput(DTO.ClientisdueforTBEvaccination,"Client is due for TBE vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third TBE dose as the latest dose was administered more than 12 months ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.Clientisnotduefo.f1ec96683f,"Primary series is complete. Client is not due for TBE booster dose","""Further booster doses are recommended at 3-year intervals.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.ClientisdueforTB.bd94866b73,"Primary series is complete. Client is due for TBE booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with TBE booster dose as the primary series has been completed and the latest TBE dose was administered more than 3 years ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.Output,"Output","""Annotations  """)
* insert SGDecisionTableGuidance("""Guidance displayed to health worker """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote,"Clinical judgement is required. Create a clinical note","""The vaccine should be used in pregnant women who live in areas where the incidence of the disease is high > 5 cases/100 000 population per year. In areas where the incidence is moderate or low < 5/100 000 population per year\, the risks and benefits of the vaccine should be considered e.g. health professionals should assess whether a pregnant woman participates in outdoor activities that increase her risk of the disease.  """)
* insert SGDecisionTableGuidance("""Conduct a risk–benefit assessment considering the incidence of the disease\,  consider risks of vaccination and make a clinical judgement. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote,"Clinical judgement is required. Create a clinical note","""–  """)
* insert SGDecisionTableGuidance("""Consider postponing the vaccination if the client has fever > 38.5°C or other signs of serious disease. Consider risks of vaccination and make a clinical judgement. """)
* insert SGDecisionTableOutput(DTO.None,"None","""Note: While vaccines are universally recommended\, some clients may have contraindications to particular vaccines. Additional contraindications may be included in WHO position paper – Vaccines against tick-borne encephalitis: WHO position paper June 2011 19.  """)

