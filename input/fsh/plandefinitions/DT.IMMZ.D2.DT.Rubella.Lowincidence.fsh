Profile: DT.IMMZ.D2.DT.Rubella.Lowincidence
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Rubella.Lowincidence,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for rubella vaccination","Client is due for rubella vaccination","""The first dose of rubella-containing vaccine can be delivered at 12 months of age, due to a low level of measles virus transmission.""")
* insert SGDecisionTableCondition("No rubella primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with rubella dose as no rubella doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No rubella primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Client is not due for rubella vaccination","Client is not due for rubella vaccination","""Live vaccines should be given either simultaneously with rubella-containing vaccines, or at least 4 weeks apart. An exception to this is oral poliovirus vaccine, which can be given at any time before or after rubella-containing vaccines without interfering in the response to either vaccine. WHO recommends co-administration of rubella-containing vaccine and yellow fever-containing vaccines.""")
* insert SGDecisionTableCondition("No rubella primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last the 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with rubella dose as live vaccine was administered in the last 4 weeks. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("No rubella primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last the 4 weeks")
* insert SGDecisionTableOutput("Rubella immunization schedule is complete","Rubella immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("One rubella primary series dose was administered")
* insert SGDecisionTableGuidance("""Rubella immunization schedule is complete. One rubella primary series dose was administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One rubella primary series dose was administered")
