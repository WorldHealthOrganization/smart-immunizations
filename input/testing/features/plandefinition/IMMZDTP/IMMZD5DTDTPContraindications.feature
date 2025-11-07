
Feature: IMMZ.D5.DT.DTP contraindications Decision Table IMMZ.D5.DT.DTP contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE19"


  @patient=DTP88.1
  Scenario: The client has a history of anaphylactic reactions: Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP88.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDTPContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP88.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP88.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with pertussis and/or tetanus if the client has had a severe anaphylactic reaction to a vaccine component or reaction following a prior dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP88.1-bundle.json" }
  

  @patient=DTP89.1
  Scenario: The client currently has a severe acute illness: Tetanus vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP89.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDTPContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP89.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP89.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with tetanus as tetanus vaccination is contraindicated for clients with severe acute illness"
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP89.1-bundle.json" }
  
