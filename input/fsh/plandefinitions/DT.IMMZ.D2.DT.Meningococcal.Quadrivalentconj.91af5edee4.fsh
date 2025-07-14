Profile: DT.IMMZ.D2.DT.Meningococcal.Quadrivalentconj.91af5edee4
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Meningococcal.Quadrivalentconj.91af5edee4,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination","""Quadrivalent conjugate vaccines A\,C\,W135\,Y-D and A\,C\,W135\,Y-CRM should be administered as one single intramuscular dose to individuals aged ≥ 2 years.\nA\,C\,W135\,Y-D is also licensed for children aged 9–23 months and given as a 2-dose series 3 months apart\, beginning at 9 months of age.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first meningococcal dose as clients age is less than 9 months. \nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 3 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second meningococcal dose as clients age was less than 23 months when the primary series was started and the latest meningococcal dose was administered more than 3 months ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Meningococcalimmunizationscheduleiscomplete,"Meningococcal immunization schedule is complete",""" """)
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete as clients age was more than 23 months when primary series was started. One primary series dose was administered. \nCheck for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.Meningococcalimmunizationscheduleiscomplete,"Meningococcal immunization schedule is complete",""" """)
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. Two primary series doses were administered. \nCheck for any other vaccines due. """)

