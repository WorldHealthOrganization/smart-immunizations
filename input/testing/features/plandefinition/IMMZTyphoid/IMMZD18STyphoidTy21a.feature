
Feature: IMMZ.D18.S.Typhoid.Ty21a schedule Decision Table Live attenuated Ty21a vaccine, 3-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"


    And def resultContent = {}
    And resultContent[29] = "Ty21a – 3-doses to be administered orally every second day from 6 years of age."

    And resultContent[30] = "Revaccination (3-doses) is recommended every 3–7 years for Ty21a."


  @patient=Typhoid30.1
  Scenario: Client's age is less than 6 years: Client is not due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid30.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid30.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid30.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[29]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid30.1-bundle.json" }
    

  @patient=Typhoid31.3
  Scenario: Client's age is more than or equal to 6 years, Primary series is not complete, and No live vaccine, other than typhoid, was administered in the past 4 weeks: Client is due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid31.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid31.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid31.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[29]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid31.3-bundle.json" }
    

  @patient=Typhoid32.3
  Scenario: Client's age is more than or equal to 6 years, Primary series is not complete, and Live vaccine, other than typhoid, was administered in the past 4 weeks: Client is not due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid32.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid32.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid32.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[29]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid32.3-bundle.json" }
    

  @patient=Typhoid33.3
  Scenario: Client's age is more than or equal to 6 years, Primary series is complete, and The latest typhoid dose was administered less than 3 years ago: Client is not due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid33.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid33.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid33.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid33.3-bundle.json" }
    

  @patient=Typhoid34.4
  Scenario: Client's age is more than or equal to 6 years, Primary series is complete, The latest typhoid dose was administered more than 3 years ago, and No live vaccine, other than typhoid, was administered in the past 4 weeks: Client is due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid34.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid34.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid34.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid34.4-bundle.json" }
    

  @patient=Typhoid35.4
  Scenario: Client's age is more than or equal to 6 years, Primary series is complete, The latest typhoid dose was administered more than 3 years ago, and Live vaccine, other than typhoid, was administered in the past 4 weeks: Client is not due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid35.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid35.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Typhoid35.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid35.4-bundle.json" }
    
