Profile: DT.IMMZ.D2.DT.Varicella.1dose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Varicella.1dose,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for varicella vaccination","Client is not due for varicella vaccination","""Varicella-containing vaccine can be administered concomitantly with other vaccines included in the routine childhood immunization programme. Unless given together with other live viral vaccines \(measles, MR [measles and rubella], MMR [measles, mumps and rubella]\), it should be administered at a minimum interval of 28 days.""")
* insert SGDecisionTableCondition("No varicella primary series dose was administered")
* insert SGDecisionTableCondition("Cient's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with varicella dose as live vaccine was administered in the past 4 weeks.
Check for any vaccines due and inform the caregiver of when to come back for the first varicella dose.""")
* insert SGDecisionTableCondition("No varicella primary series dose was administered")
* insert SGDecisionTableCondition("Cient's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableOutput("Client is due for varicella vaccination","Client is due for varicella vaccination","""Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age.""")
* insert SGDecisionTableCondition("No varicella primary series dose was administered")
* insert SGDecisionTableCondition("Cient's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with varicella dose as no varicella dose was administered, client is within the appropriate age range and no live vaccine was administered in past 4 weeks.
Check for contraindications.""")
* insert SGDecisionTableCondition("No varicella primary series dose was administered")
* insert SGDecisionTableCondition("Cient's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableOutput("Varicella immunization schedule is complete","Varicella immunization schedule is complete","""Varicella immunization schedule is complete.""")
* insert SGDecisionTableCondition("One varicella primary series dose was administered")
* insert SGDecisionTableGuidance("""Varicella immunization schedule is complete. One varicella primary series dose was administered.
Check for any vaccines due.""")
* insert SGDecisionTableCondition("One varicella primary series dose was administered")
