Profile: DT.IMMZ.D2.DT.HepatitisA.InactivatedHAV1dose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.HepatitisA.InactivatedHAV1dose,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for Hepatitis A vaccination","Client is due for Hepatitis A vaccination","""With a 2-dose schedule, the first dose should be given from ≥ 12 months of age.""")
* insert SGDecisionTableCondition("No hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableGuidance("""Should vaccinate client with hepatitis A dose as no hepatitis A dose was administered and client's age is within appropriate age range.
Check for contraindications.""")
* insert SGDecisionTableCondition("No hepatitis A primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableOutput("Hepatitis A immunization schedule is complete","Hepatitis A immunization schedule is complete","""-""")
* insert SGDecisionTableCondition("One hepatitis A primary series dose was administered")
* insert SGDecisionTableGuidance("""Hepatitis A immunization schedule is complete. One hepatitis A primary series dose was administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One hepatitis A primary series dose was administered")
