
Feature: IMMZ.D5.DT.Hib contraindications Decision Table IMMZ.D5.DT.Hib contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-07"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE4"


  @patient=Hib56.1
  Scenario: The client has a history of severe allergic reactions: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib56.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTHibContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib56.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib56.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib56.1-bundle.json" }
  
