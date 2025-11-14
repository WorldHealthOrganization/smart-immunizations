
Feature: IMMZ.D5.DT.Typhoid contraindications Decision Table IMMZ.D5.DT.Typhoid contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE21"


  @patient=Typhoid41.1
  Scenario: The client has hypersensitivity to any component of the vaccine: Typhoid vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid41.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTTyphoidContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid41.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid41.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with typhoid if client has known hypersensitivity to any component of the vaccine."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid41.1-bundle.json" }
  

  @patient=Typhoid42.1
  Scenario: The client is currently pregnant: Typhoid vaccination is contraindicated for Ty21a vaccine. Clinical judgement is required for Typbar-TCV or ViPS vaccine. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid42.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTTyphoidContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid42.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid42.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with Ty21a vaccine as live attenuated Ty21a vaccine is contraindicated for pregnant clients. For Typbar-TCV or ViPS vaccine, check if an alternative typhoid vaccine is appropriate for the client, consider risks of vaccination and make a clinical judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid42.1-bundle.json" }
  

  @patient=Typhoid43.1
  Scenario: The client is currently taking antibiotics: Typhoid vaccination is contraindicated for Ty21a vaccine.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid43.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTTyphoidContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid43.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Typhoid43.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with Ty21a vaccine as Ty21a vaccine is contraindicated for clients who are taking antibiotics. Evaluate if other types of typhoid vacccines can be administered."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid43.1-bundle.json" }
  

  @patient=Typhoid44.2
  Scenario: The client's HIV status is positive and The client is not immunologically stable: Typhoid vaccination is contraindicated for Ty21a vaccine.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid44.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTTyphoidContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid44.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Typhoid44.2'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with Ty21a vaccine as Ty21a vaccine is contraindicated for HIV-infected client who are not immunologically stable."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid44.2-bundle.json" }
  
