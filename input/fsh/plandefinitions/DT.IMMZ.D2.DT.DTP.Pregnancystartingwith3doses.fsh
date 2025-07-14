Profile: DT.IMMZ.D2.DT.DTP.Pregnancystartingwith3doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.DTP.Pregnancystartingwith3doses,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1\nTetanus vaccines: WHO position paper February 2017 7 """)

* insert SGDecisionTableOutput(DTO.Clientisduefortetanusanddiphtheriaboosterdose,"Client is due for tetanus and diphtheria booster dose","""Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth. To provide lifelong protection\, a sixth dose would be needed at least 1 year after the fifth dose\, or during the next pregnancy.\n\nFrom 7 years of age\, only tetanus toxoid with reduced diphtheria toxoid Td combinations should be used. Age-appropriate combinations-containing pertussis vaccine with low-dose diphtheria antigen are also available. Only aP-containing vaccines should be used for vaccination of persons aged 7 years and older.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first tetanus and diphtheria booster dose as three DTP primary series doses were already administered and client is currently pregnant. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefortetanusanddiphtheriaboosterdose,"Client is not due for tetanus and diphtheria booster dose",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second tetanus and diphtheria booster dose. """)
* insert SGDecisionTableOutput(DTO.Clientisduefortetanusanddiphtheriaboosterdose,"Client is due for tetanus and diphtheria booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second tetanus and diphtheria booster dose as client is currently pregnant and the latest tetanus and diphtheria dose was administered more than 4 weeks ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefortetanusanddiphtheriaboosterdose,"Client is not due for tetanus and diphtheria booster dose",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. \nCheck for any other vaccines due and inform the caregiver of when to come back for third tetanus and diphtheria booster dose. """)
* insert SGDecisionTableOutput(DTO.Clientisduefortetanusanddiphtheriaboosterdose,"Client is due for tetanus and diphtheria booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Tetanusanddiphtheriaimmunizationscheduleiscomplete,"Tetanus and diphtheria immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.\nCheck for any other vaccines due. """)

