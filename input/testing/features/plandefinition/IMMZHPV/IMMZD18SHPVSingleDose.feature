
Feature: IMMZ.D18.S.Single-dose schedule Decision Table Alternative single-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"


    And def resultContent = {}
    And resultContent[26] = "HPV dose 1 should be provided if the client is older than 9 years of age."

    And resultContent[27] = "Individuals known to be immunocompromised or infected with HIV should receive at least two HPV vaccine doses."

    And resultContent[28] = "Where possible, three HPV doses should be provided to individuals known to be immunocompromised or infected with HIV."


  @patient=HPV27.1
  Scenario: Client's age is less than 9 years: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV27.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV27.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV27.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV27.1-bundle.json" }
    

  @patient=HPV28.2
  Scenario: No HPV primary series doses were administered and Client's age is between 9 and 20 years: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV28.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV28.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV28.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV28.2-bundle.json" }
    

  @patient=HPV29.2
  Scenario: No HPV primary series doses were administered and Client's age is more than 20 years: Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV29.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV29.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV29.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV29.2-bundle.json" }
    

  @patient=HPV30.3
  Scenario: One HPV primary series dose was administered, The latest HPV dose was administered less than 6 months ago, and Client's HIV status is positive: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV30.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV30.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV30.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[27])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV30.3-bundle.json" }
    

  @patient=HPV31.3
  Scenario: One HPV primary series dose was administered, The latest HPV dose was administered more than 6 months ago, and Client's HIV status is positive: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV31.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV31.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV31.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[27])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV31.3-bundle.json" }
    

  @patient=HPV32.3
  Scenario: One HPV primary series dose was administered, The latest HPV dose was administered less than 6 months ago, and Client is immunocompromised: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV32.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV32.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV32.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[27])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV32.3-bundle.json" }
    

  @patient=HPV33.3
  Scenario: One HPV primary series dose was administered, The latest HPV dose was administered more than 6 months ago, and Client is immunocompromised: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV33.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV33.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV33.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[27])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV33.3-bundle.json" }
    

  @patient=HPV34.3
  Scenario: One HPV primary series dose was administered, Client is not immunocompromised, and Client's HIV status is negative or unknown: HPV immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV34.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV34.3'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/HPV34.3'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV34.3-bundle.json" }
    

  @patient=HPV35.3
  Scenario: Two HPV primary series doses were administered, The latest HPV dose was administered less than 6 months ago, and Client's HIV status is positive: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV35.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV35.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV35.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[28])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV35.3-bundle.json" }
    

  @patient=HPV36.3
  Scenario: Two HPV primary series doses were administered, The latest HPV dose was administered more than 6 months ago, and Client's HIV status is positive: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV36.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV36.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV36.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[28])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV36.3-bundle.json" }
    

  @patient=HPV37.3
  Scenario: Two HPV primary series doses were administered, The latest HPV dose was administered less than 6 months ago, and Client is immunocompromised: Client is not due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV37.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV37.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV37.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[28])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV37.3-bundle.json" }
    

  @patient=HPV38.3
  Scenario: Two HPV primary series doses were administered, The latest HPV dose was administered more than 6 months ago, and Client is immunocompromised: Client is due for HPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV38.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV38.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/HPV38.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[28])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV38.3-bundle.json" }
    

  @patient=HPV39.1
  Scenario: Three HPV primary series doses were administered: HPV immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HPV39.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SHPVSingleDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HPV39.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/HPV39.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HPV39.1-bundle.json" }
    
