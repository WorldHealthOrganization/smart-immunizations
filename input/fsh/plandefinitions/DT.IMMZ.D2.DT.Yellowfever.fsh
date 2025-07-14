Profile: DT.IMMZ.D2.DT.Yellowfever
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Yellowfever,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""References """)
* insert SGDecisionTableCitation("""Vaccines and vaccination against yellow fever: WHO position paper June 2013 18 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueforyellowfevervaccination,"Client is not due for yellow fever vaccination","""The vaccine is contraindicated in children aged under 6 months and is not recommended for those aged 6–8 months\, except during epidemics when the risk of infection with the yellow fever virus is very high.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with yellow fever dose as clients age is less than 9 months. Check for any vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueforyellowfevervaccination,"Client is not due for yellow fever vaccination","""As a general rule\, any live vaccine may be given either simultaneously or at an interval of 4 weeks.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with yellow fever dose as live vaccine was administered in the past 4 weeks. \nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforyellowfevervaccination,"Client is due for yellow fever vaccination","""In endemic countries\, it is recommended that yellow fever vaccine be given to children aged 9–12 months at the same time as the measles vaccine. Preventive mass vaccination campaigns are recommended for inhabitants of areas at risk of yellow fever where there is low vaccination coverage.\n\nVaccination should be provided to everyone aged 9 months and older in any area with reported cases.\n\nVaccination should also be offered if the individual is travelling to and from at-risk areas\, if not contraindicated.\n\nAs a general rule\, any live vaccine may be given either simultaneously or at an interval of 4 weeks. Oral poliovirus vaccine may be given at any time in relation to yellow fever vaccination.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with yellow fever dose as no yellow fever dose was administered\, client is within appropriate age range and no live vaccine was administered in the past 4 weeks. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Yellowfeverimmunizationscheduleiscomplete,"Yellow fever immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""Yellow fever immunization schedule is complete. One yellow fever primary series dose was administered. \nCheck for any other vaccines due. """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.Output,"Output","""Annotations  """)
* insert SGDecisionTableGuidance("""Guidance displayed to health worker """)
* insert SGDecisionTableOutput(DTO.Yellowfevervaccinationiscontraindicated,"Yellow fever vaccination is contraindicated","""–  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with yellow fever as yellow fever vaccination is contraindicated in clients aged less than 6 months. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote,"Clinical judgement is required. Create a clinical note","""–  """)
* insert SGDecisionTableGuidance("""Check if exceptions to age range is being met\, consider risks of vaccination and make a clinical judgement. Vaccine is not recommended for those aged 6–8 months\, except during epidemics when the risk of infection with the yellow fever virus is very high. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote,"Clinical judgement is required. Create a clinical note","""While the risk of adverse effects is higher in persons aged ≥60 years\, the overall risk remains low. Based on currently available data\, caution is recommended in vaccinating persons aged ≥60 years against yellow fever. A risk–benefit assessment for yellow fever vaccination should be performed for any person aged ≥60 years who has not been vaccinated and for whom the vaccine is recommended. The risk assessment should take into account the risk of acquiring yellow fever disease e.g. location\, season\, duration of exposure\, occupational and recreational activities\, and local rate of virus transmission in the potential area of exposure versus the risk of a potential adverse event following immunization e.g. age\, underlying medical conditions\, medications.  """)
* insert SGDecisionTableGuidance("""Conduct a risk–benefit assessment taking into account the risk of acquiring yellow fever disease\, consider risks of potential adverse events following immunization and make a clinical judgement. """)
* insert SGDecisionTableOutput(DTO.Yellowfevervaccinationcouldbecontraindic.5af495d355,"Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note","""–  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with yellow fever if client has severe hypersensitivity to egg antigens. """)
* insert SGDecisionTableOutput(DTO.Yellowfevervaccinationiscontraindicated,"Yellow fever vaccination is contraindicated","""Conditions and treatments considered severely immunocompromising include: primary immunodeficiencies\, thymus disorder\, symptomatic HIV infection or CD4+ T cell values < 200 per mm3\, malignant neoplasm treated with chemotherapy\, recent haematopoietic stem cell transplantation\, drugs with known immunosuppressive or immunomodulatory properties e.g. high-dose systemic corticosteroids\, alkylating drugs\, antimetabolites\, TNFα inhibitors\, IL-1 blocking agent or other monoclonal antibodies targeting immune cells\, and current or recent radiation therapies targeting immune cells.  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with yellow fever as yellow fever vaccination is contraindicated in severely immunocompromised clients. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote,"Clinical judgement is required. Create a clinical note","""–  """)
* insert SGDecisionTableGuidance("""Conduct a risk–benefit assessment since yellow fever is a live vaccine and make a clinical judgement. Pregnant women may be vaccinated during epidemics at the direction of local health authorities. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote,"Clinical judgement is required. Create a clinical note","""-  """)
* insert SGDecisionTableGuidance("""Conduct a risk–benefit assessment since yellow fever is a live vaccine and make a clinical judgement. Lactating women should be advised that the benefits of breastfeeding far outweigh alternatives. """)
* insert SGDecisionTableOutput(DTO.None,"None","""Note: While vaccines are universally recommended\, some clients may have contraindications to particular vaccines. Additional contraindications may be included in WHO position paper – Vaccines and vaccination against yellow fever: WHO position paper June 2013 18.  """)

