Profile: DT.IMMZ.D2.DT.Measles.Lowtransmission
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Measles.Lowtransmission,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for MCV1","Client is due for MCV1","""""")
* insert SGDecisionTableCondition("No measles primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with MCV1 as no measles doses were administered, client is within appropriate age range and no live vaccine was administered in the past 4 weeks.
Check for contraindications.""")
* insert SGDecisionTableCondition("No measles primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Client is not due for MCV1","Client is not due for MCV1","""""")
* insert SGDecisionTableCondition("No measles primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with MCV1 as live vaccine was administered in the past 4 weeks.
Check for any vaccines due and inform the caregiver of when to come back for MCV1.""")
* insert SGDecisionTableCondition("No measles primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Client is not due for MCV2","Client is not due for MCV2","""In countries with low levels of measles transmission, administration of MCV2 at 15-18 months of age ensures early protection of the individual. The minimum interval between MCV1 and MCV2 is 4 weeks.
As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time before or after measles vaccination without interference in the response to either vaccine.""")
* insert SGDecisionTableCondition("MCV1 was administered")
* insert SGDecisionTableCondition("Client's age is less than 15 months")
* insert SGDecisionTableGuidance("""Should not vaccinate client with MCV2 as client's age is less than 15 months.
Check for any vaccines due and inform the caregiver of when to come back for MCV2.""")
* insert SGDecisionTableCondition("MCV1 was administered")
* insert SGDecisionTableCondition("Client's age is less than 15 months")
* insert SGDecisionTableOutput("Client is due for MCV2","Client is due for MCV2","""""")
* insert SGDecisionTableCondition("MCV1 was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 15 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with MCV2 as client is within appropriate age range and no live vaccine administered in the past 4 weeks.
Check for contraindications.""")
* insert SGDecisionTableCondition("MCV1 was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 15 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Client is not due for MCV2","Client is not due for MCV2","""""")
* insert SGDecisionTableCondition("MCV1 was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 15 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with MCV2 as live vaccine was administered in the past 4 weeks.
Check for any vaccines due and inform the caregiver of when to come back for MCV2.""")
* insert SGDecisionTableCondition("MCV1 was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 15 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the last 4 weeks")
* insert SGDecisionTableOutput("Measles primary series is complete","Measles primary series is complete","""An additional dose of MCV should be administered to children infected with HIV receiving highly active antiretroviral therapy \(HAART\) following immune reconstitution. If CD4+ T lymphocyte counts are monitored, an additional dose of MCV should be administered when immune reconstitution has been achieved \(e.g. when the CD4+ T lymphocyte count reaches 20–25%\). Where CD4+ T lymphocyte monitoring is not available, children should receive an additional dose of MCV 6–12 months after initiation of HAART.""")
* insert SGDecisionTableCondition("MCV2 was administered")
* insert SGDecisionTableGuidance("""Measles primary series is complete. Two measles primary series doses were administered.
Check if a measles supplementary dose is appropriate for the client.""")
* insert SGDecisionTableCondition("MCV2 was administered")
