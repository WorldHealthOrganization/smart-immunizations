Profile: DT.IMMZ.D2.DT.TBE.FSME-Immun
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.TBE.FSME-Immun,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for TBE vaccination","Client is due for TBE vaccination","""""")
* insert SGDecisionTableCondition("No TBE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 1 year")
* insert SGDecisionTableGuidance("""Should vaccinate client with first TBE dose as no TBE doses have been administered and client's age is more than 1 year.
Check for contraindications.""")
* insert SGDecisionTableCondition("No TBE primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 1 year")
* insert SGDecisionTableOutput("Client is not due for TBE vaccination","Client is not due for TBE vaccination","""For the vaccines manufactured in Austria and Germany \(FSME-Immun and Encepur\), an interval of 1–3 months is recommended between the first 2 doses. For the accelerated schedule for FSME-Immun, the recommendation is vaccination on days 0 and 14, followed by a third dose 5–12 months after the second dose.""")
* insert SGDecisionTableCondition("One TBE primary series dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 1 month ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago. Check for any vaccines due and inform the caregiver of when to come back for the next dose""")
* insert SGDecisionTableCondition("One TBE primary series dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 1 month ago")
* insert SGDecisionTableOutput("Client is due for TBE vaccination","Client is due for TBE vaccination","""For the vaccines manufactured in Austria and Germany \(FSME-Immun and Encepur\), an interval of 1–3 months is recommended between the first 2 doses.""")
* insert SGDecisionTableCondition("One TBE primary series dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 1 month ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("One TBE primary series dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 1 month ago")
* insert SGDecisionTableOutput("Client is not due for TBE vaccination","Client is not due for TBE vaccination","""""")
* insert SGDecisionTableCondition("Two TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 5 months ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third TBE dose as the latest dose was administered less than 5 months ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.""")
* insert SGDecisionTableCondition("Two TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 5 months ago")
* insert SGDecisionTableOutput("Client is due for TBE vaccination","Client is due for TBE vaccination","""""")
* insert SGDecisionTableCondition("Two TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 5 months ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third TBE dose as the latest dose was administered more than 5 months ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("Two TBE primary series doses were administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 5 months ago")
* insert SGDecisionTableOutput("Primary series is complete. Client is not due for TBE booster dose","Primary series is complete. Client is not due for TBE booster dose","""For both vaccines \(FSME-Immun and Encepur\), the manufacturers recommend a booster dose to be administered 3 years after completion of the primary series. Although there is a strong indication that the spacing of boosters could be expanded considerably from the intervals currently recommended by the manufacturers \(every 3–5 years\), the evidence is still insufficient for a definitive recommendation on the optimal frequency and number of booster doses.""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("No TBE booster dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 3 years ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago.
Check for any vaccines due and inform the caregiver of when to come back for the booster dose""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("No TBE booster dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered less than 3 years ago")
* insert SGDecisionTableOutput("Primary series is complete. Client is due for TBE booster dose","Primary series is complete. Client is due for TBE booster dose","""""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("No TBE booster dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 3 years ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with TBE booster dose as the latest TBE dose was administered more than 3 years ago.
Check for contraindications.""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("No TBE booster dose was administered")
* insert SGDecisionTableCondition("The latest TBE dose was administered more than 3 years ago")
* insert SGDecisionTableOutput("Clinical judgement is required.","Clinical judgement is required.","""Vaccination against the disease requires a primary series of 3 doses; those who will continue to be at risk should probably have ≥1 booster doses. Although there is a strong indication that the spacing of boosters could be expanded considerably from the intervals currently recommended by the manufacturers \(every 3–5 years\), the evidence is still insufficient for a definitive recommendation on the optimal frequency and number of booster doses.""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("At least one booster dose was administered")
* insert SGDecisionTableGuidance("""Assess if supplementary booster TBE dose\(s\) are necessary and create a clinical note.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three TBE primary series doses were administered")
* insert SGDecisionTableCondition("At least one booster dose was administered")
