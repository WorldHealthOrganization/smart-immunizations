
Feature: IMMZ.D18.S.Dengue schedule Decision Table CYD-TDV (Dengvaxia), 3-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"


    And def resultContent = {}
    And resultContent[7] = "Dengue dose 1 should be provided based on vaccination strategy"

    And resultContent[8] = "Dengue dose 2 should be provided if the previous dose was provide more than 6 months ago"

    And resultContent[9] = "Dengue dose 3 should be provided if the previous dose was provide more than 6 months ago"


  @patient=Dengue08.1
  Scenario: Client's age is less than 9 years: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Dengue08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue08.1-bundle.json" }
    

  @patient=Dengue09.1
  Scenario: Client's age is more than 45 years: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue09.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue09.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Dengue09.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue09.1-bundle.json" }
    

  @patient=Dengue10.1
  Scenario: Client's dengue serostatus is negative: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue10.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue10.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Dengue10.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue10.1-bundle.json" }
    

  @patient=Dengue11.3
  Scenario: No dengue primary series doses were administered, Client's age is between 9 years and 45 years, and Client's dengue serostatus is positive: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue11.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Dengue11.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue11.3-bundle.json" }
    

  @patient=Dengue12.4
  Scenario: One dengue primary series dose was administered, Client's age is between 9 years and 45 years, Client's dengue serostatus is positive, and The latest dengue dose was administered less than 6 months ago: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue12.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue12.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Dengue12.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue12.4-bundle.json" }
    

  @patient=Dengue13.4
  Scenario: One dengue primary series dose was administered, Client's age is between 9 years and 45 years, Client's dengue serostatus is positive, and The latest dengue dose was administered more than 6 months ago: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue13.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue13.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Dengue13.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue13.4-bundle.json" }
    

  @patient=Dengue14.4
  Scenario: Two dengue primary series doses were administered, Client's age is between 9 years and 45 years, Client's dengue serostatus is positive, and The latest dengue dose was administered less than 6 months ago: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue14.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue14.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Dengue14.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue14.4-bundle.json" }
    

  @patient=Dengue15.4
  Scenario: Two dengue primary series doses were administered, Client's age is between 9 years and 45 years, Client's dengue serostatus is positive, and The latest dengue dose was administered more than 6 months ago: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue15.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue15.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Dengue15.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue15.4-bundle.json" }
    

  @patient=Dengue16.2
  Scenario: Three dengue primary series doses were administered and Client's age is between 9 years and 45 years: Dengue immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue16.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue16.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Dengue16.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue16.2-bundle.json" }
    
