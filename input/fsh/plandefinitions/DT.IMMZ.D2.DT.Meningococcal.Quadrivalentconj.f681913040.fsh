Profile: DT.IMMZ.D2.DT.Meningococcal.Quadrivalentconj.f681913040
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Meningococcal.Quadrivalentconjuga.b67e5e7efb,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for meningococcal vaccination","Client is due for meningococcal vaccination","""""")
* insert SGDecisionTableCondition("No meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 2 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client's age is within appropriate age range.
Check for contraindications.""")
* insert SGDecisionTableCondition("No meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 2 years")
* insert SGDecisionTableOutput("Meningococcal immunization schedule is complete","Meningococcal immunization schedule is complete","""""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. One primary series dose was administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
