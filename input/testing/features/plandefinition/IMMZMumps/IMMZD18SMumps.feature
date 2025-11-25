
Feature: IMMZ.D18.S.Mumps schedule Decision Table 2-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"


    And def resultContent = {}
    And resultContent[7] = "The first dose of the mumps-containing vaccine (monovalent or MMR [measles, mumps and rubella]) should be given at 12–18 months of age."

    And resultContent[8] = "The age of administration of the second dose may range from the second year of life to age at school entry (about 6 years of age). The minimum interval between the first and the second doses is 1 month."


  @patient=Mumps08.1
  Scenario: Client's age is less than 12 months: Client is not due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Mumps08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps08.1-bundle.json" }
    

  @patient=Mumps09.3
  Scenario: No mumps primary series doses were administered, Client's age is more than or equal to 12 months, and Live vaccine was administered in the past 4 weeks: Client is not due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps09.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Mumps09.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps09.3-bundle.json" }
    

  @patient=Mumps10.3
  Scenario: No mumps primary series doses were administered, Client's age is more than or equal to 12 months, and No live vaccine was administered in the past 4 weeks: Client is due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps10.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Mumps10.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps10.3-bundle.json" }
    

  @patient=Mumps11.2
  Scenario: One mumps primary series dose was administered and The latest mumps dose was administered less than 4 weeks ago: Client is not due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps11.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Mumps11.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps11.2-bundle.json" }
    

  @patient=Mumps12.3
  Scenario: One mumps primary series dose was administered, The latest mumps dose was administered more than 4 weeks ago, and Live vaccine was administered in the past 4 weeks: Client is not due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps12.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps12.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Mumps12.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps12.3-bundle.json" }
    

  @patient=Mumps13.3
  Scenario: One mumps primary series dose was administered, The latest mumps dose was administered more than 4 weeks ago, and No live vaccine was administered in the past 4 weeks: Client is due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps13.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps13.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Mumps13.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps13.3-bundle.json" }
    

  @patient=Mumps14.1
  Scenario: Two mumps primary series doses were administered: Mumps immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps14.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps14.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Mumps14.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps14.1-bundle.json" }
    
