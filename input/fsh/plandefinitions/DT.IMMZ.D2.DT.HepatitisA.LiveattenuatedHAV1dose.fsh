Profile: DT.IMMZ.D2.DT.HepatitisA.LiveattenuatedHAV1dose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.HepatitisA.LiveattenuatedHAV1dose,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for Hepatitis A vaccination","Client is not due for Hepatitis A vaccination","""""")
* insert SGDecisionTableCondition("No hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 18 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with Hepatitis A dose as live vaccine was administered in the last 4 weeks. 
Check for any other vaccines due and inform the caregiver of when to come back for the first dose.""")
* insert SGDecisionTableCondition("No hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 18 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Client is due for Hepatitis A vaccination","Client is due for Hepatitis A vaccination","""""")
* insert SGDecisionTableCondition("No hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 18 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with hepatitis A dose as no Hepatitis A dose was administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 18 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Hepatitis A immunization schedule is complete","Hepatitis A immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("One hepatitis A primary series dose was administered")
* insert SGDecisionTableGuidance("""Hepatitis A immunization schedule is complete. One hepatitis A primary series dose was administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One hepatitis A primary series dose was administered")
