Profile: DT.IMMZ.D2.DT.HepatitisB.Birthdose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.HepatitisB.Birthdose,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisdueforhepatitisBmonovalentvaccine,"Client is due for hepatitis B monovalent vaccine","""Hepatitis B vaccination is recommended for all children worldwide. Since perinatal or early postnatal transmission is the most important source of chronic hepatitis B virus infection globally\, all infants including low-birth-weight and premature infants should receive their first dose of hepatitis B-containing vaccine as soon as possible after birth\, ideally within 24 hours.\n\nIf administration within 24 hours is not feasible\, a late birth dose has some effectiveness. WHO recommends that all infants receive the late birth dose during the first contact with health-care providers at any time up to the time of the next dose of the primary schedule.  """)
* insert SGDecisionTableGuidance("""Should vaccinate client with hepatitis B birth dose\, as a monovalent dose. Check for contraindications. """)
* insert SGDecisionTableOutput(DTO.Clientshouldfollowdelayed-startdecisionlogic,"Client should follow delayed-start decision logic",""" """)
* insert SGDecisionTableGuidance("""The client has a delayed start. Please follow the delayed start schedule. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforthehepatitisBbirthdose,"Client is not due for the hepatitis B birth dose",""" """)
* insert SGDecisionTableGuidance("""Hepatitis B birth dose was already administered. Check hepatitis B immunization schedule. """)

