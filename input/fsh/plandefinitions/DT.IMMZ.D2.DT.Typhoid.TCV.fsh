Profile: DT.IMMZ.D2.DT.Typhoid.TCV
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.Typhoid.TCV,0.2.0)

* insert SGDecisionTableCitation("""Typhoid vaccines: WHO position paper March 2018 16 """)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforTyphoidvaccination,"Client is not due for Typhoid vaccination","""WHO recommends the TCV as a 0.5 mL single dose for infants and children from 6 months of age.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with typhoid dose as clients age is less than 6 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforTyphoidvaccination,"Client is due for Typhoid vaccination","""WHO recommends the TCV as a 0.5 mL single dose for infants and children from 6 months of age and in adults up to 45 years in typhoid endemic regions.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with typhoid dose as no typhoid doses were administered and client is within appropriate age range.\nCheck for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clinicaljudgementisrequired.Createaclinicalnote,"Clinical judgement is required. Create a clinical note",""" """)
* insert SGDecisionTableGuidance("""Member States should update this action according to the national immunization programme. """)
* insert SGDecisionTableOutput(DTO.Typhoidimmunizationscheduleiscomplete,"Typhoid immunization schedule is complete","""Routine typhoid immunization schedule is complete. The potential need for revaccination with TCV is currently unclear.  """)
* insert SGDecisionTableGuidance("""Typhoid immunization schedule is complete. One typhoid primary series dose was administered.\nCheck for any other vaccines due. """)

