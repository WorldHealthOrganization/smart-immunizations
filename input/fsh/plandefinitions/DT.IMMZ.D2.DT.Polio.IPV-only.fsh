Profile: DT.IMMZ.D2.DT.Polio.IPV-only
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Polio.IPV-only,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforIPVvaccination,"Client is not due for IPV vaccination","""A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age\, with a minimum 4-week interval between doses\, is recommended.  """)
* insert SGDecisionTableGuidance("""Shold not vaccinate client with first IPV dose as clients age is less than 6 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first IPV dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforIPVvaccination,"Client is due for IPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first IPV dose as client is within appropriate age range. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforIPVvaccination,"Client is not due for IPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second IPV dose as the latest IPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforIPVvaccination,"Client is due for IPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second IPV dose as the latest IPV dose was administered more than 4 weeks ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforIPVvaccination,"Client is not due for IPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third IPV dose as the latest IPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver when to come back for the third dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforIPVvaccination,"Client is due for IPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third IPV dose as the latest poliovirus dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Polioimmunizationscheduleiscomplete,"Polio immunization schedule is complete","""If the primary series begins at 6 weeks\, a booster dose should be given 6 months or more after the third dose.  """)
* insert SGDecisionTableGuidance("""Polio immunization schedule is complete as clients age was more than 6 weeks when the primary series was started. Three poliovirus primary series doses were administered. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.Clientisnotduefo.2ba6131350,"Primary series is complete. Client is not due for IPV booster dose",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with IPV booster dose as the latest poliovirus dose was administered less than 6 months ago.\nCheck for any other vaccines due and inform the caregiver when to come back for the booster dose. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.ClientisdueforIP.db4102d0dd,"Primary series is complete. Client is due for IPV booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with IPV booster dose as three poliovirus primary series doses were administered\, clients age was 6 weeks when the primary series was started and the latest poliovirus dose was administered more than 6 months ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Polioimmunizationscheduleiscomplete,"Polio immunization schedule is complete",""" """)
* insert SGDecisionTableGuidance("""Polio immunization schedule is complete. Three poliovirus primary series doses and a booster dose were administered. """)

