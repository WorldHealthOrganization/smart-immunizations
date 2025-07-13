Profile: DT.IMMZ.D2.DT.Mumps
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Mumps,"Determine required vaccinations",0.2.0)

* insert SGDecisionTableCitation("""Mumps virus vaccines: WHO position paper \(February 2007\) \(27\)""")
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables \(March 2023\) \(1\)""")
* insert SGDecisionTableOutput("Client is not due for mumps vaccination","Client is not due for mumps vaccination","""""")
* insert SGDecisionTableCondition("No mumps primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with first mumps dose as live vaccine was administered in the past 4 weeks.
Check for any other vaccines due and inform the caregiver of when to come back for first dose.""")
* insert SGDecisionTableCondition("No mumps primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableOutput("Client is due for mumps vaccination","Client is due for mumps vaccination","""""")
* insert SGDecisionTableCondition("No mumps primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with first mumps dose as the client is within appropriate age range and no live vaccine was administered in the past 4 weeks.
Check for contraindications.""")
* insert SGDecisionTableCondition("No mumps primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableOutput("Client is not due for mumps vaccination","Client is not due for mumps vaccination","""The age of administration of the second dose may range from the second year of life to age at school entry. The minimum interval between the first and the second doses is 1 month.
As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks.""")
* insert SGDecisionTableCondition("One mumps primary series dose was administered")
* insert SGDecisionTableCondition("The latest mumps dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second mumps dose as latest mumps dose was administered less than 4 weeks ago.
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One mumps primary series dose was administered")
* insert SGDecisionTableCondition("The latest mumps dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is not due for mumps vaccination","Client is not due for mumps vaccination","""""")
* insert SGDecisionTableCondition("One mumps primary series dose was administered")
* insert SGDecisionTableCondition("The latest mumps dose was administered more than 4 weeks ago")
* insert SGDecisionTableCondition("Live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second mumps dose as live vaccine was administered in the past 4 weeks.
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One mumps primary series dose was administered")
* insert SGDecisionTableCondition("The latest mumps dose was administered more than 4 weeks ago")
* insert SGDecisionTableCondition("Live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableOutput("Client is due for mumps vaccination","Client is due for mumps vaccination","""""")
* insert SGDecisionTableCondition("One mumps primary series dose was administered")
* insert SGDecisionTableCondition("The latest mumps dose was administered more than 4 weeks ago")
* insert SGDecisionTableCondition("No live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with second mumps dose as latest mumps dose was administered more than 4 weeks ago and no live vaccine was administered in the past 4 weeks.
Check for contraindications.""")
* insert SGDecisionTableCondition("One mumps primary series dose was administered")
* insert SGDecisionTableCondition("The latest mumps dose was administered more than 4 weeks ago")
* insert SGDecisionTableCondition("No live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableOutput("Mumps immunization schedule is complete","Mumps immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Two mumps primary series doses were administered")
* insert SGDecisionTableGuidance("""Mumps immunization schedule is complete. Two mumps primary series doses were administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Two mumps primary series doses were administered")
