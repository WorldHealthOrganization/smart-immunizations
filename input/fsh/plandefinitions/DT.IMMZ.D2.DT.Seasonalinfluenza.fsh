Profile: DT.IMMZ.D2.DT.Seasonalinfluenza
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Seasonalinfluenza,0.2.0)

* insert SGDecisionTableCitation("""Vaccines against influenza: WHO position paper May 2022 28 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableCitation("""References """)
* insert SGDecisionTableCitation("""Vaccines against influenza: WHO position paper May 2022 28 """)

* insert SGDecisionTableOutput(DTO.Clientisnotdueforseasonalinfluenzavaccination,"Client is not due for seasonal influenza vaccination","""Influenza vaccines are safe and effective in children from 6 months of age. Children aged under 6 months can be protected through maternal immunization during pregnancy.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with first seasonal influenza dose as clients age is less than 6 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforseasonalinfluenzavaccination,"Client is due for seasonal influenza vaccination","""Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart. A single dose is appropriate for those ≥ 9 years of age and healthy adults.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with first seasonal influenza dose as no seasonal infuenza doses were administered and client is within appropriate age range. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientisnotdueforseasonalinfluenzavaccination,"Client is not due for seasonal influenza vaccination","""Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with second seasonal influenza dose as latest seasonal influenza dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose. """)
* insert SGDecisionTableOutput(DTO.Clientisdueforseasonalinfluenzavaccination,"Client is due for seasonal influenza vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with second seasonal influenza dose as client is within appropriate age range and latest seasonal influenza dose was administerered more than 4 weeks ago.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete.Clientisnotdu.909a9041b0,"The primary series is complete. Client is not due for seasonal influenza annual dose","""A single dose is appropriate for children aged ≥ 9 years and healthy adults. Those who have previously been vaccinated at least once should subsequently receive an annual dose\, as should children and adolescents aged 9 years or over and healthy adults.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with annual dose as the latest seasonal influenza dose was administered less than 1 year ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete.Clientisduefo.041c5bfa9e,"The primary series is complete. Client is due for seasonal influenza annual dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with annual dose as the latest seasonal influenza dose was administered more than 1 year ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete.Clientisnotdu.909a9041b0,"The primary series is complete. Client is not due for seasonal influenza annual dose",""" """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with annual dose as latest seasonal influenza dose was administered less than 1 year ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableOutput(DTO.Theprimaryseriesiscomplete.Clientisduefo.041c5bfa9e,"The primary series is complete. Client is due for seasonal influenza annual dose",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with  annual dose as latest seasonal influenza dose was administered more than 1 year ago. \nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.None,"None",""" """)
* insert SGDecisionTableOutput(DTO.Output,"Output","""Annotations  """)
* insert SGDecisionTableGuidance("""Guidance displayed to health worker """)
* insert SGDecisionTableOutput(DTO.Seasonalinfluenzavaccinationcouldbecontr.1f17932ddc,"Seasonal influenza vaccination could be contraindicated. Clinical judgement is required. Create a clinical note","""People with known egg allergies may be given egg-based influenza vaccine provided they are observed for at least 15 minutes afterwards in a setting where appropriate medical care is available.  """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with seasonal influenza if client has had a severe allergic reaction e.g. anaphylaxis after a previous dose or to a vaccine component. """)
* insert SGDecisionTableOutput(DTO.Seasonalinfluenzavaccinationcouldbecontr.1f17932ddc,"Seasonal influenza vaccination could be contraindicated. Clinical judgement is required. Create a clinical note",""" """)
* insert SGDecisionTableGuidance("""Do not vaccinate client with seasonal influenza if client has had a severe allergic reaction e.g. anaphylaxis after a previous dose or to a vaccine component. """)
* insert SGDecisionTableOutput(DTO.None,"None","""Note: While vaccines are universally recommended\, some clients may have contraindications to particular vaccines. Additional contraindications may be included in WHO position paper for the vaccine – Vaccines against influenza: WHO position paper May 2022 28.  """)

