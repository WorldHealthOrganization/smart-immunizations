Profile: DT.IMMZ.D2.DT.Hib.3doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Hib.3doses,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for Hib vaccination","Client is due for Hib vaccination","""""")
* insert SGDecisionTableCondition("No Hib primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 weeks and 5 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with first Hib dose as no Hib doses were administered and client is within appropriate age range. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No Hib primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 weeks and 5 years")
* insert SGDecisionTableOutput("Client is not due for Hib vaccination","Client is not due for Hib vaccination","""""")
* insert SGDecisionTableCondition("One Hib primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is at least 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("Client's age was less than 1 year when first Hib dose was administered")
* insert SGDecisionTableCondition("The latest Hib dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second Hib dose as latest Hib dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for second dose.""")
* insert SGDecisionTableCondition("One Hib primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is at least 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("Client's age was less than 1 year when first Hib dose was administered")
* insert SGDecisionTableCondition("The latest Hib dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for Hib vaccination","Client is due for Hib vaccination","""""")
* insert SGDecisionTableCondition("One Hib primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is at least 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("Client's age was less than 1 year when first Hib dose was administered")
* insert SGDecisionTableCondition("The latest Hib dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second Hib dose as client's age was less than 1 year when first Hib dose was administered and the latest Hib dose was administered more than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("One Hib primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is at least 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("Client's age was less than 1 year when first Hib dose was administered")
* insert SGDecisionTableCondition("The latest Hib dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Hib immunization schedule is complete","Hib immunization schedule is complete","""When a first dose is given to a child aged over 12 months, only one dose is recommended""")
* insert SGDecisionTableCondition("One Hib primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is at least 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("Client's age was more than 1 year when first Hib dose was administered")
* insert SGDecisionTableGuidance("""Hib immunization schedule is complete as client's age was more than 1 year when first Hib dose was administered. One Hib primary series dose was administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One Hib primary series dose was administered")
* insert SGDecisionTableCondition("Client's age is at least 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("Client's age was more than 1 year when first Hib dose was administered")
* insert SGDecisionTableOutput("Client is not due for Hib vaccination","Client is not due for Hib vaccination","""The interval between doses should be at least 4 weeks if 3 primary doses are given.
Hib-containing vaccine is not required for healthy children aged over 5 years.""")
* insert SGDecisionTableCondition("Two Hib primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("The latest Hib dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third Hib dose as latest Hib dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for third dose.""")
* insert SGDecisionTableCondition("Two Hib primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("The latest Hib dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for Hib vaccination","Client is due for Hib vaccination","""""")
* insert SGDecisionTableCondition("Two Hib primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("The latest Hib dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third Hib dose as client is within appropriate age range and latest Hib dose was administered more than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Two Hib primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 weeks and not more than 5 years")
* insert SGDecisionTableCondition("The latest Hib dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Hib immunization schedule is complete","Hib immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Three Hib primary series doses were administered")
* insert SGDecisionTableGuidance("""Hib immunization schedule is complete. Three Hib primary series doses were administered. 
Check for any vaccines due.""")
* insert SGDecisionTableCondition("Three Hib primary series doses were administered")
* insert SGDecisionTableOutput("Client is not due for Hib vaccination","Client is not due for Hib vaccination","""–""")
* insert SGDecisionTableCondition("Client's age is more than 5 years")
* insert SGDecisionTableGuidance("""Should not vaccinate client with Hib dose as client is more than 5 years old and Hib vaccination is not required for healthy children aged over 5 years. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Client's age is more than 5 years")
