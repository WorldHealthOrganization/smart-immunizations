Profile: DT.IMMZ.D2.DT.Meningococcal.MonovalentMenCco.8355565df4
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Meningococcal.MonovalentMenCco.8355565df4,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 \nMeningococcal vaccines: WHO position paper November 2011 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination","""Children aged 2–11 months require 2 doses administered.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first meningococcal dose as clients age is under 2 months. Check for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination","""For monovalent MenC conjugate vaccine\, one single intramuscular dose is recommended for children aged ≥ 12 months\, teenagers and adults. Children aged 2–11 months require 2 doses administered.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client is within appropriate age range.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination","""Children aged 2–11 months require 2 doses administered at an interval of at least 2 months.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 2 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueformeningococcalvaccination,"Client is due for meningococcal vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second meningococcal dose as client was less than 11 months when primary series was started and latest meningococcal dose was administered more than 2 months ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Meningococcalimmunizationscheduleiscomplete,"Meningococcal immunization schedule is complete","""For monovalent MenC conjugate vaccine\, one single intramuscular dose is recommended for children aged ≥ 12 months\, teenagers and adults.\nIt is not yet known whether booster doses will be needed for long-term protection in healthy individuals who received primary vaccination when aged ≥ 12 months.  """)
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete as clients age was more than 11 months when primary series was started. One primary series dose was administered. Check for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueformeningococcalvaccination,"Client is not due for meningococcal vaccination","""Children aged 2–11 months require 2 doses administered at an interval of at least 2 months and a booster about 1 year after.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 1 year ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete.Clientisduefo.735fd5cd82,"The primary series is complete. Client is due for meningococcal booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with Meningococcal booster dose as no meningococcal booster dose was administered and the latest meningococcal dose was administered more than 1 year ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Meningococcalimmunizationscheduleiscomplete,"Meningococcal immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. Two primary series doses and one booster dose were administered. \nCheck for any vaccines due. """)

