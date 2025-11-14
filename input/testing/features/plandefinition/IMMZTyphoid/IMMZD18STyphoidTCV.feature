
Feature: IMMZ.D18.S.Typhoid.TCV schedule Decision Table Typhoid conjugate vaccine (TCV), 1 dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"


    And def resultContent = {}
    And resultContent[7] = "TCV dose 1 should be provided if the client's age is over 6 months, and the region recommends typhoid vaccination."


  @patient=Typhoid08.1
  Scenario: Client's age is less than 6 months: Client is not due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTCV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid08.1-bundle.json" }
    

  @patient=Typhoid09.2
  Scenario: No typhoid primary series doses were administered and Client's age is between 6 months and 45 years: Client is due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTCV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid09.2-bundle.json" }
    

  @patient=Typhoid10.2
  Scenario: No typhoid primary series doses were administered and Client's age is more than or equal to 45 years: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTCV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid10.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Typhoid10.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid10.2-bundle.json" }
    

  @patient=Typhoid11.1
  Scenario: One typhoid primary series dose was administered: Typhoid immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid11.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTCV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid11.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Typhoid11.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid11.1-bundle.json" }
    
