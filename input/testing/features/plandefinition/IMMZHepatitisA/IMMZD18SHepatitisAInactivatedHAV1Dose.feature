
Feature: IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule Decision Table Inactivated hepatitis A virus (HAV), 1-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"


    And def resultContent = {}
    And resultContent[19] = "WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months."


  @patient=HepatitisA20.1
  Scenario: Client's age is less than 12 months: Client is not due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA20.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisAInactivatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA20.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA20.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA20.1-bundle.json" }
    

  @patient=HepatitisA21.2
  Scenario: No hepatitis A primary series dose was administered and Client's age is more than or equal to 12 months: Client is due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA21.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisAInactivatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA21.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA21.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA21.2-bundle.json" }
    

  @patient=HepatitisA22.1
  Scenario: One hepatitis A primary series dose was administered: Hepatitis A immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisAInactivatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA22.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/HepatitisA22.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA22.1-bundle.json" }
    
