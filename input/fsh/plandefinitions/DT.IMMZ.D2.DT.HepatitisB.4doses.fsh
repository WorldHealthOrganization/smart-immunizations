Profile: DT.IMMZ.D2.DT.HepatitisB.4doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.HepatitisB.4doses,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for a hepatitis B vaccination","Client is due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("No hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to {Member States defined lower limit}")
* insert SGDecisionTableGuidance("""Should vaccinate client with first hepatitis B dose as client's age is within appropriate age range.
Check for contraindications.""")
* insert SGDecisionTableCondition("No hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to {Member States defined lower limit}")
* insert SGDecisionTableOutput("Client is not due for a hepatitis B vaccination","Client is not due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("One hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago.
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for a hepatitis B vaccination","Client is due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("One hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered more than 4 weeks ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("One hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Client is not due for a hepatitis B vaccination","Client is not due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("Two hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago.
Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.""")
* insert SGDecisionTableCondition("Two hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for a hepatitis B vaccination","Client is due for a hepatitis B vaccination","""""")
* insert SGDecisionTableCondition("Two hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("Two hepatitis B primary series doses were administered")
* insert SGDecisionTableCondition("The latest hepatitis B dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Hepatitis B immunization schedule is complete","Hepatitis B immunization schedule is complete","""-""")
* insert SGDecisionTableCondition("Three hepatitis B primary series doses were administered")
* insert SGDecisionTableGuidance("""The hepatitis B immunization schedule is complete. Three hepatitis B primary series doses were administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three hepatitis B primary series doses were administered")
