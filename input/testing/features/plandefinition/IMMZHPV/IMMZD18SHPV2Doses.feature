
Feature: IMMZ.D18.S.HPV.2-dose schedule Decision Table 2-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"


    And def resultContent = {}
    And resultContent[7] = "HPV dose 1 should be provided if the client is female and older than 9 years of age."

    And resultContent[8] = "HPV dose 2 should be provided if dose 1 was given 6 months ago."

    And resultContent[9] = "Where possible, three HPV doses should be provided to individuals known to be immunocompromised or infected with HIV."


  @patient=HPV08.1
  Scenario: Client's age is less than 9 years: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV08.1-bundle.json" }
    

  @patient=HPV09.3
  Scenario: No HPV primary series doses were administered, Client's age is between 9 and 14 years, and Client's biological sex is female: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV09.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV09.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV09.3-bundle.json" }
    

  @patient=HPV10.3
  Scenario: No HPV primary series doses were administered, Client's age more than or equal to 15 years, and Client's biological sex is female: Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV10.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV10.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV10.3-bundle.json" }
    

  @patient=HPV11.2
  Scenario: No HPV primary series doses were administered and Client's biological sex is not female: Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV11.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV11.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV11.2-bundle.json" }
    

  @patient=HPV12.2
  Scenario: One HPV primary series dose was administered and The latest HPV dose was administered less than 6 months ago: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV12.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV12.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV12.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV12.2-bundle.json" }
    

  @patient=HPV13.2
  Scenario: One HPV primary series dose was administered and The latest HPV dose was administered more than 6 months ago: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV13.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV13.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV13.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV13.2-bundle.json" }
    

  @patient=HPV14.3
  Scenario: Two HPV primary series doses were administered, The latest HPV dose was administered less than 6 months ago, and Client's HIV status is positive: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV14.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV14.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV14.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV14.3-bundle.json" }
    

  @patient=HPV15.3
  Scenario: Two HPV primary series doses were administered, The latest HPV dose was administered more than 6 months ago, and Client's HIV status is positive: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV15.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV15.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV15.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV15.3-bundle.json" }
    

  @patient=HPV16.3
  Scenario: Two HPV primary series doses were administered, The latest HPV dose was administered less than 6 months ago, and Client is immunocompromised: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV16.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV16.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV16.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV16.3-bundle.json" }
    

  @patient=HPV17.3
  Scenario: Two HPV primary series doses were administered, The latest HPV dose was administered more than 6 months ago, and Client is immunocompromised: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV17.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV17.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV17.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV17.3-bundle.json" }
    

  @patient=HPV18.3
  Scenario: Two HPV primary series doses were administered, Client is not immunocompromised, and Client's HIV status is negative or unknown: HPV immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV18.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV18.3'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/HPV18.3'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV18.3-bundle.json" }
    

  @patient=HPV19.1
  Scenario: Three HPV primary series doses were administered: HPV immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV19.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV19.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/HPV19.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV19.1-bundle.json" }
    
