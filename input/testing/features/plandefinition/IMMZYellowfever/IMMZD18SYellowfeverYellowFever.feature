
Feature: IMMZ.D18.S.Yellow fever schedule Decision Table IMMZ.D18.S.Yellow fever schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-17"


    And def resultContent = {}
    And resultContent[6] = "The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area."


  @patient=Yellowfever07.2
  Scenario: No yellow fever primary series doses were administered and Client's age is less than 9 months: Client is not due for yellow fever vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever07.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SYellowfeverYellowFever/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever07.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Yellowfever07.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[6]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever07.2-bundle.json" }
    

  @patient=Yellowfever08.3
  Scenario: No yellow fever primary series doses were administered, Client's age is more than or equal to 9 months, and Live vaccine was administered in the past 4 weeks: Client is not due for yellow fever vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever08.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SYellowfeverYellowFever/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever08.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Yellowfever08.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[6]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever08.3-bundle.json" }
    

  @patient=Yellowfever09.3
  Scenario: No yellow fever primary series doses were administered, Client's age is more than or equal to 9 months, and No live vaccine was administered in the past 4 weeks: Client is due for yellow fever vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SYellowfeverYellowFever/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever09.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Yellowfever09.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[6]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever09.3-bundle.json" }
    

  @patient=Yellowfever10.1
  Scenario: One yellow fever primary series dose was administered: Yellow fever immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever10.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SYellowfeverYellowFever/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever10.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Yellowfever10.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever10.1-bundle.json" }
    
