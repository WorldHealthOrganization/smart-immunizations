
Feature: IMMZ.D5.DT.TBE contraindications Decision Table IMMZ.D5.DT.TBE contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-18"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE20"


  @patient=TBE69.1
  Scenario: The client is currently pregnant: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE69.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTTBEContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE69.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE69.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Conduct a risk–benefit assessment considering the incidence of the disease, consider risks of vaccination and make a clinical judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE69.1-bundle.json" }
  

  @patient=TBE70.1
  Scenario: The client has moderate to severe fever: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE70.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTTBEContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE70.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE70.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Consider postponing the vaccination if the client has fever > 38.5°C or other signs of serious disease. Consider risks of vaccination and make a clinical judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE70.1-bundle.json" }
  
