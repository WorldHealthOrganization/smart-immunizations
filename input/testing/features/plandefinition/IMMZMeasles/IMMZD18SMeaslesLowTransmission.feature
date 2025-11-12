
Feature: IMMZ.D18.S.Measles.Low transmission schedule Decision Table Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-12"


    And def resultContent = {}
    And resultContent[21] = "The client is due for MCV1 if the client is at least 12 months"

    And resultContent[22] = "The client is due for MCV2 if the client is at least 15 months."


  @patient=Measles22.1
  Scenario: Client's age is less than 12 months: Client is not due for MCV1
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles22.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles22.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles22.1-bundle.json" }
    

  @patient=Measles23.3
  Scenario: No measles primary series doses were administered, Client's age is more than or equal to 12 months, and No live vaccine was administered in the last 4 weeks: Client is due for MCV1
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles23.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles23.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles23.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[21])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles23.3-bundle.json" }
    

  @patient=Measles24.3
  Scenario: No measles primary series doses were administered, Client's age is more than or equal to 12 months, and Live vaccine was administered in the last 4 weeks: Client is not due for MCV1
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles24.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles24.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles24.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[21])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles24.3-bundle.json" }
    

  @patient=Measles25.2
  Scenario: MCV1 was administered and Client's age is less than 15 months: Client is not due for MCV2
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles25.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles25.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles25.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[22])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles25.2-bundle.json" }
    

  @patient=Measles26.3
  Scenario: MCV1 was administered, Client's age is more than or equal to 15 months, and No live vaccine was administered in the last 4 weeks: Client is due for MCV2
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles26.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles26.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles26.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[22])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles26.3-bundle.json" }
    

  @patient=Measles27.3
  Scenario: MCV1 was administered, Client's age is more than or equal to 15 months, and Live vaccine was administered in the last 4 weeks: Client is not due for MCV2
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles27.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles27.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles27.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[22])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles27.3-bundle.json" }
    

  @patient=Measles28.1
  Scenario: MCV2 was administered: Measles primary series is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles28.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles28.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Measles28.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles28.1-bundle.json" }
    
