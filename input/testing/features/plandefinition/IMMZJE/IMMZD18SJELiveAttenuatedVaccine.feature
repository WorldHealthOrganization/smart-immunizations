
Feature: IMMZ.D18.S.JE.Live attenuated vaccination schedule Decision Table Live attenuated vaccination schedule (1-dose scheme)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-14"


    And def resultContent = {}
    And resultContent[19] = "Live attenuated vaccine: Single dose administered at ≥ 8 months of age"


  @patient=JE20.1
  Scenario: Client's age is less than 8 months: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE20.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJELiveAttenuatedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE20.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE20.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE20.1-bundle.json" }
    

  @patient=JE21.3
  Scenario: No JE primary series doses were administered, Client's age is more than or equal to 8 months, and No live vaccine was administered in the last 4 weeks: Client is due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE21.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJELiveAttenuatedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE21.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE21.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE21.3-bundle.json" }
    

  @patient=JE22.3
  Scenario: No JE primary series doses were administered, Client's age is more than or equal to 8 months, and Live vaccine was administered in the last 4 weeks: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE22.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJELiveAttenuatedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE22.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE22.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE22.3-bundle.json" }
    

  @patient=JE23.1
  Scenario: One JE primary series dose was administered: JE immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE23.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJELiveAttenuatedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE23.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/JE23.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE23.1-bundle.json" }
    
