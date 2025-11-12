
Feature: IMMZ.D5.DT.Measles contraindications Decision Table IMMZ.D5.DT.Measles contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-12"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE9"


  @patient=Measles56.1
  Scenario: The client is pregnant: Measles vaccination contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles56.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMeaslesContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles56.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Measles56.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with measles as measles vaccination is contraindicated for pregnant client."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles56.1-bundle.json" }
  

  @patient=Measles57.1
  Scenario: The client has history of anaphylactic reactions: Measles vaccination could be contraindicated. Clinical judgement required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles57.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMeaslesContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles57.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles57.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with measles if client has history of anaphylactic reaction to any component of the vaccine (e.g. neomycin or gelatin)."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles57.1-bundle.json" }
  

  @patient=Measles58.1
  Scenario: The client has history of severe allergic reactions: Clinical judgement required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles58.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMeaslesContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles58.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles58.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with measles if client has history of severe allergic reactions to any component of the vaccine (e.g. neomycin or gelatin)."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles58.1-bundle.json" }
  

  @patient=Measles59.1
  Scenario: The client is severely immunosuppressed: Measles vaccination contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles59.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMeaslesContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles59.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Measles59.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with measles as measles vaccination is contraindicated for severely immunosuppressed client."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles59.1-bundle.json" }
  

  @patient=Measles60.1
  Scenario: The client has a symptomatic HIV infection: Clinical judgement required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles60.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMeaslesContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles60.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles60.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client has symptomatic HIV infection. Measles vaccination may be considered if the client is not severely immunosuppressed according to conventional definitions, consider risks of vaccination and make a clinical judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles60.1-bundle.json" }
  
