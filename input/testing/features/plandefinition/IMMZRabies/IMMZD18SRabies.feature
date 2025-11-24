
Feature: IMMZ.D18.S.Rabies schedule Decision Table Rabies schedule (2-dose scheme)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"


    And def resultContent = {}
    And resultContent[7] = "Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure"

    And resultContent[8] = "Rabies dose 2 should be provided if previous dose was given more than 1 week ago"


  @patient=Rabies08.1
  Scenario: No rabies primary series doses were administered: Client is due for rabies vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRabies/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rabies08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies08.1-bundle.json" }
    

  @patient=Rabies09.2
  Scenario: One rabies primary series doses were administered and The latest rabies dose was administered less than 7 days ago: Client is not due for rabies vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRabies/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rabies09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies09.2-bundle.json" }
    

  @patient=Rabies10.2
  Scenario: One rabies primary series doses were administered and The latest rabies dose was administered more than 7 days ago: Client is due for rabies vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRabies/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies10.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rabies10.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies10.2-bundle.json" }
    

  @patient=Rabies11.1
  Scenario: Two rabies primary series doses were administered: Rabies immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies11.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRabies/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies11.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Rabies11.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies11.1-bundle.json" }
    
