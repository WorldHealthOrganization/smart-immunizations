Profile: DT.IMMZ.D2.DT.JE.Liveattenuatedvaccine
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.JE.Liveattenuatedvaccine,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for JE vaccination","Client is due for JE vaccination","""""")
* insert SGDecisionTableCondition("No JE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 8 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with JE dose as no JE dose was administered, client is within the appropriate age range and no live vaccine was administered in last 4 weeks. Check for contraindications.""")
* insert SGDecisionTableCondition("No JE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 8 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Client is not due for JE vaccination","Client is not due for JE vaccination","""Live attenuated vaccine: Single dose administered at ≥8 months of age. As a general rule, any live vaccine may be given either simultaneously or at an interval of 4 weeks.""")
* insert SGDecisionTableCondition("No JE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 8 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with JE dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the first JE dose.""")
* insert SGDecisionTableCondition("No JE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 8 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("JE immunization schedule is complete","JE immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("One JE primary series dose was administered")
* insert SGDecisionTableGuidance("""JE immunization schedule is complete. One JE primary series dose was administered. Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One JE primary series dose was administered")
