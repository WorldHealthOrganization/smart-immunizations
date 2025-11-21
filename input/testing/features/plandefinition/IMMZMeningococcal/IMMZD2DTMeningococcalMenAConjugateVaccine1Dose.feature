
Feature: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose Decision Table MenA conjugate vaccine, 1-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE10"


  @patient=Meningococcal08.1
  Scenario: Client's age is less than 9 months: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with meningococcal dose as client's age is under 9 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal08.1-bundle.json" }
  

  @patient=Meningococcal09.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than 9 months: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with meningococcal dose as no meningococcal dose was administered and client is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal09.2-bundle.json" }
  

  @patient=Meningococcal10.1
  Scenario: One meningococcal primary series dose was administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal10.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal10.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal10.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Meningococcal immunization schedule is complete. One meningococcal primary series dose was administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal10.1-bundle.json" }
  
