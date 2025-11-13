
Feature: IMMZ.D5.DT.HPV contraindications Decision Table IMMZ.D5.DT.HPV contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE7"


  @patient=HPV45.1
  Scenario: The client is currently pregnant: Human papillomavirus (HPV) vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV45.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTHPVContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV45.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/HPV45.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with HPV as HPV vaccination is contraindicated for pregnant client."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV45.1-bundle.json" }
  

  @patient=HPV46.1
  Scenario: The client has history of severe allergic reactions: HPV vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV46.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTHPVContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV46.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/HPV46.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with HPV if client has history of a severe allergic reaction after a previous HPV vaccine dose, or to a component of the vaccine."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV46.1-bundle.json" }
  
