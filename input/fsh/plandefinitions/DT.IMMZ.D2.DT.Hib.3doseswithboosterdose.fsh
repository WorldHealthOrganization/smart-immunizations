Profile: DT.IMMZ.D2.DT.Hib.3doseswithboosterdose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Hib.3doseswithboosterdose,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforHibvaccination,"Client is not due for Hib vaccination","""Because serious Hib disease occurs most commonly in children aged 4–18 months\, immunization should start from 6 weeks of age\, or as early as possible thereafter. The interval between doses should be at least 4 weeks if 3 primary doses are given. Hib-containing vaccine is not required for healthy children aged over 5 years.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first Hib dose as client is less than 6 weeks old. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHibvaccination,"Client is due for Hib vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first Hib dose as client is within appropriate age range. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHibvaccination,"Client is not due for Hib vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second Hib dose as latest Hib dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHibvaccination,"Client is due for Hib vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second Hib dose as clients age was less than 1 year when first Hib dose was administered and the latest Hib dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Hibimmunizationscheduleiscomplete,"Hib immunization schedule is complete","""When a first dose is given to a child older than 12 months of age\, only one dose is recommended.  """)
* insert SGDecisionTableGuidance("""Hib immunization schedule is complete as clients age was more than 1 year when first Hib dose was administered.\nCheck for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHibvaccination,"Client is not due for Hib vaccination","""The interval between doses should be at least 4 weeks if 3 primary doses are given. Hib-containing vaccine is not required for healthy children aged over 5 years.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third Hib dose as the latest Hib dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for third dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHibvaccination,"Client is due for Hib vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third Hib dose as client is within appropriate age range and the latest Hib dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.Clientisnotduefo.9da7c6cb7c,"Primary series is complete. Client is not due for Hib booster dose","""Booster doses should be administered at least 6 months after completion of the primary series.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with Hib booster dose as the latest Hib dose was administered less than 6 months ago. Hib primary series is complete. \nCheck for any other vaccines due and inform the caregiver of when to come back for booster dose. """)
* insert SGDecisionTableOutput(DTO.Primaryseriesiscomplete.ClientisdueforHi.92f09369aa,"Primary series is complete. Client is due for Hib booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with Hib booster dose as primary series is complete and the latest Hib dose was administered more than 6 months ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Hibimmunizationscheduleiscomplete,"Hib immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Hib immunization schedule is complete. Three Hib primary series doses and one booster dose have been administered. \nCheck for any vaccines due. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHibvaccination,"Client is not due for Hib vaccination","""–  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with Hib dose as client is more than 5 years old and Hib vaccination is not required for healthy children aged over 5 years. \nCheck for any other vaccines due. """)

