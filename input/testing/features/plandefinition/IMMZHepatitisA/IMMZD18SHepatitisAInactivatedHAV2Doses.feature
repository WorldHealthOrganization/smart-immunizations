
Feature: IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule Decision Table Inactivated hepatitis A virus (HAV), 2-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"


    And def resultContent = {}
    And resultContent[7] = "With a 2-dose schedule, the first dose should be given from ≥ 12 months of age."

    And resultContent[8] = "The interval between doses is flexible, from 6 months to 4–5 years or more, but is usually 6–18 months."


  @patient=HepatitisA08.1
  Scenario: Client's age is less than 12 months: Client is not due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA08.1-bundle.json" }
    

  @patient=HepatitisA09.2
  Scenario: No hepatitis A primary series doses were administered and Client's age is more than or equal to 12 months: Client is due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA09.2-bundle.json" }
    

  @patient=HepatitisA10.2
  Scenario: One hepatitis A primary series dose was administered and The latest Hepatitis A dose was administered less than 6 months ago: Client is not due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA10.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA10.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA10.2-bundle.json" }
    

  @patient=HepatitisA11.2
  Scenario: One hepatitis A primary series dose was administered and The latest Hepatitis A dose was administered more than 6 months ago: Client is due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA11.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA11.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA11.2-bundle.json" }
    

  @patient=HepatitisA12.1
  Scenario: Two hepatitis A primary series doses were administered: Hepatitis A immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA12.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA12.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/HepatitisA12.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA12.1-bundle.json" }
    
