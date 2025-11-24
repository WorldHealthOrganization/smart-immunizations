
Feature: IMMZ.D2.DT.Rabies Decision Table Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE15"


  @patient=Rabies08.1
  Scenario: No rabies primary series doses were administered: Client is due for rabies vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRabies/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rabies08.1'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first rabies dose as no rabies doses were administered and client is at high risk of exposure. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies08.1-bundle.json" }
  

  @patient=Rabies09.2
  Scenario: One rabies primary series doses were administered and The latest rabies dose was administered less than 7 days ago: Client is not due for rabies vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRabies/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rabies09.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies09.2-bundle.json" }
  

  @patient=Rabies10.2
  Scenario: One rabies primary series doses were administered and The latest rabies dose was administered more than 7 days ago: Client is due for rabies vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRabies/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies10.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rabies10.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second rabies dose as the latest rabies dose was administerd 7 or more days ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies10.2-bundle.json" }
  

  @patient=Rabies11.1
  Scenario: Two rabies primary series doses were administered: Rabies immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies11.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRabies/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies11.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rabies11.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Rabies immunization schedule is complete. Two rabies primary series doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies11.1-bundle.json" }
  
