
Feature: IMMZ.D18.S.Measles.Supplementary dose schedule Decision Table Measles supplementary dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-12"


    And def resultContent = {}
    And resultContent[47] = "Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved."


  @patient=Measles48.3
  Scenario: Measles supplementary dose was not administered, Measles routine immunization schedule is complete, and Live vaccine was administered in the past 4 weeks: Client is not due for measles supplementary dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles48.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesSupplementaryDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles48.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles48.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[47])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles48.3-bundle.json" }
    

  @patient=Measles49.3
  Scenario: Measles supplementary dose was not administered, Measles routine immunization schedule is complete, and No live vaccine was administered in the past 4 weeks: Consider measles supplementary dose. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles49.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesSupplementaryDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles49.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles49.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[47])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles49.3-bundle.json" }
    

  @patient=Measles50.1
  Scenario: Measles supplementary dose was administered: Measles immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles50.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesSupplementaryDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles50.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Measles50.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles50.1-bundle.json" }
    
