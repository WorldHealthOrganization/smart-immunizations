
Feature: IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose Decision Table Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE10"


  @patient=Meningococcal45.1
  Scenario: Client's age is less than 2 years: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal45.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal45.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal45.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first meningococcal dose as client's age is less than 2 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal45.1-bundle.json" }
  

  @patient=Meningococcal46.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than or equal to 2 years: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal46.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal46.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal46.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client's age is within appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal46.2-bundle.json" }
  

  @patient=Meningococcal47.1
  Scenario: One meningococcal primary series dose was administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal47.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal47.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal47.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Meningococcal immunization schedule is complete. One primary series dose was administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal47.1-bundle.json" }
  
