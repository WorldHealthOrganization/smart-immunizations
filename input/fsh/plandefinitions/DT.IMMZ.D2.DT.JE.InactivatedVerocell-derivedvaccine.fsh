Profile: DT.IMMZ.D2.DT.JE.InactivatedVerocell-derivedvaccine
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.JE.InactivatedVerocell-derivedvaccine,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for JE vaccination","Client is due for JE vaccination","""""")
* insert SGDecisionTableCondition("No JE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 6 months")
* insert SGDecisionTableGuidance("""Should vaccinate client with first JE dose as no JE doses were administered and client is within the appropriate age range. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No JE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 6 months")
* insert SGDecisionTableOutput("Client is not due for JE vaccination","Client is not due for JE vaccination","""""")
* insert SGDecisionTableCondition("One JE primary series dose was administered")
* insert SGDecisionTableCondition("The latest JE dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second JE dose as the latest JE dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver when to come back for the second JE dose.""")
* insert SGDecisionTableCondition("One JE primary series dose was administered")
* insert SGDecisionTableCondition("The latest JE dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for JE vaccination","Client is due for JE vaccination","""""")
* insert SGDecisionTableCondition("One JE primary series dose was administered")
* insert SGDecisionTableCondition("The latest JE dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second JE dose as the latest JE dose was administered more than 4 weeks ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("One JE primary series dose was administered")
* insert SGDecisionTableCondition("The latest JE dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("JE immunization schedule is complete","JE immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Two JE primary series doses were administered")
* insert SGDecisionTableGuidance("""JE immunization schedule is complete. Two JE primary series doses were administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Two JE primary series doses were administered")
