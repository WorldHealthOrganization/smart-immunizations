Profile: DT.IMMZ.D2.DT.DTP.Pregnancystartingwith4doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.DTP.Pregnancystartingwith4doses,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client is not due for tetanus and diphtheria booster dose","Client is not due for tetanus and diphtheria booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("The latest tetanus and diphtheria dose was administered less than 1 year ago")
* insert SGDecisionTableGuidance("""Should not vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. 
Check for any other vaccines due and inform the caregiver of when to come back for third tetanus and diphtheria booster dose.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("The latest tetanus and diphtheria dose was administered less than 1 year ago")
* insert SGDecisionTableOutput("Client is due for tetanus and diphtheria booster dose","Client is due for tetanus and diphtheria booster dose","""""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("The latest tetanus and diphtheria dose was administered more than 1 year ago")
* insert SGDecisionTableGuidance("""Should vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. 
Check for contraindications.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableCondition("The latest tetanus and diphtheria dose was administered more than 1 year ago")
* insert SGDecisionTableOutput("Tetanus and diphtheria immunization schedule is complete","Tetanus and diphtheria immunization schedule is complete","""–""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Three tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableGuidance("""Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Three tetanus and diphtheria booster doses were administered")
