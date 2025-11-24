
Feature: IMMZ.D5.DT.Dengue contraindications Decision Table IMMZ.D5.DT.Dengue contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE25"


  @patient=Dengue37.1
  Scenario: The client is immunocompromised: Dengue vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue37.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue37.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue37.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with dengue as dengue vaccination is contraindicated in immunocompromised individuals"
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue37.1-bundle.json" }
  

  @patient=Dengue38.1
  Scenario: The client is severely immunocompromised: Dengue vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue38.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue38.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue38.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with dengue as dengue vaccination is contraindicated in immunocompromised individuals"
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue38.1-bundle.json" }
  

  @patient=Dengue39.1
  Scenario: The client is currently pregnant: Dengue vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue39.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue39.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue39.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with dengue as dengue vaccination is contraindicated for pregnant women."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue39.1-bundle.json" }
  

  @patient=Dengue40.1
  Scenario: The client is currently lactating: Dengue vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue40.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue40.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue40.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with dengue as dengue vaccination is contraindicated for lactating women."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue40.1-bundle.json" }
  

  @patient=Dengue41.1
  Scenario: The client has history of severe allergic reactions: Dengue vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue41.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue41.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue41.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with dengue if client has had a severe allergic reaction to any component of the dengue vaccine or after prior administration of the dengue vaccine."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue41.1-bundle.json" }
  

  @patient=Dengue42.1
  Scenario: The client has history of anaphylactic reactions: Dengue vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue42.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue42.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue42.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate for dengue if client has had a severe allergic reaction to any component of the dengue vaccine or after prior administration of the dengue vaccine."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue42.1-bundle.json" }
  

  @patient=Dengue43.1
  Scenario: The client has immunodeficiency syndromes: Dengue vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue43.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue43.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue43.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with dengue as dengue vaccination is contraindicated in immunocompromised individuals"
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue43.1-bundle.json" }
  

  @patient=Dengue44.1
  Scenario: The client is severely immunosuppressed: Dengue vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue44.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue44.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue44.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with dengue as dengue vaccination is contraindicated in severely immunosuppresed individuals."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue44.1-bundle.json" }
  

  @patient=Dengue45.1
  Scenario: The client has symptomatic HIV infection: Dengue vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue45.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTDengueContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue45.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue45.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with dengue as dengue vaccination is contraindicated in individuals with symptomatic HIV."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue45.1-bundle.json" }
  
