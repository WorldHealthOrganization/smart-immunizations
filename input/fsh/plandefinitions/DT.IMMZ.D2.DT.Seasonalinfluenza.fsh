Profile: DT.IMMZ.D2.DT.Seasonalinfluenza
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Seasonalinfluenza,"Determine required vaccinations",0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables \(March 2023\) \(1\)""")
* insert SGDecisionTableOutput("Client is due for seasonal influenza vaccination","Client is due for seasonal influenza vaccination","""Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart. A single dose is appropriate for those ≥ 9 years of age and healthy adults.""")
* insert SGDecisionTableCondition("No seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 6 months")
* insert SGDecisionTableGuidance("""Should vaccinate client with first seasonal influenza dose as no seasonal infuenza doses were administered and client is within appropriate age range. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 6 months")
* insert SGDecisionTableOutput("Client is not due for seasonal influenza vaccination","Client is not due for seasonal influenza vaccination","""Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart.""")
* insert SGDecisionTableCondition("One seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 9 years")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second seasonal influenza dose as latest seasonal influenza dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.""")
* insert SGDecisionTableCondition("One seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 9 years")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for seasonal influenza vaccination","Client is due for seasonal influenza vaccination","""""")
* insert SGDecisionTableCondition("One seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 9 years")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second seasonal influenza dose as client is within appropriate age range and latest seasonal influenza dose was administerered more than 4 weeks ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("One seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 9 years")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("The primary series is complete. Client is not due for seasonal influenza annual dose","The primary series is complete. Client is not due for seasonal influenza annual dose","""A single dose is appropriate for children aged ≥ 9 years and healthy adults. Those who have previously been vaccinated at least once should subsequently receive an annual dose, as should children and adolescents aged 9 years or over and healthy adults.""")
* insert SGDecisionTableCondition("One seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 years")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was  administered less than 1 year ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with annual dose as the latest seasonal influenza dose was administered less than 1 year ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("One seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 years")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was  administered less than 1 year ago")
* insert SGDecisionTableOutput("The primary series is complete. Client is due for seasonal influenza annual dose","The primary series is complete. Client is due for seasonal influenza annual dose","""""")
* insert SGDecisionTableCondition("One seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 years")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was administered more than 1 year ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with annual dose as the latest seasonal influenza dose was administered more than 1 year ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("One seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 years")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was administered more than 1 year ago")
* insert SGDecisionTableOutput("The primary series is complete. Client is not due for seasonal influenza annual dose","The primary series is complete. Client is not due for seasonal influenza annual dose","""""")
* insert SGDecisionTableCondition("Two seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was  administered less than 1 year ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with annual dose as latest seasonal influenza dose was administered less than 1 year ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("Two seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was  administered less than 1 year ago")
* insert SGDecisionTableOutput("The primary series is complete. Client is due for seasonal influenza annual dose","The primary series is complete. Client is due for seasonal influenza annual dose","""""")
* insert SGDecisionTableCondition("Two seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was administered more than 1 year ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with  annual dose as latest seasonal influenza dose was administered more than 1 year ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Two seasonal influenza primary series doses were administered")
* insert SGDecisionTableCondition("The latest seasonal influenza dose was administered more than 1 year ago")
