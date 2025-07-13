Profile: DT.IMMZ.D2.DT.Rabies
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Rabies,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for rabies vaccination","Client is not due for rabies vaccination","""PrEP schedule: 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, WHO recommends a 1-site intramuscular vaccine administration on days 0 and 7.""")
* insert SGDecisionTableCondition("One rabies primary series doses were administered")
* insert SGDecisionTableCondition("The latest rabies dose was administered less than 7 days ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One rabies primary series doses were administered")
* insert SGDecisionTableCondition("The latest rabies dose was administered less than 7 days ago")
* insert SGDecisionTableOutput("Client is due for rabies vaccination","Client is due for rabies vaccination","""If any doses are delayed, vaccination should be resumed, not restarted. A change in the route of administration or in vaccine product during a course is acceptable if such a change is unavoidable.
The schedule is for a 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, WHO recommends a 1-site intramuscular vaccine administration on days 0 and 7.""")
* insert SGDecisionTableCondition("One rabies primary series doses were administered")
* insert SGDecisionTableCondition("The latest rabies dose was administered more than 7 days ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second rabies dose as the latest rabies dose was administerd 7 or more days ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("One rabies primary series doses were administered")
* insert SGDecisionTableCondition("The latest rabies dose was administered more than 7 days ago")
* insert SGDecisionTableOutput("Rabies immunization schedule is complete","Rabies immunization schedule is complete","""No further PrEP booster doses following a primary series of PrEP or PEP are required for individuals living in, or travelling to, high-risk areas.
Professionals who are at continual or frequent risk of exposure through their activities should have regular serological monitoring.""")
* insert SGDecisionTableCondition("Two rabies primary series doses were administered")
* insert SGDecisionTableGuidance("""Rabies immunization schedule is complete. Two rabies primary series doses were administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Two rabies primary series doses were administered")
