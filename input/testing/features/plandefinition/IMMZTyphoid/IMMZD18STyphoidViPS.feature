
Feature: IMMZ.D18.S.Typhoid.ViPS schedule Decision Table Unconjugated Vi polysaccharide (ViPS), 1 dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"


    And def resultContent = {}
    And resultContent[18] = "Typhoid dose 1 should be provided if the client's age is over 2 years, and the region recommends typhoid vaccination."

    And resultContent[19] = "Revaccination is recommended every 3 years for ViPS."


  @patient=Typhoid19.1
  Scenario: Client's age is less than 2 years: Client is not due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid19.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidViPS/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid19.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid19.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid19.1-bundle.json" }
    

  @patient=Typhoid20.2
  Scenario: No typhoid primary series doses were administered and Client's age is more than or equal to 2 years: Client is due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid20.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidViPS/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid20.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid20.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid20.2-bundle.json" }
    

  @patient=Typhoid21.2
  Scenario: One typhoid primary series dose was administered and The latest typhoid dose was administered less than 3 years ago: Primary series is complete. Client is not due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid21.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidViPS/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid21.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid21.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid21.2-bundle.json" }
    

  @patient=Typhoid22.2
  Scenario: One typhoid primary series dose was administered and The latest typhoid dose was administered more than 3 years ago: Primary series is complete. Client is due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid22.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidViPS/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid22.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid22.2'
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid22.2-bundle.json" }
    
