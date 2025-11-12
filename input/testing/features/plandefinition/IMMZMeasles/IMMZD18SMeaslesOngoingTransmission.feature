
Feature: IMMZ.D18.S.Measles.Ongoing transmission schedule Decision Table Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-12"


    And def resultContent = {}
    And resultContent[7] = "The client is due for MCV1 if the client is at least 9 months of age."

    And resultContent[8] = "The client is due for MCV2 if the client is at least 15 months of age."


  @patient=Measles08.1
  Scenario: Client's age is less than 9 months: Client is not due for first dose of measles-containing vaccine (MCV1)
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesOngoingTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles08.1-bundle.json" }
    

  @patient=Measles09.3
  Scenario: No measles primary series doses were administered, Client's age is more than or equal to 9 months, and No live vaccine was administered in the last 4 weeks: Client is due for MCV1
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesOngoingTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles09.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles09.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles09.3-bundle.json" }
    

  @patient=Measles10.3
  Scenario: No measles primary series doses were administered, Client's age is more than or equal to 9 months, and Live vaccine was administered in the last 4 weeks: Client is not due for MCV1
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesOngoingTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles10.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles10.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles10.3-bundle.json" }
    

  @patient=Measles11.2
  Scenario: MCV1 was administered and Client's age is less than 15 months: Client is not due for second dose of measles-containing vaccine (MCV2)
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesOngoingTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles11.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles11.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles11.2-bundle.json" }
    

  @patient=Measles12.3
  Scenario: MCV1 was administered, Client's age is more than or equal to 15 months, and No live vaccine was administered in the last 4 weeks: Client is due for MCV2
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles12.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesOngoingTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles12.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles12.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles12.3-bundle.json" }
    

  @patient=Measles13.3
  Scenario: MCV1 was administered, Client's age is more than or equal to 15 months, and Live vaccine was administered in the last 4 weeks: Client is not due for MCV2
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles13.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesOngoingTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles13.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles13.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles13.3-bundle.json" }
    

  @patient=Measles14.1
  Scenario: MCV2 was administered: Measles primary series is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles14.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesOngoingTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles14.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Measles14.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles14.1-bundle.json" }
    
