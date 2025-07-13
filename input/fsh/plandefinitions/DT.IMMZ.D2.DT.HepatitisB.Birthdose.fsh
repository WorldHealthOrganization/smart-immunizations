Profile: DT.IMMZ.D2.DT.HepatitisB.Birthdose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.HepatitisB.Birthdose,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client should follow delayed-start decision logic","Client should follow delayed-start decision logic","""""")
* insert SGDecisionTableCondition("Hepatitis B birth dose was not administered")
* insert SGDecisionTableCondition("Client's age is more than {Member States defined upper limit}")
* insert SGDecisionTableGuidance("""The client has a delayed start. Please follow the delayed start schedule.""")
* insert SGDecisionTableCondition("Hepatitis B birth dose was not administered")
* insert SGDecisionTableCondition("Client's age is more than {Member States defined upper limit}")
* insert SGDecisionTableOutput("Client is not due for the hepatitis B birth dose","Client is not due for the hepatitis B birth dose","""""")
* insert SGDecisionTableCondition("Hepatitis B birth dose was administered")
* insert SGDecisionTableGuidance("""Hepatitis B birth dose was already administered. Check hepatitis B immunization schedule.""")
* insert SGDecisionTableCondition("Hepatitis B birth dose was administered")
