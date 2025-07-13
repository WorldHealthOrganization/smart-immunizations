Profile: DT.IMMZ.D2.DT.DTP.On-timestart
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.DTP.On-timestart,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is due for DTP vaccination","Client is due for DTP vaccination","""""")
* insert SGDecisionTableCondition("No DTP primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 weeks and 1 year")
* insert SGDecisionTableGuidance("""Should vaccinate client with first DTP dose as no DTP doses were administered and and client's age is within appropriate age range. 
Check for contraindications.""")
* insert SGDecisionTableCondition("No DTP primary series doses were administered")
* insert SGDecisionTableCondition("Client's age is between 6 weeks and 1 year")
* insert SGDecisionTableOutput("Client is not due for DTP vaccination","Client is not due for DTP vaccination","""A primary series of 3 doses of DTP-containing vaccine is recommended, with the first dose administered as early as 6 weeks of age. Subsequent doses should be given with an interval of at least 4 weeks between doses. The third dose of the primary series should be completed by 6 months of age if possible.""")
* insert SGDecisionTableCondition("One DTP primary series dose was administered")
* insert SGDecisionTableCondition("The latest DTP dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second DTP dose as latest DTP dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for second dose.""")
* insert SGDecisionTableCondition("One DTP primary series dose was administered")
* insert SGDecisionTableCondition("The latest DTP dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for DTP vaccination","Client is due for DTP vaccination","""""")
* insert SGDecisionTableCondition("One DTP primary series dose was administered")
* insert SGDecisionTableCondition("The latest DTP dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with second DTP dose as the latest DTP dose was administered more than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("One DTP primary series dose was administered")
* insert SGDecisionTableCondition("The latest DTP dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Client is not due for DTP vaccination","Client is not due for DTP vaccination","""""")
* insert SGDecisionTableCondition("Two DTP primary series doses were administered")
* insert SGDecisionTableCondition("The latest DTP dose was administered less than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third DTP dose as the latest DTP dose was administered  less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for next dose.""")
* insert SGDecisionTableCondition("Two DTP primary series doses were administered")
* insert SGDecisionTableCondition("The latest DTP dose was administered less than 4 weeks ago")
* insert SGDecisionTableOutput("Client is due for DTP vaccination","Client is due for DTP vaccination","""""")
* insert SGDecisionTableCondition("Two DTP primary series doses were administered")
* insert SGDecisionTableCondition("The latest DTP dose was administered more than 4 weeks ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third DTP dose as the latest DTP dose was administered more than 4 weeks ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Two DTP primary series doses were administered")
* insert SGDecisionTableCondition("The latest DTP dose was administered more than 4 weeks ago")
* insert SGDecisionTableOutput("Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose","Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose","""Three booster doses of diphtheria toxoid-containing vaccine should be provided during childhood and adolescence. The diphtheria booster doses should be given in combination with tetanus toxoid using the same schedule \(i.e at 12–23 months of age, 4–7 years of age and 9–15 years of age, using age-appropriate vaccine formulations\). Ideally, there should be at least 4 years between booster doses. Member States may update this schedule based on their country context.

For children aged under 7 years, diphtheria and tetanus toxoids and whole-cell pertussis \(DTwP\) vaccine or diphtheria and tetanus toxoids and acellular pertussis \(DTaP\) combinations may be used.
For children aged 4 years and older, tetanus toxoid, reduced diphtheria toxoid \(Td\)-containing vaccine may be used and is preferred.
From 7 years of age, only Td combinations should be used.
Age-appropriate combinations-containing pertussis vaccine with low-dose diphtheria antigen are also available. Only aP-containing vaccines should be used for vaccination of persons aged 7 years and older.

National vaccination schedules can be adjusted within the age limits specified above to enable programmes to tailor their schedules based on local epidemiology, the objectives of the immunization programme, any particular programmatic issues and to better align tetanus vaccination with the immunological requirements of other vaccines \(particularly for pertussis and diphtheria\).""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 12 months")
* insert SGDecisionTableGuidance("""Should not vaccinate client with first tetanus and diphtheria booster dose as client's age is less than 12 months. 
Check for any other vaccines due and inform the caregiver of when to come back for first tetanus and diphtheria booster dose.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 12 months")
* insert SGDecisionTableOutput("Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose","Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableGuidance("""Should vaccinate client with first tetanus and diphtheria booster dose as client is at least 12 months old. Check for contraindications.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 12 months")
* insert SGDecisionTableOutput("Client is not due for tetanus and diphtheria booster dose","Client is not due for tetanus and diphtheria booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("One tetanus and diphtheria booster dose was administered")
* insert SGDecisionTableCondition("Client's age is less than 4 years")
* insert SGDecisionTableGuidance("""Should not vaccinate client with second tetanus and diphtheria booster dose as client's age is less than 4 years. 
Check for any other vaccines due and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("One tetanus and diphtheria booster dose was administered")
* insert SGDecisionTableCondition("Client's age is less than 4 years")
* insert SGDecisionTableOutput("Client is due for tetanus and diphtheria booster dose","Client is due for tetanus and diphtheria booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("One tetanus and diphtheria booster dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 4 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with second tetanus and diphtheria booster dose as client is within appropriate age range and the latest tetanus and diphtheria booster dose was administered more than 4 years ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("One tetanus and diphtheria booster dose was administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 4 years")
* insert SGDecisionTableOutput("Client is not due for tetanus and diphtheria booster dose","Client is not due for tetanus and diphtheria booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 9 years")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third tetanus and diphtheria booster dose as client's age is less than 9 years. 
Check for any vaccines due, and inform the caregiver of when to come back for third tetanus and diphtheria booster dose.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 9 years")
* insert SGDecisionTableOutput("Client is due for tetanus and diphtheria booster dose","Client is due for tetanus and diphtheria booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 years")
* insert SGDecisionTableGuidance("""Should vaccinate client with third tetanus and diphtheria booster dose as client is within appropriate age range and the latest tetanus and diphtheria dose was administered more than 4 years ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("Client's age is more than or equal to 9 years")
* insert SGDecisionTableOutput("Tetanus and diphtheria immunization schedule is complete","Tetanus and diphtheria immunization schedule is complete","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Three tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableGuidance("""Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Three tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableOutput("Client is not due for pertussis booster dose","Client is not due for pertussis booster dose","""A pertussis booster dose is recommended for children aged 1–6 years, preferably during the second year of life \(≥ 6 months after last primary dose\), unless otherwise indicated by local epidemiology; the contact could also be used to catch up on any missed doses of other vaccines. This schedule should provide protection for at least 6 years for countries using wP-containing vaccine. For countries using aP-containing vaccine, protection may decline appreciably before 6 years of age.

Only aP-containing vaccines should be used for vaccination of persons aged 7 years and over. Although a booster dose in adolescence has been shown to decrease disease in adolescents, this is not generally recommended as a means of controlling pertussis in infants.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No pertussis booster doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 1 year")
* insert SGDecisionTableGuidance("""Should not vaccinate client with pertussis booster dose as client's age is less than 1 year. 
Check for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No pertussis booster doses were administered")
* insert SGDecisionTableCondition("Client's age is less than 1 year")
* insert SGDecisionTableOutput("Primary DTP series is complete. Client is not due for pertussis booster dose","Primary DTP series is complete. Client is not due for pertussis booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No pertussis booster doses were administered")
* insert SGDecisionTableCondition("Client's age is between 1 year and 6 years")
* insert SGDecisionTableCondition("The latest DTP dose was administered less than 6 months ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with  pertussis booster dose as the latest DTP dose was administered less than 6 months ago. 
Check for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No pertussis booster doses were administered")
* insert SGDecisionTableCondition("Client's age is between 1 year and 6 years")
* insert SGDecisionTableCondition("The latest DTP dose was administered less than 6 months ago")
* insert SGDecisionTableOutput("Primary DTP series is complete. Client is due for pertussis booster dose","Primary DTP series is complete. Client is due for pertussis booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No pertussis booster doses were administered")
* insert SGDecisionTableCondition("Client's age is between 1 year and 6 years")
* insert SGDecisionTableCondition("The latest DTP dose was administered more than 6 months ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with pertussis booster dose as no pertussis booster dose was administered, client is within the appropriate age range and the latest DTP dose was administered more than 6 months ago. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No pertussis booster doses were administered")
* insert SGDecisionTableCondition("Client's age is between 1 year and 6 years")
* insert SGDecisionTableCondition("The latest DTP dose was administered more than 6 months ago")
* insert SGDecisionTableOutput("Pertussis immunization schedule is complete","Pertussis immunization schedule is complete","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No pertussis booster doses were administered")
* insert SGDecisionTableCondition("Client's age is more than 6 years")
* insert SGDecisionTableGuidance("""Pertussis immunization schedule is complete. Three DTP primary series doses were administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No pertussis booster doses were administered")
* insert SGDecisionTableCondition("Client's age is more than 6 years")
* insert SGDecisionTableOutput("Pertussis immunization schedule is complete","Pertussis immunization schedule is complete","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("One pertussis booster dose was administered")
* insert SGDecisionTableGuidance("""Pertussis immunization schedule is complete. Three DTP primary series doses and one pertussis booster dose were administered. 
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("One pertussis booster dose was administered")
