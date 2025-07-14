Profile: DT.IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine1dose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine1dose,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1\nMeningococcal A conjugate vaccine: updated guidance Feburary 2015 21 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination","""For MenA conjugate vaccine 5µg\, a 1-dose schedule is recommended at 9–18 months of age based on local programmatic and epidemiologic considerations. \nAny children who miss vaccination at the recommended age should be vaccinated as soon as possible thereafter.\nMenAfriVac 5 µg should be used for routine immunization of infants and young children aged 3 to 24 months. \nMenAfriVac 10 µg should be used for catch-up and periodic campaigns from 12 months of age onwards.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with meningococcal dose as clients age is under 9 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with meningococcal dose as no meningococcal dose was administered and client is within appropriate age range. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Meningococcalimmunizationscheduleiscomplete,"Meningococcal immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. One meningococcal primary series dose was administered. \nCheck for any other vaccines due. """)

