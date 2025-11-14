
Feature: IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule Decision Table Inactivated Vero cell-derived vaccination schedule (2-dose scheme)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-14"


    And def resultContent = {}
    And resultContent[7] = "JE dose 1 should be provided if the client's age is 6 months or older and the country is administering the Inactivated Vero cell-derived antigen."

    And resultContent[8] = "JE inactivated Vero cell-derived vaccine dose 2 should be provided if dose 1 was administered at least 4 weeks ago."


  @patient=JE08.1
  Scenario: Client's age is less than 6 months: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE08.1-bundle.json" }
    

  @patient=JE09.2
  Scenario: No JE primary series doses were administered and Client's age is more than or equal to 6 months: Client is due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE09.2-bundle.json" }
    

  @patient=JE10.2
  Scenario: One JE primary series dose was administered and The latest JE dose was administered less than 4 weeks ago: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE10.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE10.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE10.2-bundle.json" }
    

  @patient=JE11.2
  Scenario: One JE primary series dose was administered and The latest JE dose was administered more than 4 weeks ago: Client is due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE11.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/JE11.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE11.2-bundle.json" }
    

  @patient=JE12.1
  Scenario: Two JE primary series doses were administered: JE immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE12.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE12.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/JE12.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE12.1-bundle.json" }
    
