
Feature: IMMZ.D18.S.Rubella.Low incidence schedule Decision Table Schedule for countries with low incidence of rubella

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"


    And def resultContent = {}
    And resultContent[18] = "Rubella dose 1 should be provided if the client's age is at least 12 months"


  @patient=Rubella19.1
  Scenario: Client's age is less than 12 months: Client is not due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella19.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRubellaLowIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella19.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rubella19.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella19.1-bundle.json" }
    

  @patient=Rubella20.3
  Scenario: No rubella primary series dose was administered, Client's age is more than or equal to 12 months, and No live vaccine was administered in the last 4 weeks: Client is due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella20.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRubellaLowIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella20.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rubella20.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella20.3-bundle.json" }
    

  @patient=Rubella21.3
  Scenario: No rubella primary series dose was administered, Client's age is more than or equal to 12 months, and Live vaccine was administered in the last the 4 weeks: Client is not due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella21.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRubellaLowIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella21.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rubella21.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella21.3-bundle.json" }
    

  @patient=Rubella22.1
  Scenario: One rubella primary series dose was administered: Rubella immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRubellaLowIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella22.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Rubella22.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella22.1-bundle.json" }
    
