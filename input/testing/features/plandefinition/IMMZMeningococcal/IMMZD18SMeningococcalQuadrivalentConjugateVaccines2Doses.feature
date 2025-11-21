
Feature: IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 2-dose schedule Decision Table Quadrivalent conjugate vaccine (A,C,W135,Y-D), 2-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"


    And def resultContent = {}
    And resultContent[54] = "A,C,W135,Y-D is also licensed for children aged 9–23 months and given as a 2-dose series 3 months apart, beginning at 9 months of age."

  @patient=Meningococcal55.1
  Scenario: Client's age is less than 9 months: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal55.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal55.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal55.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[54]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal55.1-bundle.json" }
    

  @patient=Meningococcal56.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than or equal to 9 months: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal56.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal56.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal56.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[54]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal56.2-bundle.json" }
    

  @patient=Meningococcal57.3
  Scenario: One meningococcal primary series dose was administered, Client's age was less than or equal to 23 months when the primary series was started, and The latest meningococcal dose was administered less than 3 months ago: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal57.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal57.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal57.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[54]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal57.3-bundle.json" }
    

  @patient=Meningococcal58.3
  Scenario: One meningococcal primary series dose was administered, Client's age was less than or equal to 23 months when the primary series was started, and The latest meningococcal dose was administered more than 3 months ago: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal58.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal58.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal58.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[54]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal58.3-bundle.json" }
    

  @patient=Meningococcal59.2
  Scenario: One meningococcal primary series dose was administered and Client's age was more than 23 months when the primary series was started: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal59.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal59.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Meningococcal59.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal59.2-bundle.json" }
    

  @patient=Meningococcal60.1
  Scenario: Two meningococcal primary series doses were administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal60.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal60.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Meningococcal60.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal60.1-bundle.json" }
    
