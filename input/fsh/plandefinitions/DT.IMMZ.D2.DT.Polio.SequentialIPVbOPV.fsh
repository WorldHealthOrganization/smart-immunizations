Profile: DT.IMMZ.D2.DT.Polio.SequentialIPVbOPV
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Polio.SequentialIPVbOPV,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for IPV vaccination","Client is due for IPV vaccination","""""")
* insert SGDecisionTableCondition("No poliovirus primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 8 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with first IPV dose as client is within appropriate age range and IPV dose was not administered. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No poliovirus primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 8 weeks")
* insert SGDecisionTableOutput("Client is not due for IPV vaccination","Client is not due for IPV vaccination","""""")
* insert SGDecisionTableCondition("One poliovirus primary series dose was administered")
* insert SGDecisionTableCondition("The latest poliovirus dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second IPV dose as the latest IPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("One poliovirus primary series dose was administered")
* insert SGDecisionTableCondition("The latest poliovirus dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for IPV vaccination","Client is due for IPV vaccination","""""")
* insert SGDecisionTableCondition("One poliovirus primary series dose was administered")
* insert SGDecisionTableCondition("The latest poliovirus dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second IPV dose as the latest IPV dose was administered more than 4 weeks ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("One poliovirus primary series dose was administered")
* insert SGDecisionTableCondition("The latest poliovirus dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for bOPV vaccination","Client is due for bOPV vaccination","""""")
* insert SGDecisionTableCondition("Two poliovirus primary series doses were administered")
* insert SGDecisionTableGuidance("""Should vaccinate client with first bOPV dose as two IPV doses were administered.
Check for contraindications.""")
* insert SGDecisionTableCondition("Two poliovirus primary series doses were administered")
* insert SGDecisionTableOutput("Client is not due for bOPV vaccination","Client is not due for bOPV vaccination","""""")
* insert SGDecisionTableCondition("Three poliovirus primary series doses were administered")
* insert SGDecisionTableCondition("The latest poliovirus dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second bOPV dose as the latest bOPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the next dose""")
* insert SGDecisionTableCondition("Three poliovirus primary series doses were administered")
* insert SGDecisionTableCondition("The latest poliovirus dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for bOPV vaccination","Client is due for bOPV vaccination","""""")
* insert SGDecisionTableCondition("Three poliovirus primary series doses were administered")
* insert SGDecisionTableCondition("The latest poliovirus dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("Three poliovirus primary series doses were administered")
* insert SGDecisionTableCondition("The latest poliovirus dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Primary series is complete","Primary series is complete","""""")
* insert SGDecisionTableCondition("Four poliovirus primary series doses were administered")
* insert SGDecisionTableGuidance("""Poliovirus primary series is complete. Assess if supplementary bOPV dose\(s\) are necessary and create a clinical note.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Four poliovirus primary series doses were administered")
