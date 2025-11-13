
Feature: IMMZ.D5.DT.Rubella contraindications Decision Table IMMZ.D5.DT.Rubella contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE17"


  @patient=Rubella28.1
  Scenario: The client is currently pregnant: Rubella vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella28.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRubellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella28.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rubella28.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with rubella as rubella vaccination is contraindicated for pregnant client."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella28.1-bundle.json" }
  

  @patient=Rubella29.1
  Scenario: The client is planning to get pregnant in next month: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella29.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRubellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella29.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rubella29.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Discuss pregnancy intentions with client, consider risks of vaccination and make a clinical judgement. Clients planning a pregnancy are advised to avoid pregnancy for 1 month after rubella vaccination."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella29.1-bundle.json" }
  

  @patient=Rubella30.1
  Scenario: The client is receiving blood products: Rubella vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella30.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRubellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella30.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rubella30.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with rubella as rubella vaccination is contraindicated until at least 3 months after stopping receiving blood products."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella30.1-bundle.json" }
  

  @patient=Rubella31.1
  Scenario: The client has history of severe allergic reactions: Rubella vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella31.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRubellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella31.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rubella31.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with rubella if client has experienced a severe allergic reaction after a previous vaccine dose or vaccine component."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella31.1-bundle.json" }
  

  @patient=Rubella32.1
  Scenario: The client has symptomatic HIV infection: Rubella vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella32.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRubellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella32.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rubella32.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with symptomatic HIV infection."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella32.1-bundle.json" }
  

  @patient=Rubella33.1
  Scenario: The client has TB disease: Rubella vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella33.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRubellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella33.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rubella33.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with active TB."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella33.1-bundle.json" }
  

  @patient=Rubella34.1
  Scenario: The client has immunodeficiency syndromes: Rubella vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella34.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRubellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella34.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rubella34.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients with severe immunodeficiency."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella34.1-bundle.json" }
  

  @patient=Rubella35.1
  Scenario: The client is exposed to immunosuppressive treatment: Rubella vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella35.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRubellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella35.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rubella35.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with rubella as rubella vaccination is contraindicated for clients receiving or exposed to immunosuppressive therapy."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella35.1-bundle.json" }
  
