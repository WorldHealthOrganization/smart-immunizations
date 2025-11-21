
Feature: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses Decision Table MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE10"


  @patient=Meningococcal18.1
  Scenario: Client's age is less than 3 months: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal18.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal18.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal18.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first meningococcal dose as client's age is under 3 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal18.1-bundle.json" }
  

  @patient=Meningococcal19.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than or equal to 3 months: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal19.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal19.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal19.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal19.2-bundle.json" }
  

  @patient=Meningococcal20.2
  Scenario: One meningococcal primary series dose was administered and The latest meningococcal dose was administered less than 8 weeks ago: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal20.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal20.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal20.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 8 weeks ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal20.2-bundle.json" }
  

  @patient=Meningococcal21.2
  Scenario: One meningococcal primary series dose was administered and The latest meningococcal dose was administered more than 8 weeks ago: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal21.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal21.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal21.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second meningococcal dose as the latest meningococcal dose was administered more than 8 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal21.2-bundle.json" }
  

  @patient=Meningococcal22.1
  Scenario: Two meningococcal primary series doses were administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal22.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal22.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Meningococcal immunization schedule is complete. Two meningococcal primary series doses were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal22.1-bundle.json" }
  
