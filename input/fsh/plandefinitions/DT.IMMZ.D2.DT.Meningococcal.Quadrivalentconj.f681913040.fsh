Profile: DT.IMMZ.D2.DT.Meningococcal.Quadrivalentconj.f681913040
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( IMMZ.D2.DT.Meningococcal.Quadrivalentconjuga.b67e5e7efb,"0.2.0)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination","""Quadrivalent conjugate vaccine A\,C\,W135\,Y-CRM should be administered as one single intramuscular dose to individuals aged ≥ 2 years.  """)
* insert SGDecisionTableCondition("Clientsageislessthan2years")
* insert SGDecisionTableGuidance("""Should not vaccinate client with first meningococcal dose as clients age is less than 2 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableCondition("Clientsageislessthan2years")
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination","""  """)
* insert SGDecisionTableCondition("Nomeningococcalprimaryseriesdosewasadministered")
* insert SGDecisionTableCondition("Clientsageismorethanorequalto2years")
* insert SGDecisionTableGuidance("""Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and clients age is within appropriate age range.\nCheck for contraindications. """)
* insert SGDecisionTableCondition("Nomeningococcalprimaryseriesdosewasadministered")
* insert SGDecisionTableCondition("Clientsageismorethanorequalto2years")
* insert SGDecisionTableOutput(DTO.Meningococcalimmunizationscheduleiscomplete,"Meningococcal immunization schedule is complete","""  """)
* insert SGDecisionTableCondition("Onemeningococcalprimaryseriesdosewasadministered")
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. One primary series dose was administered.\nCheck for any other vaccines due. """)
* insert SGDecisionTableCondition("Onemeningococcalprimaryseriesdosewasadministered")
