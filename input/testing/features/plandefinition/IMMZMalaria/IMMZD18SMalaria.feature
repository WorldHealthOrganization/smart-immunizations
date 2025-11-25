
Feature: IMMZ.D18.S.Malaria schedule Decision Table 4-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"


    And def resultContent = {}
    And resultContent[7] = "WHO recommends that the first dose of vaccine be administered from 5 months of age."

    And resultContent[8] = "There should be a minimum interval of 4 weeks between doses."

    And resultContent[9] = "There should be a minimum interval of 4 weeks between doses."

    And resultContent[10] = "There should be a minimum interval of 4 weeks between doses. The fourth dose should be provided approximately 12–18 months after the third dose to prolong the duration of protection."


  @patient=Malaria08.1
  Scenario: Client's age is less than 5 months: Client is not due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Malaria08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria08.1-bundle.json" }
    

  @patient=Malaria09.2
  Scenario: No malaria primary series doses were administered and Client's age is more than or equal to 5 months: Client is due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Malaria09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria09.2-bundle.json" }
    

  @patient=Malaria10.2
  Scenario: One malaria primary series dose was administered and The latest malaria dose was administered less than 4 weeks ago: Client is not due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria10.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Malaria10.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria10.2-bundle.json" }
    

  @patient=Malaria11.2
  Scenario: One malaria primary series dose was administered and The latest malaria dose was administered more than 4 weeks ago: Client is due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria11.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Malaria11.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria11.2-bundle.json" }
    

  @patient=Malaria12.2
  Scenario: Two malaria primary series doses were administered and The latest malaria dose was administered less than 4 weeks ago: Client is not due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria12.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria12.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Malaria12.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria12.2-bundle.json" }
    

  @patient=Malaria13.2
  Scenario: Two malaria primary series doses were administered and The latest malaria dose was administered more than 4 weeks ago: Client is due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria13.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria13.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Malaria13.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria13.2-bundle.json" }
    

  @patient=Malaria14.2
  Scenario: Three malaria primary series doses were administered and The latest malaria dose was administered less than 4 weeks ago: Client is not due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria14.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria14.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Malaria14.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria14.2-bundle.json" }
    

  @patient=Malaria15.2
  Scenario: Three malaria primary series doses were administered and The latest malaria dose was administered more than 4 weeks ago: Client is due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria15.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria15.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Malaria15.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria15.2-bundle.json" }
    

  @patient=Malaria16.1
  Scenario: Four malaria primary series doses were administered: Malaria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria16.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria16.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Malaria16.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria16.1-bundle.json" }
    
