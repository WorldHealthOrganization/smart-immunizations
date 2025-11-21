
Feature: IMMZ.D5.DT.Meningococcal contraindications Decision Table IMMZ.D5.DT.Meningococcal contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE10"


  @patient=Meningococcal78.1
  Scenario: The client has history of severe allergic reactions: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal78.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMeningococcalContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal78.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal78.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal78.1-bundle.json" }
  
