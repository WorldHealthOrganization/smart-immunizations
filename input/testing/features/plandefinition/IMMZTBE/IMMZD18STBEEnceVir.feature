
Feature: IMMZ.D18.S.TBE.EnceVir schedule Decision Table EnceVir, 3-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-18"


    And def resultContent = {}
    And resultContent[54] = "The TBE-Moscow vaccine is not licensed for use in children aged under 3 years."

    And resultContent[55] = "The manufacturer of EnceVir recommends 2 doses given at an interval of 5–7 months."

    And resultContent[56] = "The recommended interval is 12 months between the second and third doses."

    And resultContent[57] = "TBE booster dose should be provided every 3 years to the client if the country recognizes TBE as a priority and the client has completed the primary series."


  @patient=TBE55.1
  Scenario: Client's age is less than 3 years: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE55.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEnceVir/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE55.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE55.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[54]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE55.1-bundle.json" }
    

  @patient=TBE56.2
  Scenario: No TBE primary series doses were administered and Client's age is more than or equal to 3 years: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE56.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEnceVir/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE56.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE56.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[54]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE56.2-bundle.json" }
    

  @patient=TBE57.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered less than 5 months ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE57.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEnceVir/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE57.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE57.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[55]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE57.2-bundle.json" }
    

  @patient=TBE58.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered more than 5 months ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE58.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEnceVir/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE58.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE58.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[55]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE58.2-bundle.json" }
    

  @patient=TBE59.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered less than 12 months ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE59.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEnceVir/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE59.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE59.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[56]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE59.2-bundle.json" }
    

  @patient=TBE60.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered more than 12 months ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE60.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEnceVir/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE60.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE60.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[56]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE60.2-bundle.json" }
    

  @patient=TBE61.2
  Scenario: Three TBE primary series doses were administered and The latest TBE dose was administered less than 3 years ago: Primary series is complete. Client is not due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE61.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEnceVir/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE61.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE61.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[57]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE61.2-bundle.json" }
    

  @patient=TBE62.2
  Scenario: Three TBE primary series doses were administered and The latest TBE dose was administered more than 3 years ago: Primary series is complete. Client is due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE62.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEnceVir/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE62.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE62.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[57]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE62.2-bundle.json" }
    
