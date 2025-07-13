Profile: DT.IMMZ.D2.DT.Malaria
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Malaria,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for malaria vaccination","Client is due for malaria vaccination","""""")
* insert SGDecisionTableCondition("No malaria primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 5 months")
* insert SGDecisionTableGuidance("""Should vaccinate client with first malaria dose as no malaria doses were administered and client is within appropriate age range. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No malaria primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 5 months")
* insert SGDecisionTableOutput("Client is not due for malaria vaccination","Client is not due for malaria vaccination","""The vaccine should be administered in a 3-dose primary schedule, with a fourth dose provided approximately 12–18 months after the third dose to prolong the duration of protection. There should be a minimum interval of 4 weeks between doses.""")
* insert SGDecisionTableCondition("One malaria primary series dose was administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second malaria dose as the latest malaria dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One malaria primary series dose was administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for malaria vaccination","Client is due for malaria vaccination","""""")
* insert SGDecisionTableCondition("One malaria primary series dose was administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second malaria dose as the latest malaria dose was administered more than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("One malaria primary series dose was administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Client is not due for malaria vaccination","Client is not due for malaria vaccination","""""")
* insert SGDecisionTableCondition("Two malaria primary series doses were administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third malaria dose as the latest malaria dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the third dose.""")
* insert SGDecisionTableCondition("Two malaria primary series doses were administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for malaria vaccination","Client is due for malaria vaccination","""""")
* insert SGDecisionTableCondition("Two malaria primary series doses were administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third malaria dose as the latest malaria dose was administered more than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Two malaria primary series doses were administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Client is not due for malaria vaccination","Client is not due for malaria vaccination","""""")
* insert SGDecisionTableCondition("Three malaria primary series doses were administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with fourth malaria dose as the latest malaria dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the fourth dose.""")
* insert SGDecisionTableCondition("Three malaria primary series doses were administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for malaria vaccination","Client is due for malaria vaccination","""""")
* insert SGDecisionTableCondition("Three malaria primary series doses were administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with fourth malaria dose as the latest malaria dose was administered more than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Three malaria primary series doses were administered")
* insert SGDecisionTableCondition("The latest malaria dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Malaria immunization schedule is complete","Malaria immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Four malaria primary series doses were administered")
* insert SGDecisionTableGuidance("""Malaria immunization schedule is complete. Four malaria primary series doses were administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Four malaria primary series doses were administered")
