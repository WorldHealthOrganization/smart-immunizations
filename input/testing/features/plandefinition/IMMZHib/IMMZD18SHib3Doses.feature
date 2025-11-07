
Feature: IMMZ.D18.S.Hib.3 doses schedule Decision Table 3 primary doses without a booster dose (3p) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-07"


    And def resultContent = {}
    And resultContent[7] = "Immunization should start from 6 weeks of age, or as early as possible thereafter.\nHib-containing vaccine is not required for healthy children aged over 5 years."

    And resultContent[8] = "Hib dose 2 should be provided if the client was given the previous dose more than 4 weeks ago and the first Hib dose was received by the time the child turned 1 year old"

    And resultContent[9] = "Hib dose 3 should be provided if the client was given the previous dose more than 4 weeks before and the first Hib dose was received by the time the child turned 1 year old"


  @patient=Hib08.1
  Scenario: Client's age is less than 6 weeks: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib08.1-bundle.json" }
    

  @patient=Hib09.2
  Scenario: No Hib primary series doses were administered and Client's age is between 6 weeks and 5 years: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib09.2-bundle.json" }
    

  @patient=Hib10.4
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered less than 4 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib10.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib10.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib10.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib10.4-bundle.json" }
    

  @patient=Hib11.4
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered more than 4 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib11.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib11.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib11.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib11.4-bundle.json" }
    

  @patient=Hib12.3
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, and Client's age was more than 1 year when first Hib dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib12.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib12.3'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib12.3'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib12.3-bundle.json" }
    

  @patient=Hib13.3
  Scenario: Two Hib primary series doses were administered, Client's age is between 6 weeks and not more than 5 years, and The latest Hib dose was administered less than 4 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib13.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib13.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib13.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib13.3-bundle.json" }
    

  @patient=Hib14.3
  Scenario: Two Hib primary series doses were administered, Client's age is between 6 weeks and not more than 5 years, and The latest Hib dose was administered more than 4 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib14.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib14.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib14.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib14.3-bundle.json" }
    

  @patient=Hib15.1
  Scenario: Three Hib primary series doses were administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib15.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib15.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib15.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib15.1-bundle.json" }
    

  @patient=Hib16.1
  Scenario: Client's age is more than 5 years: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib16.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib16.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib16.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib16.1-bundle.json" }
    
