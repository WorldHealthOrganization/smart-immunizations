
Feature: IMMZ.D5.DT.Seasonal influenza contraindications Decision Table IMMZ.D5.DT.Seasonal influenza contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE18"


  @patient=Seasonalinfluenza21.1
  Scenario: The client has a history of anaphylactic reactions: Seasonal influenza vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza21.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTSeasonalInfluenzaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza21.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza21.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with seasonal influenza if client has had a severe allergic reaction (e.g. anaphylaxis) after a previous dose or to a vaccine component."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza21.1-bundle.json" }
  

  @patient=Seasonalinfluenza22.1
  Scenario: The client has a history of severe allergic reactions after a previous dose or to a vaccine component: Seasonal influenza vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTSeasonalInfluenzaContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza22.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza22.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with seasonal influenza if client has had a severe allergic reaction (e.g. anaphylaxis) after a previous dose or to a vaccine component."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza22.1-bundle.json" }
  
