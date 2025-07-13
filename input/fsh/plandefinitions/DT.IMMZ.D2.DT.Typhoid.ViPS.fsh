Profile: DT.IMMZ.D2.DT.Typhoid.ViPS
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Typhoid.ViPS,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for Typhoid vaccination","Client is due for Typhoid vaccination","""""")
* insert SGDecisionTableCondition("No typhoid primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 2 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with typhoid dose as no typhoid doses were administered and client is within appropriate age range.
Check for contraindications.""")
* insert SGDecisionTableCondition("No typhoid primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 2 years")
* insert SGDecisionTableOutput("Primary series is complete. Client is not due for typhoid booster dose","Primary series is complete. Client is not due for typhoid booster dose","""–""")
* insert SGDecisionTableCondition("One typhoid primary series dose was administered")
* insert SGDecisionTableCondition("The latest typhoid dose was administered less than 3 years ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with typhoid booster dose as the latest typhoid dose was administered less than 3 years ago.
Check for any other vaccines due and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("One typhoid primary series dose was administered")
* insert SGDecisionTableCondition("The latest typhoid dose was administered less than 3 years ago")
* insert SGDecisionTableOutput("Primary series is complete. Client is due for typhoid booster dose","Primary series is complete. Client is due for typhoid booster dose","""Revaccination is recommended every 3 years for ViPS.""")
* insert SGDecisionTableCondition("One typhoid primary series dose was administered")
* insert SGDecisionTableCondition("The latest typhoid dose was administered more than 3 years ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with typhoid booster dose as the latest dose was administered more than 3 years ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("One typhoid primary series dose was administered")
* insert SGDecisionTableCondition("The latest typhoid dose was administered more than 3 years ago")
