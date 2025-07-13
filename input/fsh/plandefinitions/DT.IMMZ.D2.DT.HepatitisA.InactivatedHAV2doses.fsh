Profile: DT.IMMZ.D2.DT.HepatitisA.InactivatedHAV2doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.HepatitisA.InactivatedHAV2doses,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for Hepatitis A vaccination","Client is due for Hepatitis A vaccination","""With a 2-dose schedule, the first dose should be given from ≥ 12 months of age.""")
* insert SGDecisionTableCondition("No hepatitis A primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableGuidance("""Should vaccinate client with first hepatitis A dose as no Hepatitis A doses were administered and client is within the appropriate age range. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No hepatitis A primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableOutput("Client is not due for Hepatitis A vaccination","Client is not due for Hepatitis A vaccination","""The interval between doses is flexible, from 6 months to 4–5 years or more, but is usually 6–18 months.""")
* insert SGDecisionTableCondition("One hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("The latest Hepatitis A dose was administered less than 6 months ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second hepatitis A dose as the latest hepatitis A dose was administered less than 6 months ago. 
Check for any vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("The latest Hepatitis A dose was administered less than 6 months ago")
* insert SGDecisionTableOutput("Client is due for Hepatitis A vaccination","Client is due for Hepatitis A vaccination","""""")
* insert SGDecisionTableCondition("One hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("The latest Hepatitis A dose was administered more than 6 months ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second hepatitis A dose as the latest hepatitis A dose was administered more than 6 months ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("One hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("The latest Hepatitis A dose was administered more than 6 months ago")
* insert SGDecisionTableOutput("Hepatitis A immunization schedule is complete","Hepatitis A immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Two hepatitis A primary series doses were administered")
* insert SGDecisionTableGuidance("""Hepatitis A immunization schedule is complete. Two hepatitis A primary series doses were administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Two hepatitis A primary series doses were administered")
