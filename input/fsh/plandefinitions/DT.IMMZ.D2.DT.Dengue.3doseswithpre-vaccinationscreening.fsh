Profile: DT.IMMZ.D2.DT.Dengue.3doseswithpre-vaccinationscreening
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Dengue.3doseswithpre-vaccinationscreening,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotduefordenguevaccination,"Client is not due for dengue vaccination","""Currently\, the dengue vaccine should be used within the indicated age range\, which in most countries is 9–45 years.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first dengue dose as clients age is less than 9 years. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefordenguevaccination,"Client is not due for dengue vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first dengue dose as clients age is more than 45 years. \nCheck for any vaccines due. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefordenguevaccination,"Client is not due for dengue vaccination","""Because of the excess risk of hospitalized dengue identified among seronegative trial participants who became infected after vaccination\, the WHO Global Advisory Committee on Vaccine Safety GACVS concluded that individuals who have not been infected with the wild dengue virus i.e. who are seronegative should not be vaccinated with CYD-TDV Dengvaxia.\n\nIf pre-vaccination screening is not feasible\, vaccination without individual screening could be considered in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years. Communication needs to ensure appropriate and full disclosure of the risks of vaccination of persons with unknown serostatus.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first dengue dose as client does not have evidence of past dengue infection. \nCheck for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.Clientisduefordenguevaccination,"Client is due for dengue vaccination","""Pre-vaccination screening is necessary to avoid vaccinating truly seronegative persons.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first dengue dose as no dengue doses were administered\, client is within appropriate age range and has evidence of past dengue infection. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefordenguevaccination,"Client is not due for dengue vaccination","""CYD-TDV is recommended as a 3-dose series given 6 months apart. Should a vaccine dose be delayed for any reason\, it is not necessary to restart the course and the next dose in the series should be administered as soon as possible.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second dengue dose as latest dengue dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.Clientisduefordenguevaccination,"Client is due for dengue vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second dengue dose as the latest dengue dose was administered more than 6 months ago and client has evidence of past dengue infection. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefordenguevaccination,"Client is not due for dengue vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third dengue dose as latest dengue vaccine was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose. """)
* insert SGDecisionTableOutput(DTO.Clientisduefordenguevaccination,"Client is due for dengue vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third dengue dose as latest dengue dose was administered more than 6 months ago and client has evidence of past dengue infection. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Dengueimmunizationscheduleiscomplete,"Dengue immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Dengue immunization schedule is complete. Three dengue primary series doses were administered. \nCheck for any other vaccines due. """)

