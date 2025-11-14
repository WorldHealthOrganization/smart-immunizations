
Feature: IMMZ.D5.DT.JE contraindications Decision Table IMMZ.D5.DT.JE contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-14"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE8"


  @patient=JE40.1
  Scenario: The client is immunocomprised: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE40.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTJEContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE40.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/JE40.1'
    And resultWithoutMedication.contained[1].payload.contentString = "The client is immunocompromised, consider risks of vaccination and make a judgement. Inactivated Vero cell-derived vaccines are preferred in immunocompromised clients."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE40.1-bundle.json" }
  

  @patient=JE41.1
  Scenario: The client is currently pregnant: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE41.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTJEContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE41.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/JE41.1'
    And resultWithoutMedication.contained[1].payload.contentString = "The client is currently pregnant, consider risks of vaccination and make a judgement. Inactivated Vero cell-derived vaccines are preferred over live attenuated or live recombinant vaccines."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE41.1-bundle.json" }
  
