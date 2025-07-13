Profile: DT.IMMZ.D2.DT.Polio.Birthdose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( IMMZ.D2.DT.Polio.Birthdose,"0.2.0)
* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)
* insert SGDecisionTableOutput(DTO.ClientisdueforthebOPVbirthdose,"Client is due for the bOPV birth dose","""In polio-endemic countries and in countries at high risk of importation and subsequent spread of polio\, WHO recommends a bOPV birth dose zero dose followed by the primary series of 3 bOPV doses and 2 IPV doses. The zero dose of bOPV should be administered at birth\, or within the first week of life\, to maximize seroconversion rates following subsequent doses and to induce mucosal protection before enteric pathogens may interfere with the immune response. \nAdditionally\, a birth dose of bOPV administered while infants are still protected by maternally_x0002_derived antibodies up to 6 months may prevent vaccine-associated paralytic polio VAPP.  """)
* insert SGDecisionTableCondition("bOPVbirthdoseazerodosewasnotadministered")
* insert SGDecisionTableCondition("Clientsageislessthan1week")
* insert SGDecisionTableGuidance("""Should vaccinate client with bOPV birth dose a zero dose as poliovirus birth dose was not administered and clients age is less than 1 week. Check for contraindications. """)
* insert SGDecisionTableCondition("bOPVbirthdoseazerodosewasnotadministered")
* insert SGDecisionTableCondition("Clientsageislessthan1week")
* insert SGDecisionTableOutput(DTO.ClientisnotdueforthebOPVbirthdose,"Client is not due for the bOPV birth dose","""  """)
* insert SGDecisionTableCondition("bOPVbirthdoseazerodosewasnotadministered")
* insert SGDecisionTableCondition("Clientsageismorethanorequalto1week")
* insert SGDecisionTableGuidance("""Should not vaccinate client with bOPV birth dose a zero dose as clients age is more than or equal to 1 week. Check for any other vaccines due and inform the caregiver of when to come back for the next dose. """)
* insert SGDecisionTableCondition("bOPVbirthdoseazerodosewasnotadministered")
* insert SGDecisionTableCondition("Clientsageismorethanorequalto1week")
* insert SGDecisionTableOutput(DTO.ClientisnotdueforthebOPVbirthdose,"Client is not due for the bOPV birth dose","""  """)
* insert SGDecisionTableCondition("bOPVbirthdoseazerodosewasadministered")
* insert SGDecisionTableGuidance("""Poliovirus birth dose was already administered. Check poliovirus immunization schedule. """)
* insert SGDecisionTableCondition("bOPVbirthdoseazerodosewasadministered")
