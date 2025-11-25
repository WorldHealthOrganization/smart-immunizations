
Feature: IMMZ.D5.DT.Mumps contraindications Decision Table IMMZ.D5.DT.Mumps contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE11"


  @patient=Mumps20.1
  Scenario: The client is currently pregnant: Mumps vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps20.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMumpsContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps20.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Mumps20.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with mumps as mumps vaccination is contraindicated for pregnant individuals."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps20.1-bundle.json" }
  

  @patient=Mumps21.1
  Scenario: The client has allergy to vaccine components: Mumps vaccination could be contraindicated. Clinical judgement is required.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps21.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMumpsContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps21.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Mumps21.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with mumps if client has allergy to vaccine components, such as neomycin and gelatin."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps21.1-bundle.json" }
  

  @patient=Mumps22.1
  Scenario: The client has immune deficiency: Mumps vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMumpsContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps22.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Mumps22.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with mumps as mumps vaccination is contraindicated in individuals with immunodeficiency syndromes."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps22.1-bundle.json" }
  

  @patient=Mumps23.1
  Scenario: The client is severely immunosuppressed: Mumps vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps23.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTMumpsContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps23.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Mumps23.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with mumps as mumps vaccination is contraindicated in immunosuppressed individuals."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps23.1-bundle.json" }
  
