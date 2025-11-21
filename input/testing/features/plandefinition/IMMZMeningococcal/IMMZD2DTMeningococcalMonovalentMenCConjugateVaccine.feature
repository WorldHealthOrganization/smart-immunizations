
Feature: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine Decision Table Monovalent MenC conjugate vaccine schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE10"


  @patient=Meningococcal30.1
  Scenario: Client's age is less than 2 months: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal30.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal30.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal30.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first meningococcal dose as client's age is under 2 months. Check for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal30.1-bundle.json" }
  

  @patient=Meningococcal31.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than or equal to 2 months: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal31.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal31.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal31.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client is within appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal31.2-bundle.json" }
  

  @patient=Meningococcal32.3
  Scenario: One meningococcal primary series dose was administered, Client's age was less than or equal to 11 months when the primary series was started, and The latest meningococcal dose was administered less than 2 months ago: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal32.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal32.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal32.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 2 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal32.3-bundle.json" }
  

  @patient=Meningococcal33.3
  Scenario: One meningococcal primary series dose was administered, Client's age was less than or equal to 11 months when the primary series was started, and The latest meningococcal dose was administered more than 2 months ago: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal33.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal33.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal33.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second meningococcal dose as client was less than 11 months when primary series was started and latest meningococcal dose was administered more than 2 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal33.3-bundle.json" }
  

  @patient=Meningococcal34.2
  Scenario: One meningococcal primary series dose was administered and Client's age was more than 11 months when the primary series was started: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal34.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal34.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal34.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Meningococcal immunization schedule is complete as client's age was more than 11 months when primary series was started. One primary series dose was administered. Check for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal34.2-bundle.json" }
  

  @patient=Meningococcal35.3
  Scenario: Two meningococcal primary series doses were administered, The latest meningococcal dose was administered less than 1 year ago, and No meningococcal booster dose was administered: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal35.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal35.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal35.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 1 year ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal35.3-bundle.json" }
  

  @patient=Meningococcal36.3
  Scenario: Two meningococcal primary series doses were administered, The latest meningococcal dose was administered more than 1 year ago, and No meningococcal booster dose was administered: The primary series is complete. Client is due for meningococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal36.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal36.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal36.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with Meningococcal booster dose as no meningococcal booster dose was administered and the latest meningococcal dose was administered more than 1 year ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal36.3-bundle.json" }
  

  @patient=Meningococcal37.2
  Scenario: Two meningococcal primary series doses were administered and Meningococcal booster dose was administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal37.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal37.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal37.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Meningococcal immunization schedule is complete. Two primary series doses and one booster dose were administered. \nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal37.2-bundle.json" }
  
