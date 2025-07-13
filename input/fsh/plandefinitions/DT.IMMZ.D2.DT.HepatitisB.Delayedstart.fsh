Profile: DT.IMMZ.D2.DT.HepatitisB.Delayedstart
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.HepatitisB.Delayedstart,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for a hepatitis B vaccination","Client is not due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("One hepatitis B dose was administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("One hepatitis B dose was administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for a hepatitis B vaccination","Client is due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("One hepatitis B dose was administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("One hepatitis B dose was administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Client is not due for a hepatitis B vaccination","Client is not due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("Two hepatitis B doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. Two hepatitis B doses have been administered to the client. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("Two hepatitis B doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is not due for a hepatitis B vaccination","Client is not due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("Two hepatitis B doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableCondition("The first hepatitis B dose was administered less than 6 months ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third hepatitis B dose as the first hepatitis B dose was administered less than 6 months ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("Two hepatitis B doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableCondition("The first hepatitis B dose was administered less than 6 months ago")
* insert SGDecisionTableOutput("Client is due for a hepatitis B vaccination","Client is due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("Two hepatitis B doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableCondition("The first hepatitis B dose was administered more than 6 months ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third hepatitis B dose as the first hepatitis B dose was administered more than 6 months ago and the latest hepatitis B dose was administered more than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Two hepatitis B doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableCondition("The first hepatitis B dose was administered more than 6 months ago")
* insert SGDecisionTableOutput("Hepatitis B immunization schedule is complete","Hepatitis B immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Three hepatitis B doses were administered")
* insert SGDecisionTableGuidance("""Hepatitis B immunization schedule is complete. Three hepatitis B primary series doses were administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three hepatitis B doses were administered")
