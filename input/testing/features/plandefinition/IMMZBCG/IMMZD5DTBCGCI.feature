
Feature: IMMZ.D5.DT.BCG contraindications Decision Table Potential contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-07-31"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE1"


  @patient=BCG37.0
  Scenario: The client is pregnant: Bacille Calmette–Guérin (BCG) vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG37.0-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTBCGCI/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG37.0'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG37.0'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with BCG as BCG vaccination is not recommended during pregnancy"
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG37.0-bundle.json" }
  

  @patient=BCG38.0
  Scenario: The client has history of severe allergic reactions: BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG38.0-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTBCGCI/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG38.0'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG38.0'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with BCG if the client had previous allergic reaction to any component of the vaccine"
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG38.0-bundle.json" }
  

  @patient=BCG39.0
  Scenario: The client has immunodeficiency syndromes: BCG vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG39.0-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTBCGCI/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG39.0'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG39.0'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with BCG as BCG vaccination is contraindicated for clients with immunodeficiency syndromes"
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG39.0-bundle.json" }
  

  @patient=BCG40.01
  Scenario: The client is exposed to immunosuppressive treatment and Client's age is less than 1 year: BCG vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG40.01-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTBCGCI/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG40.01'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG40.01'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with BCG as BCG vaccination is contraindicated for clients undergoing immunosuppressive treatment"
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG40.01-bundle.json" }
  

  @patient=BCG41.01
  Scenario: The client is exposed to immunosuppressive treatment and Client's age is more than or equal to 1 year: BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG41.01-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTBCGCI/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG41.01'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG41.01'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with BCG if client is exposed to or receives immunosuppressive treatment"
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG41.01-bundle.json" }
  
