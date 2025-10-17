
Feature: IMMZ.D18.S.Polio.Birth dose schedule Decision Table Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-10-10"


    And def resultContent = {}
    And resultContent[7] = "bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio"


  @patient=Polio08.2
  Scenario: bOPV birth dose (a zero dose) was not administered and Client's age is less than 1 week: Client is due for the bOPV birth dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio08.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBirthDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio08.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio08.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio08.2-bundle.json" }
    

  @patient=Polio09.2
  Scenario: bOPV birth dose (a zero dose) was not administered and Client's age is more than or equal to 1 week: Client is not due for the bOPV birth dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBirthDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio09.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Polio09.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio09.2-bundle.json" }
    

  @patient=Polio10.1
  Scenario: bOPV birth dose (a zero dose) was administered: Client is not due for the bOPV birth dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio10.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBirthDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio10.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Polio10.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio10.1-bundle.json" }
    
