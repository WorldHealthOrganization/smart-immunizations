Profile: DT.IMMZ.D2.DT.HPV.Singledose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.HPV.Singledose,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination","""As an off-label option\, a single-dose schedule can be used in girls and boys aged 9–20 years.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first HPV dose as clients age is less than 9 years. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first HPV dose as no HPV doses were administered and client is within appropriate age range. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote.,"Clinical judgement is required. Create a clinical note.",""" """)
* insert SGDecisionTableGuidance("""Member States should update this action according to the national immunization programme. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination","""Individuals known to be immunocompromised or infected with HIV regardless of age or antiretroviral therapy status should receive at least two HPV vaccine doses minimum 6 months interval and\, where possible\, three doses.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second HPV dose as the latest HPV dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second HPV dose as client is HIV positive and the latest HPV dose was administered more than 6 months ago. \nCheck for contraindications """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second HPV dose as the latest HPV dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second HPV dose as client is immunocompromised and the latest HPV dose was administered more than 6 months ago. \nCheck for contraindications """)
* insert SGDecisionTableOutput(DTO.HPVimmunizationscheduleiscomplete,"HPV immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""HPV immunization schedule is complete. One HPV primary series dose was administered. \nCheck for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination","""Individuals known to be immunocompromised or infected with HIV regardless of age or antiretroviral therapy status should receive at least two HPV vaccine doses minimum 6 months interval and\, where possible\, three doses.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third HPV dose as the latest HPV dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third HPV dose as client is HIV positive and the latest HPV dose was administered more than 6 months ago. \nCheck for contraindications """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with third HPV dose as the latest HPV dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with third HPV dose as client is immunocompromised and the latest HPV dose was administered more than 6 months ago. \nCheck for contraindications """)
* insert SGDecisionTableOutput(DTO.HPVimmunizationscheduleiscomplete,"HPV immunization schedule is complete","""-  """)
* insert SGDecisionTableGuidance("""HPV immunization schedule is complete. Three HPV primary series doses were administered. \nCheck for any other vaccines due. """)

