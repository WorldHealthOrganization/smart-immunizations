
Feature: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses Decision Table Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE10"


  @patient=Meningococcal55.1
  Scenario: Client's age is less than 9 months: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal55.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal55.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal55.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first meningococcal dose as client's age is less than 9 months. \nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal55.1-bundle.json" }
  

  @patient=Meningococcal56.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than or equal to 9 months: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal56.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal56.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal56.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal56.2-bundle.json" }
  

  @patient=Meningococcal57.3
  Scenario: One meningococcal primary series dose was administered, Client's age was less than or equal to 23 months when the primary series was started, and The latest meningococcal dose was administered less than 3 months ago: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal57.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal57.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal57.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 3 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal57.3-bundle.json" }
  

  @patient=Meningococcal58.3
  Scenario: One meningococcal primary series dose was administered, Client's age was less than or equal to 23 months when the primary series was started, and The latest meningococcal dose was administered more than 3 months ago: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal58.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal58.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal58.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second meningococcal dose as client's age was less than 23 months when the primary series was started and the latest meningococcal dose was administered more than 3 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal58.3-bundle.json" }
  

  @patient=Meningococcal59.2
  Scenario: One meningococcal primary series dose was administered and Client's age was more than 23 months when the primary series was started: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal59.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal59.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal59.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Meningococcal immunization schedule is complete as client's age was more than 23 months when primary series was started. One primary series dose was administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal59.2-bundle.json" }
  

  @patient=Meningococcal60.1
  Scenario: Two meningococcal primary series doses were administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal60.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal60.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal60.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Meningococcal immunization schedule is complete. Two primary series doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal60.1-bundle.json" }
  
