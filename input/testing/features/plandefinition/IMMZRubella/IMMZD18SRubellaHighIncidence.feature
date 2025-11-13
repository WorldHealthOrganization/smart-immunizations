
Feature: IMMZ.D18.S.Rubella.High incidence schedule Decision Table Schedule for countries with high incidence and mortality from rubella

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"


    And def resultContent = {}
    And resultContent[7] = "Rubella dose 1 should be provided if the client's age is at least 9 months"


  @patient=Rubella08.1
  Scenario: Client's age is less than 9 months: Client is not due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRubellaHighIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rubella08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella08.1-bundle.json" }
    

  @patient=Rubella09.3
  Scenario: No rubella primary series dose was administered, Client's age is more than or equal to 9 months, and No live vaccine was administered in the last 4 weeks: Client is due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRubellaHighIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella09.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rubella09.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella09.3-bundle.json" }
    

  @patient=Rubella10.3
  Scenario: No rubella primary series dose was administered, Client's age is more than or equal to 9 months, and Live vaccine was administered in the last 4 weeks: Client is not due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRubellaHighIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella10.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rubella10.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella10.3-bundle.json" }
    

  @patient=Rubella11.1
  Scenario: One rubella primary series dose was administered: Rubella immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella11.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRubellaHighIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella11.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Rubella11.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella11.1-bundle.json" }
    
