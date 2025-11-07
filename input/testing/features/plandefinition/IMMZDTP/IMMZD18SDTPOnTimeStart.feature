
Feature: IMMZ.D18.S.DTP.On-time start schedule Decision Table Diphtheria–tetanus–pertussis (DTP) vaccination schedule, on-time start (at ≤ 12 months of age)

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"


    And def resultContent = {}
    And resultContent[7] = "DTP dose 1 should be provided if the client is older than 6 weeks of age."

    And resultContent[8] = "DTP dose 2 should be provided if the client was given the previous DTP dose more than 4 weeks ago."

    And resultContent[9] = "DTP dose 3 should be provided if the client received the previous dose more than 4 weeks ago."

    And resultContent[10] = "Three booster doses of diphtheria-containing vaccine should be provided during childhood and adolescence. The diphtheria booster doses should be given in combination with tetanus using the same schedule (i.e at 12–23 months of age, 4–7 years of age and 9–15 years of age, using age-appropriate vaccine formulations). Ideally, there should be at least 4 years between booster doses. Member States may update this schedule based on their country context."

    And resultContent[13] = "A booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥6 months after last primary dose)."


  @patient=DTP08.1
  Scenario: Client's age is less than 6 weeks: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP08.1-bundle.json" }
    

  @patient=DTP09.2
  Scenario: No DTP primary series doses were administered and Client's age is between 6 weeks and 1 year: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP09.2-bundle.json" }
    

  @patient=DTP10.2
  Scenario: One DTP primary series dose was administered and The latest DTP dose was administered less than 4 weeks ago: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP10.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP10.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP10.2-bundle.json" }
    

  @patient=DTP11.2
  Scenario: One DTP primary series dose was administered and The latest DTP dose was administered more than 4 weeks ago: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP11.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP11.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP11.2-bundle.json" }
    

  @patient=DTP12.2
  Scenario: Two DTP primary series doses were administered and The latest DTP dose was administered less than 4 weeks ago: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP12.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP12.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP12.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP12.2-bundle.json" }
    

  @patient=DTP13.2
  Scenario: Two DTP primary series doses were administered and The latest DTP dose was administered more than 4 weeks ago: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP13.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP13.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP13.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP13.2-bundle.json" }
    

  @patient=DTP14.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and Client's age is less than 12 months: Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP14.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP14.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP14.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP14.3-bundle.json" }
    

  @patient=DTP15.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and Client's age is more than or equal to 12 months: Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP15.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP15.3'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP15.3'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[13])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP15.3-bundle.json" }
    

  @patient=DTP16.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and Client's age is less than 4 years: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP16.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP16.3'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP16.3'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[13])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP16.3-bundle.json" }
    

  @patient=DTP17.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and Client's age is more than or equal to 4 years: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP17.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP17.3'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP17.3'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[13])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP17.3-bundle.json" }
    

  @patient=DTP18.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and Client's age is less than 9 years: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP18.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP18.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP18.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP18.3-bundle.json" }
    

  @patient=DTP19.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and Client's age is more than or equal to 9 years: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP19.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP19.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP19.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP19.3-bundle.json" }
    

  @patient=DTP20.2
  Scenario: Three DTP primary series doses were administered and Three tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP20.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP20.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/DTP20.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP20.2-bundle.json" }
    

  @patient=DTP21.3
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, and Client's age is less than 1 year: Client is not due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP21.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP21.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP21.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP21.3-bundle.json" }
    

  @patient=DTP22.4
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, Client's age is between 1 year and 6 years, and The latest DTP dose was administered less than 6 months ago: Primary DTP series is complete. Client is not due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP22.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP22.4'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP22.4'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[13])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP22.4-bundle.json" }
    

  @patient=DTP23.4
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, Client's age is between 1 year and 6 years, and The latest DTP dose was administered more than 6 months ago: Primary DTP series is complete. Client is due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP23.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP23.4'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP23.4'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[13])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP23.4-bundle.json" }
    

  @patient=DTP24.3
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, and Client's age is more than 6 years: Pertussis immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP24.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP24.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP24.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP24.3-bundle.json" }
    

  @patient=DTP25.2
  Scenario: Three DTP primary series doses were administered and One pertussis booster dose was administered: Pertussis immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP25.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP25.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP25.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP25.2-bundle.json" }
    
