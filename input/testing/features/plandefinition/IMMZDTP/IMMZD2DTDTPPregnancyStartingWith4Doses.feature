
Feature: IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses Decision Table Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"


  @patient=DTP79.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and Client is currently pregnant: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP79.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancyStartingWith4Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP79.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP79.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second tetanus and diphtheria booster dose as three DTP primary series doses and one tetanus and diphtheria booster dose were administered and client is currently pregnant. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP79.3-bundle.json" }
  

  @patient=DTP80.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and The latest tetanus and diphtheria dose was administered less than 1 year ago: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP80.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancyStartingWith4Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP80.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP80.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. \nCheck for any other vaccines due and inform the caregiver of when to come back for third tetanus and diphtheria booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP80.3-bundle.json" }
  

  @patient=DTP81.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and The latest tetanus and diphtheria dose was administered more than 1 year ago: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP81.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancyStartingWith4Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP81.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP81.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP81.3-bundle.json" }
  

  @patient=DTP82.2
  Scenario: Three DTP primary series doses were administered and Three tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP82.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancyStartingWith4Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP82.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP82.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP82.2-bundle.json" }
  
