
Feature: IMMZ.D2.DT.Typhoid.ViPS Decision Table Unconjugated Vi polysaccharide (ViPS) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE21"


  @patient=Typhoid19.1
  Scenario: Client's age is less than 2 years: Client is not due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid19.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidViPS/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid19.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid19.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with typhoid dose as client's age is less than 2 years.\nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid19.1-bundle.json" }
  

  @patient=Typhoid20.2
  Scenario: No typhoid primary series doses were administered and Client's age is more than or equal to 2 years: Client is due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid20.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidViPS/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid20.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Typhoid20.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with typhoid dose as no typhoid doses were administered and client is within appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid20.2-bundle.json" }
  

  @patient=Typhoid21.2
  Scenario: One typhoid primary series dose was administered and The latest typhoid dose was administered less than 3 years ago: Primary series is complete. Client is not due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid21.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidViPS/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid21.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid21.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with typhoid booster dose as the latest typhoid dose was administered less than 3 years ago.\nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid21.2-bundle.json" }
  

  @patient=Typhoid22.2
  Scenario: One typhoid primary series dose was administered and The latest typhoid dose was administered more than 3 years ago: Primary series is complete. Client is due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid22.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidViPS/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid22.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Typhoid22.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with typhoid booster dose as the latest dose was administered more than 3 years ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid22.2-bundle.json" }
  
