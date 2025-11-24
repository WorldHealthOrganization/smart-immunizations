
Feature: IMMZ.D5.DT.Rabies contraindications Decision Table IMMZ.D5.DT.Rabies contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE15"


  @patient=Rabies17.1
  Scenario: The client has history of severe allergic reactions: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rabies17.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRabiesContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rabies17.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rabies17.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rabies17.1-bundle.json" }
  
