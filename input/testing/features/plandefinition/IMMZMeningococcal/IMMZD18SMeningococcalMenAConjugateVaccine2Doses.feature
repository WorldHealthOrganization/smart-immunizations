
Feature: IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule Decision Table MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"


    And def resultContent = {}
    And resultContent[17] = "If, in a specific context, there is a compelling reason to vaccinate infants aged under 9 months, a 2-priming dose infant schedule should be used starting at 3 months of age."

    And resultContent[18] = "Meningococcal dose 2 should be provided if the client's age is 3–9 months, 8 weeks after the first dose, and there is a compelling reason to vaccinate the infant."


  @patient=Meningococcal18.1
  Scenario: Client's age is less than 3 months: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal18.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal18.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal18.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[17]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal18.1-bundle.json" }
    

  @patient=Meningococcal19.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than or equal to 3 months: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal19.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal19.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal19.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[17]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal19.2-bundle.json" }
    

  @patient=Meningococcal20.2
  Scenario: One meningococcal primary series dose was administered and The latest meningococcal dose was administered less than 8 weeks ago: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal20.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal20.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal20.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal20.2-bundle.json" }
    

  @patient=Meningococcal21.2
  Scenario: One meningococcal primary series dose was administered and The latest meningococcal dose was administered more than 8 weeks ago: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal21.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal21.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal21.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal21.2-bundle.json" }
    

  @patient=Meningococcal22.1
  Scenario: Two meningococcal primary series doses were administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal22.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Meningococcal22.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal22.1-bundle.json" }
    
