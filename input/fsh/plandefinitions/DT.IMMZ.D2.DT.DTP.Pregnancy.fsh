Profile: DT.IMMZ.D2.DT.DTP.Pregnancy
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations"""
* insert SGDecisionTable( IMMZ.D2.DT.DTP.Pregnancy,"Determine required vaccinations",0.2.0)


* insert SGDecisionTableOutput("Client should follow 'pregnancy starting with 3 doses' decision logic","Client should follow 'pregnancy starting with 3 doses' decision logic","""Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth. To provide lifelong protection, a sixth dose would be needed at least 1 year after the fifth dose, or during the next pregnancy.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No tetanus and diphtheria booster dose was administered")
* insert SGDecisionTableCondition("Client is currently pregnant")
* insert SGDecisionTableGuidance("""The client has received 3 tetanus-contzining vaccine doses during childhood. Please follow the 'pregnancy starting with 3 doses' schedule.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("No tetanus and diphtheria booster dose was administered")
* insert SGDecisionTableCondition("Client is currently pregnant")
* insert SGDecisionTableOutput("Client should follow 'pregnancy starting with 4 doses' decision logic","Client should follow 'pregnancy starting with 4 doses' decision logic","""Pregnant women who received 4 tetanus-containing vaccine doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity. To provide lifelong protection, a sixth dose would be needed at least 1 year after the fifth dose, or duing the next pregnancy.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("One tetanus and diphtheria booster dose was administered")
* insert SGDecisionTableCondition("Client is currently pregnant")
* insert SGDecisionTableGuidance("""The client has received 4 tetanus-containing vaccines doses during childhood or pre-adulthood. Please follow the 'pregnancy starting with 4 doses' schedule.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("One tetanus and diphtheria booster dose was administered")
* insert SGDecisionTableCondition("Client is currently pregnant")
* insert SGDecisionTableOutput("Tetanus and diphtheria immunization schedule is complete","Tetanus and diphtheria immunization schedule is complete","""Pregnant women and their newborn infants are protected from birth-associated tetanus if the mother received either 6 tetanus-containing vaccine doses during childhood or 5 doses if first vaccinated during adolescence/adulthood \(documented by card, immunization registry and/or history\) before the time of reproductive age.
 
In countries where maternal and neonatal tetanus remains a public health problem, pregnant women for whom reliable information on previous tetanus vaccinations is not available should receive at least 2 doses of tetanus-containing vaccines, preferably tetanus toxoid with reduced diphtheria toxoid \(Td\), with an interval of at least 4 weeks between doses and the second dose at least 2 weeks before the birth. To ensure protection for a minimum of 5 years, a third dose should be given at least 6 months later. A fourth and fifth dose should be given at intervals of at least 1 year, or in subsequent pregnancies, to ensure lifelong protection.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableGuidance("""Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and two tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Two tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableOutput("Tetanus and diphtheria immunization schedule is complete","Tetanus and diphtheria immunization schedule is complete","""Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth. Although 1 booster dose should result in a rapid increase in antibody, the level of tetanus-specific antibodies in women who received only a 3-dose primary series during infancy is similar to that of unimmunized individuals 15 years post-immunization. Therefore, 2 doses are recommended to ensure a total of 5 doses before delivery. Women who received 4 tetanus-containing vaccine doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity. In both scenarios, to provide lifelong protection, a sixth dose would be needed at least 1 year after the fifth dose.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Three tetanus and diphtheria booster doses were administered")
* insert SGDecisionTableGuidance("""Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and three tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
Check for any other vaccines due.""")
* insert SGDecisionTableCondition("Three DTP primary series doses were administered")
* insert SGDecisionTableCondition("Three tetanus and diphtheria booster doses were administered")
