
Feature: IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule Decision Table Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"


    And def resultContent = {}
    And resultContent[44] = "Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years."


  @patient=Meningococcal45.1
  Scenario: Client's age is less than 2 years: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal45.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal45.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal45.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[44]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal45.1-bundle.json" }
    

  @patient=Meningococcal46.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than or equal to 2 years: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal46.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal46.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal46.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[44]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal46.2-bundle.json" }
    

  @patient=Meningococcal47.1
  Scenario: One meningococcal primary series dose was administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal47.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal47.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Meningococcal47.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal47.1-bundle.json" }
    
