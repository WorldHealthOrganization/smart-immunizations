
Feature: IMMZ.D18.S.JE.Live recombinant vaccination schedule Decision Table Live recombinant vaccination schedule (1-dose scheme)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-14"


    And def resultContent = {}
    And resultContent[30] = "Live recombinant vaccine: Single dose administered at ≥9 months of age"


  @patient=JE31.1
  Scenario: Client's age is less than 9 months: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE31.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJELiveRecombinantVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE31.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE31.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE31.1-bundle.json" }
    

  @patient=JE32.3
  Scenario: No JE primary series doses were administered, Client's age is more than or equal to 9 months, and No live vaccine was administered in the last 4 weeks: Client is due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE32.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJELiveRecombinantVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE32.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE32.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE32.3-bundle.json" }
    

  @patient=JE33.3
  Scenario: No JE primary series doses were administered, Client's age is more than or equal to 9 months, and Live vaccine was administered in the last 4 weeks: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE33.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJELiveRecombinantVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE33.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE33.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE33.3-bundle.json" }
    

  @patient=JE34.1
  Scenario: One JE primary series doses were administered: JE immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE34.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJELiveRecombinantVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE34.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/JE34.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE34.1-bundle.json" }
    
