
Feature: IMMZ.D18.S.Varicella.1-dose schedule Decision Table 1-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"


    And def resultContent = {}
    And resultContent[7] = "Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age."


  @patient=Varicella09.1
  Scenario: Client's age is less than 12 months: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella09.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella09.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella09.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella09.1-bundle.json" }
    

  @patient=Varicella10.3
  Scenario: No varicella primary series dose was administered, Cient's age is more than or equal to 12 months, and Live vaccine was administered in the past 4 weeks: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella10.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella10.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella10.3-bundle.json" }
    

  @patient=Varicella11.3
  Scenario: No varicella primary series dose was administered, Cient's age is more than or equal to 12 months, and No live vaccine was administered in the past 4 weeks: Client is due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella11.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella11.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella11.3-bundle.json" }
    

  @patient=Varicella12.1
  Scenario: One varicella primary series dose was administered: Varicella immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella12.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella12.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Varicella12.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella12.1-bundle.json" }
    
