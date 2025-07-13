Profile: DT.IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine2doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine2doses,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for meningococcal vaccination","Client is due for meningococcal vaccination","""""")
* insert SGDecisionTableCondition("No meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 3 months")
* insert SGDecisionTableGuidance("""Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.
Check for contraindications.""")
* insert SGDecisionTableCondition("No meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 3 months")
* insert SGDecisionTableOutput("Client is not due for meningococcal vaccination","Client is not due for meningococcal vaccination","""""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered less than 8 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 8 weeks ago.
Check for any vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered less than 8 weeks ago")
* insert SGDecisionTableOutput("Client is due for meningococcal vaccination","Client is due for meningococcal vaccination","""""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered more than 8 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second meningococcal dose as the latest meningococcal dose was administered more than 8 weeks ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered more than 8 weeks ago")
* insert SGDecisionTableOutput("Meningococcal immunization schedule is complete","Meningococcal immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Two meningococcal primary series doses were administered")
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. Two meningococcal primary series doses were administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Two meningococcal primary series doses were administered")
