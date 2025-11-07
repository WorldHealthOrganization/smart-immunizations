
Feature: IMMZ.D18.S.Hib.3 doses with booster dose schedule Decision Table 3 primary doses with a booster dose (3p+1) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-07"


    And def resultContent = {}
    And resultContent[23] = "Immunization should start from 6 weeks of age, or as early as possible thereafter. Hib-containing vaccine is not required for healthy children aged over 5 years."

    And resultContent[24] = "Hib dose 2 should be provided if the client was given the previous dose more than 4 weeks ago and the first Hib dose was received by the time the child turned 1 year old"

    And resultContent[25] = "Hib dose 3 should be provided if the client was given the previous dose more than 4 weeks ago and the first Hib dose was received by the time the child turned 1 year old"

    And resultContent[26] = "Hib booster dose should be provided if the client was given the previous dose more than 6 months ago and the first Hib dose was received by the time the child turned 1 year old"


  @patient=Hib24.1
  Scenario: Client's age is less than 6 weeks: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib24.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib24.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib24.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[23])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib24.1-bundle.json" }
    

  @patient=Hib25.2
  Scenario: No Hib primary series doses were administered and Client's age is between 6 weeks and 5 years: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib25.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib25.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib25.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[23])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib25.2-bundle.json" }
    

  @patient=Hib26.4
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered less than 4 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib26.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib26.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib26.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[24])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib26.4-bundle.json" }
    

  @patient=Hib27.4
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered more than 4 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib27.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib27.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib27.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[24])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib27.4-bundle.json" }
    

  @patient=Hib28.3
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, and Client's age was more than 1 year when first Hib dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib28.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib28.3'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib28.3'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib28.3-bundle.json" }
    

  @patient=Hib29.3
  Scenario: Two Hib primary series doses were administered, Client's age is between 6 weeks and not more than 5 years, and The latest Hib dose was administered less than 4 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib29.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib29.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib29.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[25])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib29.3-bundle.json" }
    

  @patient=Hib30.3
  Scenario: Two Hib primary series doses were administered, Client's age is between 6 weeks and not more than 5 years, and The latest Hib dose was administered more than 4 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib30.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib30.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib30.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[25])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib30.3-bundle.json" }
    

  @patient=Hib31.4
  Scenario: Three Hib primary series doses were administered, No Hib booster doses were administered, Client's age is between 6 weeks and 5 years, and The latest Hib dose was administered less than 6 months ago: Primary series is complete. Client is not due for Hib booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib31.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib31.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib31.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib31.4-bundle.json" }
    

  @patient=Hib32.4
  Scenario: Three Hib primary series doses were administered, No Hib booster doses were administered, Client's age is between 6 weeks and 5 years, and The latest Hib dose was administered more than 6 months ago: Primary series is complete. Client is due for Hib booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib32.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib32.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Hib32.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib32.4-bundle.json" }
    

  @patient=Hib33.2
  Scenario: Three Hib primary series doses were administered and One Hib booster dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib33.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib33.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib33.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib33.2-bundle.json" }
    

  @patient=Hib34.1
  Scenario: Client's age is more than 5 years: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib34.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib34.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Hib34.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib34.1-bundle.json" }
    
