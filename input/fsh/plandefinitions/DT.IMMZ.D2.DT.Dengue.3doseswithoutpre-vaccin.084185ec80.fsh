Profile: DT.IMMZ.D2.DT.Dengue.3doseswithoutpre-vaccin.084185ec80
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Dengue.3doseswithoutpre-vaccinationscreening,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for dengue vaccination","Client is not due for dengue vaccination","""""")
* insert SGDecisionTableCondition("Client's age is more than 45 years")
* insert SGDecisionTableGuidance("""Should not vaccinate client with first dengue dose as client's age is more than 45 years. 
Check for any vaccines due.""")
* insert SGDecisionTableCondition("Client's age is more than 45 years")
* insert SGDecisionTableOutput("Client is due for dengue vaccination","Client is due for dengue vaccination","""If pre-vaccination screening is not feasible, vaccination without individual screening could be considered in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years. Communication needs to ensure appropriate and full disclosure of the risks of vaccination of persons with unknown serostatus.""")
* insert SGDecisionTableCondition("No dengue primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with first dengue dose as no dengue doses were administered and client is within appropriate age range. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No dengue primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableOutput("Client is not due for dengue vaccination","Client is not due for dengue vaccination","""CYD-TDV is recommended as a 3-dose series given 6 months apart. Should a vaccine dose be delayed for any reason, it is not necessary to restart the course and the next dose in the series should be administered as soon as possible.""")
* insert SGDecisionTableCondition("One dengue primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableCondition("The latest dengue dose was administered less than 6 months ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second dengue dose as latest dengue dose was administered less than 6 months ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One dengue primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableCondition("The latest dengue dose was administered less than 6 months ago")
* insert SGDecisionTableOutput("Client is due for dengue vaccination","Client is due for dengue vaccination","""""")
* insert SGDecisionTableCondition("One dengue primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableCondition("The latest dengue dose was administered more than 6 months ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second dengue dose as latest dengue dose was administered more than 6 months ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("One dengue primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableCondition("The latest dengue dose was administered more than 6 months ago")
* insert SGDecisionTableOutput("Client is not due for dengue vaccination","Client is not due for dengue vaccination","""""")
* insert SGDecisionTableCondition("Two dengue primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableCondition("The latest dengue dose was administered less than 6 months ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third dengue dose as latest dengue vaccine was administered less than 6 months ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the third dose.""")
* insert SGDecisionTableCondition("Two dengue primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableCondition("The latest dengue dose was administered less than 6 months ago")
* insert SGDecisionTableOutput("Client is due for dengue vaccination","Client is due for dengue vaccination","""""")
* insert SGDecisionTableCondition("Two dengue primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableCondition("The latest dengue dose was administered more than 6 months ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third dengue dose as latest dengue dose was administered more than 6 months ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Two dengue primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableCondition("The latest dengue dose was administered more than 6 months ago")
* insert SGDecisionTableOutput("Dengue immunization schedule is complete","Dengue immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Three dengue primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
* insert SGDecisionTableGuidance("""Dengue immunization schedule is complete. Three dengue primary series doses were administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three dengue primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 9 years and 45 years")
