
Feature: IMMZ.D18.S.Measles.MCV dose 0 schedule Decision Table Measles-containing vaccine dose 0 (MCV0) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-12"


    And def resultContent = {}
    And resultContent[35] = "In the following situations, a supplementary dose of MCV should be given to infants from 6 months of age: \n• during a measles outbreak as part of intensified service delivery;\n• during campaigns in settings where the risk of measles among infants aged under 9 months remains high (e.g. in endemic countries experiencing regular outbreaks);\n• for internally displaced populations and refugees, and populations in conflict zones;\n• for individual infants at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks such as day-care facilities);\n• for infants travelling to countries experiencing measles outbreaks;\n• for infants known to be HIV-infected or exposed (i.e. born to a woman infected with HIV)."


  @patient=Measles36.1
  Scenario: Client's age is less than 6 months: Client is not due for MCV0
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles36.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles36.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles36.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles36.1-bundle.json" }
    

  @patient=Measles37.3
  Scenario: MCV0 was not administered, Client's age is between 6 months and 9 months, and Live vaccine was administered in the last 4 weeks: Client is not due for MCV0
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles37.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles37.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles37.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles37.3-bundle.json" }
    

  @patient=Measles38.3
  Scenario: MCV0 was not administered, Client's age is between 6 months and 9 months, and No live vaccine was administered in the last 4 weeks: Consider MCV0.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles38.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles38.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles38.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles38.3-bundle.json" }
    

  @patient=Measles39.1
  Scenario: Client's age is more than or equal to 9 months: Client is not due for MCV0
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles39.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles39.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Measles39.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles39.1-bundle.json" }
    

  @patient=Measles40.1
  Scenario: MCV0 was administered: Client is not due for MCV0
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles40.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles40.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Measles40.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles40.1-bundle.json" }
    
