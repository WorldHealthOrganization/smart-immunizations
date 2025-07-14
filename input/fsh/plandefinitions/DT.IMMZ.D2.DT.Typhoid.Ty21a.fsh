Profile: DT.IMMZ.D2.DT.Typhoid.Ty21a
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Typhoid.Ty21a,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1\nTyphoid vaccines: WHO position paper March 2018 16 """)
* insert SGDecisionTableCitation("""References """)
* insert SGDecisionTableCitation("""Typhoid vaccines: WHO position paper March 2018 16 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforTyphoidvaccination,"Client is not due for Typhoid vaccination","""Countries may consider the routine use of Ty21a vaccine for individuals aged over 6 years.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with typhoid dose as clients age is less than 6 years.\nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforTyphoidvaccination,"Client is due for Typhoid vaccination","""For Ty21a\, a 3-dose oral immunization schedule\, administering the vaccine every second alternate day\, is recommended above 6 years of age. If interruption between doses is > 21 days\, restart primary series.  """)
* insert SGDecisionTableGuidance("""Prescribe the Ty21a primary series if not done yet. Should vaccinate client with typhoid dose as primary series has not been completed and no live vaccines was administered in the past 4 weeks.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforTyphoidvaccination,"Client is not due for Typhoid vaccination","""As a general rule\, any live vaccine may be given either simultaneously or at an interval of 4 weeks.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with typhoid dose as live vaccine was administered in the past 4 weeks.\nCheck for other vaccines due and inform the caregiver or the client when the next dose should be administered. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefortyphoidboosterdose,"Client is not due for typhoid booster dose","""Revaccination is recommended every 3–7 years for Ty21a every 1 to 7 years for travellers from non-endemic to endemic areas\, depending on national policies. As a general rule\, any live vaccine may be given either simultaneously or at an interval of 4 weeks.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with typhoid booster dose as the latest typhoid dose was administered less than 3 years ago.\nCheck for any other vaccines due and inform the caregiver or the client when the next dose should be administered. """)
* insert SGDecisionTableOutput(DTO.Clientisduefortyphoidboosterdose,"Client is due for typhoid booster dose",""" """)
* insert SGDecisionTableGuidance("""Prescribe the Ty21a booster series. Should vaccinate client with typhoid booster dose as primary series has been completed\, the latest typhoid dose was administered more than 3 years ago and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotduefortyphoidboosterdose,"Client is not due for typhoid booster dose",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with typhoid booster dose as live vaccine was administered in the past 4 weeks.\nCheck for any other vaccines due and inform the caregiver or the client when the next dose should be administered """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.Output,"Output","""Annotations  """)
* insert SGDecisionTableGuidance("""Guidance displayed to health worker """)
* insert SGDecisionTableOutput(DTO.Typhoidvaccinationcouldbecontraindicated.a1d4be3b6d,"Typhoid vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.","""–  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with typhoid if client has known hypersensitivity to any component of the vaccine. """)
* insert SGDecisionTableOutput(DTO.TyphoidvaccinationiscontraindicatedforTy.60ec935f65,"Typhoid vaccination is contraindicated for Ty21a vaccine. Clinical judgement is required for Typbar-TCV or ViPS vaccine. Create a clinical note","""–  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with Ty21a vaccine as live attenuated Ty21a vaccine is contraindicated for pregnant clients. For Typbar-TCV or ViPS vaccine\, check if an alternative typhoid vaccine is appropriate for the client\, consider risks of vaccination and make a clinical judgement. """)
* insert SGDecisionTableOutput(DTO.TyphoidvaccinationiscontraindicatedforTy21avaccine.,"Typhoid vaccination is contraindicated for Ty21a vaccine.","""–  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with Ty21a vaccine as Ty21a vaccine is contraindicated for clients who are taking antibiotics. Evaluate if other types of typhoid vacccines can be administered. """)
* insert SGDecisionTableOutput(DTO.TyphoidvaccinationiscontraindicatedforTy21avaccine.,"Typhoid vaccination is contraindicated for Ty21a vaccine.","""Ty21a vaccine can be administered to HIV-infected\, immunologically stable individuals with a CD4 percent > 25% for children aged under 5 years or CD4 count ≥ 200 cells/mm3 if aged 5 years or older.  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with Ty21a vaccine as Ty21a vaccine is contraindicated for HIV-infected client who are not immunologically stable. """)
* insert SGDecisionTableOutput(DTO.None,"None","""Note: While vaccines are universally recommended\, some clients may have contraindications to particular vaccines. Additional contraindications may be included in WHO position paper for the vaccine – Typhoid vaccines: WHO position paper March 2018 16.  """)

