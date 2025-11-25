
Feature: IMMZ.D18.S.Varicella.2-dose schedule Decision Table 2-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"


    And def resultContent = {}
    And resultContent[19] = "Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age."

    And resultContent[20] = "The minimum interval between doses should be as recommended by the manufacturer, ranging from 4 weeks to 3 months."


  @patient=Varicella21.1
  Scenario: Client's age is less than 12 months: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella21.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella21.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella21.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella21.1-bundle.json" }
    

  @patient=Varicella22.3
  Scenario: No varicella primary series doses were administered, Cient's age is more than or equal to 12 months, and Live vaccine was administered in the past 4 weeks: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella22.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella22.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella22.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella22.3-bundle.json" }
    

  @patient=Varicella23.3
  Scenario: No varicella primary series doses were administered, Cient's age is more than or equal to 12 months, and No live vaccine was administered in the past 4 weeks: Client is due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella23.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella23.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella23.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella23.3-bundle.json" }
    

  @patient=Varicella24.2
  Scenario: One varicella primary series dose was administered and The latest varicella dose administered less than 4 weeks ago: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella24.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella24.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella24.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella24.2-bundle.json" }
    

  @patient=Varicella25.3
  Scenario: One varicella primary series dose was administered, The latest varicella dose administered more than 4 weeks ago, and Live vaccine was administered in the past 4 weeks: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella25.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella25.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella25.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella25.3-bundle.json" }
    

  @patient=Varicella26.3
  Scenario: One varicella primary series dose was administered, The latest varicella dose administered more than 4 weeks ago, and No live vaccine was administered in the past 4 weeks: Client is due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella26.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella26.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Varicella26.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella26.3-bundle.json" }
    

  @patient=Varicella27.1
  Scenario: Two varicella primary series doses were administered: Varicella immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella27.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella27.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Varicella27.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella27.1-bundle.json" }
    
