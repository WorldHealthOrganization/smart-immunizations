Profile: DT.IMMZ.D2.DT.Polio.Birthdose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Polio.Birthdose,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for the bOPV birth dose","Client is not due for the bOPV birth dose","""""")
* insert SGDecisionTableCondition("bOPV birth dose \(a zero dose\) was not administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 1 week")
* insert SGDecisionTableGuidance("""Should not vaccinate client with bOPV birth dose \(a zero dose\) as client's age is more than or equal to 1 week. Check for any other vaccines due and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("bOPV birth dose \(a zero dose\) was not administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 1 week")
* insert SGDecisionTableOutput("Client is not due for the bOPV birth dose","Client is not due for the bOPV birth dose","""""")
* insert SGDecisionTableCondition("bOPV birth dose \(a zero dose\) was administered")
* insert SGDecisionTableGuidance("""Poliovirus birth dose was already administered. Check poliovirus immunization schedule.""")
* insert SGDecisionTableCondition("bOPV birth dose \(a zero dose\) was administered")
