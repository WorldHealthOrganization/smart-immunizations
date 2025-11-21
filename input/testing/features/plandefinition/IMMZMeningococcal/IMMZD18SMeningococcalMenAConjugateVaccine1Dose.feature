
Feature: IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule Decision Table MenA conjugate vaccine, 1-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"


    And def resultContent = {}
    And resultContent[7] = "For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age"


  @patient=Meningococcal08.1
  Scenario: Client's age is less than 9 months: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal08.1-bundle.json" }
    

  @patient=Meningococcal09.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than 9 months: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal09.2-bundle.json" }
    

  @patient=Meningococcal10.1
  Scenario: One meningococcal primary series dose was administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal10.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal10.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Meningococcal10.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal10.1-bundle.json" }
    
