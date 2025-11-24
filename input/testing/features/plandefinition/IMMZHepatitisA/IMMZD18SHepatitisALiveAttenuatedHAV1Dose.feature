
Feature: IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule Decision Table Live attenuated hepatitis A virus (HAV), 1 dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"


    And def resultContent = {}
    And resultContent[29] = "Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose."


  @patient=HepatitisA30.1
  Scenario: Client's age is less than 18 months: Client is not due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA30.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisALiveAttenuatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA30.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA30.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[29]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA30.1-bundle.json" }
    

  @patient=HepatitisA31.3
  Scenario: No hepatitis A primary series dose was administered, Client's age is more than or equal to 18 months, and Live vaccine was administered in the last 4 weeks: Client is not due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA31.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisALiveAttenuatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA31.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA31.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[29]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA31.3-bundle.json" }
    

  @patient=HepatitisA32.3
  Scenario: No hepatitis A primary series dose was administered, Client's age is more than or equal to 18 months, and No live vaccine was administered in the last 4 weeks: Client is due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA32.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisALiveAttenuatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA32.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HepatitisA32.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[29]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA32.3-bundle.json" }
    

  @patient=HepatitisA33.1
  Scenario: One hepatitis A primary series dose was administered: Hepatitis A immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA33.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHepatitisALiveAttenuatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA33.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/HepatitisA33.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA33.1-bundle.json" }
    
