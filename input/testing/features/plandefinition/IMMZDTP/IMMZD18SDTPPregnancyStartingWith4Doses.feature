
Feature: IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule Decision Table Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood diphtheria–tetanus–pertussis (DTP) doses

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"


    And def resultContent = {}
    And resultContent[78] = "Women who received 4 tetanus-containing vaccine doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity."

    And resultContent[79] = "To provide lifelong protection for tetanus, a sixth dose should be provided at least 1 year after the fifth dose, or in next pregnancy."


  @patient=DTP79.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and Client is currently pregnant: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP79.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith4Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP79.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP79.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[78])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP79.3-bundle.json" }
    

  @patient=DTP80.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and The latest tetanus and diphtheria dose was administered less than 1 year ago: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP80.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith4Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP80.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP80.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[78])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP80.3-bundle.json" }
    

  @patient=DTP81.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and The latest tetanus and diphtheria dose was administered more than 1 year ago: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP81.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith4Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP81.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP81.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[79])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP81.3-bundle.json" }
    

  @patient=DTP82.2
  Scenario: Three DTP primary series doses were administered and Three tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP82.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith4Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP82.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/DTP82.2'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP82.2-bundle.json" }
    
