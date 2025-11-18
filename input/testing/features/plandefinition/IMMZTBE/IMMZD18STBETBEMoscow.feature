
Feature: IMMZ.D18.S.TBE.TBE-Moscow schedule Decision Table TBE-Moscow, 3-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-18"


    And def resultContent = {}
    And resultContent[39] = "The TBE-Moscow vaccine is not licensed for use in children aged under 3 years."

    And resultContent[40] = "The manufacturer of TBE-Moscow recommends a standard primary immunization schedule of 2 doses given at an interval of 1–7 months."

    And resultContent[41] = "The recommended interval is 12 months between the second and third doses."

    And resultContent[42] = "TBE booster dose should be provided every 3 years to the client if the country recognizes TBE as a priority and the client has completed the primary series."


  @patient=TBE40.1
  Scenario: Client's age is less than 3 years: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE40.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE40.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE40.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[39]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE40.1-bundle.json" }
    

  @patient=TBE41.2
  Scenario: No TBE primary series doses were administered and Client's age is more than or equal to 3 years: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE41.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE41.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE41.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[39]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE41.2-bundle.json" }
    

  @patient=TBE42.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered less than 1 month ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE42.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE42.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE42.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[40]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE42.2-bundle.json" }
    

  @patient=TBE43.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered more than 1 month ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE43.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE43.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE43.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[40]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE43.2-bundle.json" }
    

  @patient=TBE44.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered less than 12 months ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE44.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE44.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE44.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[41]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE44.2-bundle.json" }
    

  @patient=TBE45.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered more than 12 months ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE45.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE45.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE45.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[41]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE45.2-bundle.json" }
    

  @patient=TBE46.2
  Scenario: Three TBE primary series doses were administered and The latest TBE dose was administered less than 3 years ago: Primary series is complete. Client is not due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE46.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE46.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE46.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[42]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE46.2-bundle.json" }
    

  @patient=TBE47.2
  Scenario: Three TBE primary series doses were administered and The latest TBE dose was administered more than 3 years ago: Primary series is complete. Client is due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE47.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE47.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE47.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[42]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE47.2-bundle.json" }
    
