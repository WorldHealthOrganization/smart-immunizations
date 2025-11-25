
Feature: IMMZ.D5.DT.Varicella contraindications Decision Table IMMZ.D5.DT.Varicella contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE22"


  @patient=Varicella34.1
  Scenario: The client is currently pregnant: Varicella vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella34.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTVaricellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella34.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Varicella34.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with varicella as varicella vaccination is contraindicated for pregnant client."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella34.1-bundle.json" }
  

  @patient=Varicella35.1
  Scenario: The client is planning to get pregnant in the next month: Clinical judgement is required. Create clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella35.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTVaricellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella35.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella35.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Discuss pregnancy intentions, consider risks of vaccination and make a clinical judgement. It is recommended to delay pregnancy for 4 weeks after vaccination."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella35.1-bundle.json" }
  

  @patient=Varicella36.1
  Scenario: The client has immune deficiency: Varicella vaccination could be contraindicated. Clinical judgement is required. Create clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella36.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTVaricellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella36.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella36.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Varicella vaccination is usually contraindicated in clients with congenital or acquired immune deficiencies. Consider risks of vaccination and make a judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella36.1-bundle.json" }
  

  @patient=Varicella37.1
  Scenario: The client is immunocompromised: Clinical judgement is required. Create clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella37.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTVaricellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella37.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella37.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client is immunocompromised, consider risks of vaccination and make a judgement. Consider 2 dose schedule."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella37.1-bundle.json" }
  

  @patient=Varicella38.1
  Scenario: The client is receiving or has received medications that may be immunosuppressive: Clinical judgement is required. Create clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella38.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTVaricellaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella38.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella38.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client is receiving or has received medications that may be immunosuppressive, consider risks of vaccination and make a judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella38.1-bundle.json" }
  
