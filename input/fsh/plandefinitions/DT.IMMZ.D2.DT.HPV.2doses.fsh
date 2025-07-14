Profile: DT.IMMZ.D2.DT.HPV.2doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.HPV.2doses,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination","""The current evidence supports the recommendation that a 2-dose schedule be used in the primary target group from 9 years of age and for all older age groups for which HPV vaccines are licensed.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first HPV dose as clients age is less than 9 years. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination","""The WHO-recommended primary target population for HPV vaccination is girls aged 9–14 years. Prevention of cervical cancer is best achieved through the immunization of girls before they become sexually active.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first HPV dose as no HPV doses were administered\, client is female and within appropriate age range. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote.,"Clinical judgement is required. Create a clinical note.","""Vaccination of secondary target populations e.g. females aged ≥15 years\, boys\, older males or men who have sex with men is recommended only if this is feasible and affordable\, and does not divert resources from vaccination of the primary target population or effective cervical cancer screening programmes.  """)
* insert SGDecisionTableGuidance("""Member States should update this guidance according to the national immunization programme. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote.,"Clinical judgement is required. Create a clinical note.",""" """)
* insert SGDecisionTableGuidance("""Member States should update this guidance according to the national immunization programme. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination","""The minimum interval between first and second dose is 6 months. A 12-month schedule results in higher geometric mean titres GMTs and is suggested for programmatic and efficiency reasons.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second HPV dose as the latest HPV dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second HPV dose as the latest HPV dose was administered more than 6 months ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination","""Individuals known to be immunocompromised or infected with HIV regardless of age or antiretroviral therapy status should receive at least two HPV vaccine doses minimum 6 months interval and\, where possible\, three doses.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate for third HPV dose as the latest HPV dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate for third HPV dose as client is HIV positive and the latest HPV dose was administered more than 6 months ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforHPVvaccination,"Client is not due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate for third HPV dose as the latest HPV dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforHPVvaccination,"Client is due for HPV vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate for third HPV dose as client is immunocompromised and the latest HPV dose was administered more than 6 months ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.HPVimmunizationscheduleiscomplete,"HPV immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""HPV immunization schedule is complete. Two HPV primary series doses were administered. \nCheck for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.HPVimmunizationscheduleiscomplete,"HPV immunization schedule is complete",""" """)
* insert SGDecisionTableGuidance("""HPV immunization schedule is complete. Three HPV primary series doses were administered. \nCheck for any other vaccines due. """)

