Profile: DT.IMMZ.D2.DT.Meningococcal.Polysaccharidevaccines
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Meningococcal.Polysaccharidevaccines,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination","""Polysaccharide vaccines should be administered to individuals aged ≥ 2 years as one single dose.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first meningococcal dose as clients age is less than 2 years. Check for any other vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete.Clientisnotdu.bfb6550297,"The primary series is complete. Client is not due for meningococcal booster dose.","""One booster 3–5 years after the primary dose may be given to persons considered to be a continued high risk of exposure\, including some health workers.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 3 years ago.\nCheck for any other vaccines due and inform the caregiver of when to come back for the booster dose. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete.Clinicaljudge.77268b793a,"The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note",""" """)
* insert SGDecisionTableGuidance("""May administer meningococcal booster dose if the client is considered to be at continued high risk of exposure. Evaluate the client and use clinical judgement. """)
* insert SGDecisionTableOutput(DTO.Meningococcalimmunizationscheduleiscomplete,"Meningococcal immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. One primary series dose and one booster dose have been administered.\nCheck for any other vaccines due. """)

