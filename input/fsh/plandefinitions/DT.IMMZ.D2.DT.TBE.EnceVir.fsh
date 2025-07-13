Profile: DT.IMMZ.D2.DT.TBE.EnceVir
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.TBE.EnceVir,"Determine required vaccinations",0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables \(March 2023\) \(1\)""")
* insert SGDecisionTableOutput("Client is due for TBE vaccination","Client is due for TBE vaccination","""The EnceVir vaccine is licensed for use in people aged 3 years and older.""")
* insert SGDecisionTableCondition("No TBE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 3 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with first TBE dose as no TBE doses have been administered and client's age is more than 3 years.
Check for contraindications.""")
* insert SGDecisionTableCondition("No TBE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 3 years")
* insert SGDecisionTableOutput("Client is not due for TBE vaccination","Client is not due for TBE vaccination","""The manufacturer of EnceVir recommends 2 doses given at an interval of 5–7 months. For EnceVir, there is a rapid schedule for emergency situations: an interval of 1–2 months between the first 2 doses.""")
* insert SGDecisionTableCondition("One TBE primary series dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 5 months ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second TBE dose as the latest dose was administered less than 5 months ago. 
Check for any vaccines due and inform the caregiver of when to come back for the next dose""")
* insert SGDecisionTableCondition("One TBE primary series dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 5 months ago")
* insert SGDecisionTableOutput("Client is due for TBE vaccination","Client is due for TBE vaccination","""The manufacturer of EnceVir recommends 2 doses given at an interval of 5-7 months.""")
* insert SGDecisionTableCondition("One TBE primary series dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 5 months ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second TBE dose as the latest dose was administered more than 5 months ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("One TBE primary series dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 5 months ago")
* insert SGDecisionTableOutput("Client is not due for TBE vaccination","Client is not due for TBE vaccination","""The recommended interval is 12 months between the second and third doses.""")
* insert SGDecisionTableCondition("Two TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 12 months ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third TBE dose as the latest dose was administered less than 12 months ago. 
Check for any vaccines due and inform the caregiver of when to come back for the next dose""")
* insert SGDecisionTableCondition("Two TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 12 months ago")
* insert SGDecisionTableOutput("Client is due for TBE vaccination","Client is due for TBE vaccination","""""")
* insert SGDecisionTableCondition("Two TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 12 months ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third TBE dose as the latest dose was administered more than 12 months ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("Two TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 12 months ago")
* insert SGDecisionTableOutput("Primary series is complete. Client is not due for TBE booster dose","Primary series is complete. Client is not due for TBE booster dose","""Further booster doses are recommended at 3-year intervals.""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 3 years ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 3 years ago")
* insert SGDecisionTableOutput("Primary series is complete. Client is due for TBE booster dose","Primary series is complete. Client is due for TBE booster dose","""""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 3 years ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with TBE booster dose as the primary series has been completed and the latest TBE dose was administered more than 3 years ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 3 years ago")
