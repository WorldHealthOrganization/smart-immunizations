
Feature: IMMZ.D5.DT.Rotavirus contraindications Decision Table IMMZ.D5.DT.Rotavirus contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-11"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE16"


  @patient=Rotavirus25.1
  Scenario: The client has prior history of intussusception: Rotavirus vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus25.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus25.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rotavirus25.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with rotavirus as rotavirus vaccination is contraindicated for clients with prior history of intussusception."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus25.1-bundle.json" }
  

  @patient=Rotavirus26.1
  Scenario: The client has severe immunodeficiency: Rotavirus vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus26.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus26.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rotavirus26.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with rotavirus as rotavirus vaccincation is contraindicated for clients with severe immunodeficiency, including severe combined immunodeficiency."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus26.1-bundle.json" }
  

  @patient=Rotavirus27.1
  Scenario: The client has a history of severe allergic reactions: Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus27.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus27.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus27.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with rotavirus if client had severe allergic reactions to a previous rotavirus vaccine dose or rotavirus vaccine components.\nCheck if the client has no known severe hypersensitivity to rotavirus vaccines components."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus27.1-bundle.json" }
  

  @patient=Rotavirus28.1
  Scenario: The client has history of anaphylactic reactions: Rotavirus vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus28.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus28.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus28.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with rotavirus if client has history of anaphylactic reaction to a previous rotavirus vaccine dose or rotavirus vaccine components."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus28.1-bundle.json" }
  

  @patient=Rotavirus29.1
  Scenario: The client has altered immunocompetence: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus29.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus29.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus29.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client has altered immunocompetence other than severe combined immunodeficiency, consider risks of vaccination and make a judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus29.1-bundle.json" }
  

  @patient=Rotavirus30.1
  Scenario: The client has spina bifida: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus30.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus30.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus30.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client has spina bifida, consider risks of vaccination and make a judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus30.1-bundle.json" }
  

  @patient=Rotavirus31.1
  Scenario: The client has bladder exstrophy: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus31.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus31.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus31.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client has bladder exstrophy, consider risks of vaccination and make a judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus31.1-bundle.json" }
  

  @patient=Rotavirus32.1
  Scenario: The client has chronic gastrointestinal disease: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus32.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus32.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus32.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client has chronic gastrointestinal disease, consider risks of vaccination and make a judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus32.1-bundle.json" }
  

  @patient=Rotavirus33.1
  Scenario: The client has acute gastroenteritis: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus33.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus33.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus33.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client has acute gastroenteritis, consider risks of vaccination and make a judgement. Consider delaying rotavirus vaccination."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus33.1-bundle.json" }
  

  @patient=Rotavirus34.1
  Scenario: The client has moderate to severe fever: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus34.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTRotavirusContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus34.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus34.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Client has moderate to severe fever, consider risks of vaccination and make a judgement. Consider delaying rotavirus vaccination."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus34.1-bundle.json" }
  
