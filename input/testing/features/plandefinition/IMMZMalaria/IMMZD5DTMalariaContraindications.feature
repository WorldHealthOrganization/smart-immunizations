
Feature: IMMZ.D5.DT.Malaria contraindications Decision Table IMMZ.D5.DT.Malaria contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE27"


  @patient=Malaria23.1
  Scenario: The client has hypersensitivity to any of the vaccine components: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria23.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMalariaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria23.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Malaria23.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria23.1-bundle.json" }
  
