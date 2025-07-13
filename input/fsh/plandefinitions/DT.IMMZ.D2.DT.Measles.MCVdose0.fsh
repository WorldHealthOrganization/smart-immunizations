Profile: DT.IMMZ.D2.DT.Measles.MCVdose0
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Measles.MCVdose0,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for MCV0","Client is not due for MCV0","""""")
* insert SGDecisionTableCondition("MCV0 was not administered")
* insert SGDecisionTableCondition("Client's age is between 6 months and 9 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with MCV0 as live vaccine was administered in the past 4 weeks. Check for any vaccines due and inform the caregiver of when to come back for MCV0.""")
* insert SGDecisionTableCondition("MCV0 was not administered")
* insert SGDecisionTableCondition("Client's age is between 6 months and 9 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Consider MCV0.","Consider MCV0.","""""")
* insert SGDecisionTableCondition("MCV0 was not administered")
* insert SGDecisionTableCondition("Client's age is between 6 months and 9 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""May vaccinate client with MCV0 as client is within appropriate age range, MCV0 was not administered and no live vaccine was administered in the past 4 weeks. Check if one of the MCV0 specific scenarios is applicable.""")
* insert SGDecisionTableCondition("MCV0 was not administered")
* insert SGDecisionTableCondition("Client's age is between 6 months and 9 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Client is not due for MCV0","Client is not due for MCV0","""""")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 months")
* insert SGDecisionTableGuidance("""Should not vaccinate client with MCV0 as client's age is more than 9 months.
Check measles routine immunization schedule.""")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 months")
* insert SGDecisionTableOutput("Client is not due for MCV0","Client is not due for MCV0","""""")
* insert SGDecisionTableCondition("MCV0 was administered")
* insert SGDecisionTableGuidance("""MCV0 was administered.
Check measles routine immunization schedule.""")
* insert SGDecisionTableCondition("MCV0 was administered")
