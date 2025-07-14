Profile: DT.IMMZ.D2.DT.DTP.Pregnancystartingwith4doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.DTP.Pregnancystartingwith4doses,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1\nTetanus vaccines: WHO position paper February 2017 7 """)
* insert SGDecisionTableCitation("""References """)
* insert SGDecisionTableCitation("""Pertussis  vaccines: WHO position paper August 2015 6\nTetanus vaccines: WHO position paper February 2017 7 """)
* insert SGDecisionTableCitation("""Tetanus vaccines: WHO position paper February 2017 7 """)

* insert SGDecisionTableOutput(DTO.Clientisduefortetanusanddiphtheriaboosterdose,"Client is due for tetanus and diphtheria booster dose","""Pregnant women who received 4 tetanus-containing vaccines doses during childhood or pre-adulthood need only 1 booster dose\, which should be given at the first opportunity. To provide lifelong protection\, a sixth dose would be needed at least 1 year after the fifth dose\, or during the next pregnancy.\n\nFrom 7 years of age\, only tetanus toxoid with reduced diphtheria toxoid Td combinations should be used. Age-appropriate combinations-containing pertussis vaccine with reduced diphtheria toxoid are also available. Only acellular pertussis aP-containing vaccines should be used for vaccination of persons aged 7 years and older.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second tetanus and diphtheria booster dose as three DTP primary series doses and one tetanus and diphtheria booster dose were administered and client is currently pregnant. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefortetanusanddiphtheriaboosterdose,"Client is not due for tetanus and diphtheria booster dose",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. \nCheck for any other vaccines due and inform the caregiver of when to come back for third tetanus and diphtheria booster dose. """)
* insert SGDecisionTableOutput(DTO.Clientisduefortetanusanddiphtheriaboosterdose,"Client is due for tetanus and diphtheria booster dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Tetanusanddiphtheriaimmunizationscheduleiscomplete,"Tetanus and diphtheria immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.\nCheck for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.Output,"Output","""Annotations  """)
* insert SGDecisionTableGuidance("""Guidance displayed to health worker """)
* insert SGDecisionTableOutput(DTO.Tetanusandpertussisvaccinationcouldbecon.489dda25bd,"Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note","""Tetanus: A severe anaphylactic reaction to a vaccine component or following a prior dose of tetanus-containing vaccines is a contraindication to receive tetanus-containing vaccines.\n\nPertussis: Except in those who have experienced a rare anaphylactic reaction following administration of whole-cell pertussis wP or acellular pertussis aP vaccines\, there are no contraindications for the use of these vaccines.  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with pertussis and/or tetanus if the client has had a severe anaphylactic reaction to a vaccine component or reaction following a prior dose. """)
* insert SGDecisionTableOutput(DTO.Tetanusvaccinationiscontraindicated,"Tetanus vaccination is contraindicated","""A severe acute illness should lead to delaying vaccination\, but a minor or moderate illness should not.  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with tetanus as tetanus vaccination is contraindicated for clients with severe acute illness """)
* insert SGDecisionTableOutput(DTO.None,"None","""Note: While vaccines are universally recommended\, some clients may have contraindications to particular vaccines. Additional contraindications may be included in WHO position papers for the vaccine – Pertussis  vaccines: WHO position paper August 2015 6 and Tetanus vaccines: WHO position paper February 2017 7.  """)

