
Feature: IMMZ.D5.DT.Pneumococcal contraindications Decision Table IMMZ.D5.DT.Pneumococcal contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-10"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE13"


  @patient=Pneumococcal61.1
  Scenario: The client has a history of anaphylactic reactions: Pneumococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal61.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTPneumococcalContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal61.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal61.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with pneumococcal if client has a history of anaphylactic reaction to any component of the vaccine."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal61.1-bundle.json" }
  

  @patient=Pneumococcal62.1
  Scenario: The client has a history of severe allergic reactions: Pneumococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal62.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTPneumococcalContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal62.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal62.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with pneumococcal if client has a history of severe allergic reactions to any component of the vaccine."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal62.1-bundle.json" }
  
