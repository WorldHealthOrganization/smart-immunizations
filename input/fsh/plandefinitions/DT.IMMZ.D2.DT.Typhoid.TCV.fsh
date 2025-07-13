Profile: DT.IMMZ.D2.DT.Typhoid.TCV
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.Typhoid.TCV,"Determine required vaccinations",0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables \(March 2023\) \(1\)""")
* insert SGDecisionTableOutput("Client is due for Typhoid vaccination","Client is due for Typhoid vaccination","""WHO recommends the TCV as a 0.5 mL single dose for infants and children from 6 months of age and in adults up to 45 years in typhoid endemic regions.""")
* insert SGDecisionTableCondition("No typhoid primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 months and 45 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with typhoid dose as no typhoid doses were administered and client is within appropriate age range.
Check for contraindications.""")
* insert SGDecisionTableCondition("No typhoid primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 months and 45 years")
* insert SGDecisionTableOutput("Clinical judgement is required. Create a clinical note","Clinical judgement is required. Create a clinical note","""""")
* insert SGDecisionTableCondition("No typhoid primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 45 years")
* insert SGDecisionTableGuidance("""Member States should update this action according to the national immunization programme.""")
* insert SGDecisionTableCondition("No typhoid primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 45 years")
* insert SGDecisionTableOutput("Typhoid immunization schedule is complete","Typhoid immunization schedule is complete","""Routine typhoid immunization schedule is complete. The potential need for revaccination with TCV is currently unclear.""")
* insert SGDecisionTableCondition("One typhoid primary series dose was administered")
* insert SGDecisionTableGuidance("""Typhoid immunization schedule is complete. One typhoid primary series dose was administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("One typhoid primary series dose was administered")
