Profile: DT.IMMZ.D2.DT.Yellowfever
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Yellowfever,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for yellow fever vaccination","Client is not due for yellow fever vaccination","""As a general rule, any live vaccine may be given either simultaneously or at an interval of 4 weeks.""")
* insert SGDecisionTableCondition("No yellow fever primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableGuidance("""Should not vaccinate client with yellow fever dose as live vaccine was administered in the past 4 weeks. 
Check for any vaccines due and inform the caregiver of when to come back for the first dose.""")
* insert SGDecisionTableCondition("No yellow fever primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 months")
* insert SGDecisionTableCondition("Live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableOutput("Client is due for yellow fever vaccination","Client is due for yellow fever vaccination","""In endemic countries, it is recommended that yellow fever vaccine be given to children aged 9–12 months at the same time as the measles vaccine. Preventive mass vaccination campaigns are recommended for inhabitants of areas at risk of yellow fever where there is low vaccination coverage.

Vaccination should be provided to everyone aged 9 months and older in any area with reported cases.

Vaccination should also be offered if the individual is travelling to and from at-risk areas, if not contraindicated.

As a general rule, any live vaccine may be given either simultaneously or at an interval of 4 weeks. Oral poliovirus vaccine may be given at any time in relation to yellow fever vaccination.""")
* insert SGDecisionTableCondition("No yellow fever primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableGuidance("""Should vaccinate client with yellow fever dose as no yellow fever dose was administered, client is within appropriate age range and no live vaccine was administered in the past 4 weeks. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No yellow fever primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 months")
* insert SGDecisionTableCondition("No live vaccine was administered in the past 4 weeks")
* insert SGDecisionTableOutput("Yellow fever immunization schedule is complete","Yellow fever immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("One yellow fever primary series dose was administered")
* insert SGDecisionTableGuidance("""Yellow fever immunization schedule is complete. One yellow fever primary series dose was administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One yellow fever primary series dose was administered")
