
Feature: IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule Decision Table Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood diphtheria–tetanus–pertussis (DTP) doses

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"


    And def resultContent = {}
    And resultContent[65] = "Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth."

    And resultContent[67] = "A sixth dose would be needed at least 1 year after the fifth dose, or during the next pregnancy."


  @patient=DTP66.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and Client is currently pregnant: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP66.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP66.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP66.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[65])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP66.3-bundle.json" }
    

  @patient=DTP67.4
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster doses were administered, Client is currently pregnant, and The latest tetanus and diphtheria dose was administered less than 4 weeks ago: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP67.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP67.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP67.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[65])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP67.4-bundle.json" }
    

  @patient=DTP68.4
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster doses were administered, Client is currently pregnant, and The latest tetanus and diphtheria dose was administered more than 4 weeks ago: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP68.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP68.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP68.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[65])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP68.4-bundle.json" }
    

  @patient=DTP69.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and The latest tetanus and diphtheria dose was administered less than 1 year ago: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP69.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP69.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP69.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[65])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP69.3-bundle.json" }
    

  @patient=DTP70.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and The latest tetanus and diphtheria dose was administered more than 1 year ago: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP70.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP70.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP70.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[65])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP70.3-bundle.json" }
    

  @patient=DTP71.2
  Scenario: Three DTP primary series doses were administered and Three tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP71.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP71.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP71.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[67])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP71.2-bundle.json" }
    
