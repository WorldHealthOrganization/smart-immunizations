
Feature: IMMZ.D18.S.Hib.2 doses with booster dose schedule Decision Table 2 primary doses with a booster dose (2p+1) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-07"


    And def resultContent = {}
    And resultContent[41] = "Hib dose 1 should be provided if the client is older than 6 weeks"

    And resultContent[42] = "Hib dose 2 should be provided if the client was given the previous dose more than 8 weeks ago"

    And resultContent[43] = "Hib booster dose should be provided if the client was given the previous dose more than 6 months ago"


  @patient=Hib42.1
  Scenario: Client's age is less than 6 weeks: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib42.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib42.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib42.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[41])
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib42.1-bundle.json" }
    

  @patient=Hib43.2
  Scenario: No Hib primary series doses were administered and Client's age is between 6 weeks and 5 years: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib43.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib43.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib43.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[41])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib43.2-bundle.json" }
    

  @patient=Hib44.4
  Scenario: One Hib primary series doses was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered less than 8 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib44.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib44.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib44.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[42])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib44.4-bundle.json" }
    

  @patient=Hib45.4
  Scenario: One Hib primary series doses was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered more than 8 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib45.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib45.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib45.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[42])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib45.4-bundle.json" }
    

  @patient=Hib46.3
  Scenario: One Hib primary series doses was administered, Client's age is at least 6 weeks and not more than 5 years, and Client's age was more than 1 year when first Hib dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib46.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib46.3'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib46.3'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib46.3-bundle.json" }
    

  @patient=Hib47.4
  Scenario: Two Hib primary series doses were administered, No Hib booster doses were administered, Client's age is at least 6 weeks and not more than 5 years, and The latest Hib dose was administered less than 6 months ago: Primary series is complete. Client is not due for Hib booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib47.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib47.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib47.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[43])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib47.4-bundle.json" }
    

  @patient=Hib48.4
  Scenario: Two Hib primary series doses were administered, No Hib booster doses were administered, Client's age is at least 6 weeks and not more than 5 years, and The latest Hib dose was administered more than 6 months ago: Primary series is complete. Client is due for Hib booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib48.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib48.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib48.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[43])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib48.4-bundle.json" }
    

  @patient=Hib49.2
  Scenario: Two Hib primary series doses were administered and One Hib booster dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib49.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib49.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib49.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib49.2-bundle.json" }
    

  @patient=Hib50.1
  Scenario: Client's age is more than 5 years: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib50.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib50.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib50.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib50.1-bundle.json" }
    
