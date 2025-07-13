Profile: DT.IMMZ.D2.DT.Meningococcal.Polysaccharidevaccines
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Meningococcal.Polysaccharidevaccines,"Determine required vaccinations",0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables \(March 2023\) \(1\)""")
* insert SGDecisionTableOutput("Client is due for meningococcal vaccination","Client is due for meningococcal vaccination","""""")
* insert SGDecisionTableCondition("No meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than 2 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.
Check for contraindications.""")
* insert SGDecisionTableCondition("No meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than 2 years")
* insert SGDecisionTableOutput("The primary series is complete. Client is not due for meningococcal booster dose.","The primary series is complete. Client is not due for meningococcal booster dose.","""One booster 3–5 years after the primary dose may be given to persons considered to be a continued high risk of exposure, including some health workers.""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered less than 3 years ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 3 years ago.
Check for any other vaccines due and inform the caregiver of when to come back for the booster dose.""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered less than 3 years ago")
* insert SGDecisionTableOutput("The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note","The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note","""""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered more than 3 years ago")
* insert SGDecisionTableCondition("No meningococcal booster dose was administered")
* insert SGDecisionTableGuidance("""May administer meningococcal booster dose if the client is considered to be at continued high risk of exposure. Evaluate the client and use clinical judgement.""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered more than 3 years ago")
* insert SGDecisionTableCondition("No meningococcal booster dose was administered")
* insert SGDecisionTableOutput("Meningococcal immunization schedule is complete","Meningococcal immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered more than 3 years ago")
* insert SGDecisionTableCondition("Meningococcal booster dose was administered")
* insert SGDecisionTableGuidance("""Meningococcal immunization schedule is complete. One primary series dose and one booster dose have been administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One meningococcal primary series dose was administered")
* insert SGDecisionTableCondition("The latest meningococcal dose was administered more than 3 years ago")
* insert SGDecisionTableCondition("Meningococcal booster dose was administered")
