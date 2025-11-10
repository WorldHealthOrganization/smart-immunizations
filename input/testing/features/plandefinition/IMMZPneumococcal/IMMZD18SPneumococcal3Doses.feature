
Feature: IMMZ.D18.S.Pneumococcal.3 doses schedule Decision Table 3 primary doses (3p+0) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-10"


    And def resultContent = {}
    And resultContent[32] = "Pneumococcal dose 1 should be provided if the client is older than 6 weeks"

    And resultContent[33] = "Pneumococcal dose 2 should be provided if the client was given the previous dose more than 4 weeks ago"

    And resultContent[34] = "Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago"

    And resultContent[35] = "Pneumococcal dose 3 should be provided if the client was given the previous dose more than 4 weeks ago"

    And resultContent[36] = "HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life"


  @patient=Pneumococcal33.1
  Scenario: The client's age is less than 6 weeks: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal33.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal33.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal33.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[32])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal33.1-bundle.json" }
    

  @patient=Pneumococcal34.2
  Scenario: No pneumococcal primary series doses were administered and The client's age is between 6 weeks and 5 years: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal34.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal34.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal34.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[32])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal34.2-bundle.json" }
    

  @patient=Pneumococcal35.4
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered within 12 months post birth, and The latest pneumococcal dose was administered less than 4 weeks ago: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal35.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal35.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal35.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[33])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal35.4-bundle.json" }
    

  @patient=Pneumococcal36.4
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered within 12 months post birth, and The latest pneumococcal dose was administered more than 4 weeks ago: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal36.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal36.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal36.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[33])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal36.4-bundle.json" }
    

  @patient=Pneumococcal37.5
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered at 12–24 months post birth, The latest pneumococcal dose was administered less than 4 weeks ago, and Client is not at high risk for pneumococcal infection: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal37.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal37.5'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal37.5'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[33])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal37.5-bundle.json" }
    

  @patient=Pneumococcal38.5
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered at 12–24 months post birth, The latest pneumococcal dose was administered more than 4 weeks ago, and Client is not at high risk for pneumococcal infection: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal38.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal38.5'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal38.5'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[33])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal38.5-bundle.json" }
    

  @patient=Pneumococcal39.5
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered at 12–24 months post birth, The latest pneumococcal dose was administered less than 8 weeks ago, and Client is at high risk for pneumococcal infection: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal39.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal39.5'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal39.5'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[33])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal39.5-bundle.json" }
    

  @patient=Pneumococcal40.5
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered at 12–24 months post birth, The latest pneumococcal dose was administered more than 8 weeks ago, and Client is at high risk for pneumococcal infection: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal40.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal40.5'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal40.5'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[33])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal40.5-bundle.json" }
    

  @patient=Pneumococcal41.5
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered after 24 months post birth, The latest pneumococcal dose was administered less than 8 weeks ago, and Client is at high risk for pneumococcal infection: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal41.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal41.5'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal41.5'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[34])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal41.5-bundle.json" }
    

  @patient=Pneumococcal42.5
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered after 24 months post birth, The latest pneumococcal dose was administered more than 8 weeks ago, and Client is at high risk for pneumococcal infection: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal42.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal42.5'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal42.5'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[34])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal42.5-bundle.json" }
    

  @patient=Pneumococcal43.4
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered after 24 months post birth, and Client is not at high risk for pneumococcal infection: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal43.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal43.4'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Pneumococcal43.4'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal43.4-bundle.json" }
    

  @patient=Pneumococcal44.4
  Scenario: Two pneumococcal primary series doses were administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered within 12 months post birth, and The latest pneumococcal dose was administered less than 4 weeks ago: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal44.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal44.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal44.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal44.4-bundle.json" }
    

  @patient=Pneumococcal45.4
  Scenario: Two pneumococcal primary series doses were administered, The client's age is less than or equal to five years, The first pneumococcal dose was administered within 12 months post birth, and The latest pneumococcal dose was administered more than 4 weeks ago: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal45.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal45.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal45.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal45.4-bundle.json" }
    

  @patient=Pneumococcal46.3
  Scenario: Two pneumococcal primary series doses were administered, The client's age is less than or equal to five years, and The first pneumococcal dose was administered after 12 months post birth: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal46.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal46.3'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Pneumococcal46.3'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal46.3-bundle.json" }
    

  @patient=Pneumococcal47.6
  Scenario: Three pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, The client's age is less than 24 months, The latest pneumococcal dose was administered within 12 months post birth, The latest pneumococcal dose was administered less than 8 weeks ago, and Client's HIV status is positive: Client is not due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal47.6-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal47.6'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal47.6'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[36])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal47.6-bundle.json" }
    

  @patient=Pneumococcal48.6
  Scenario: Three pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, The client's age is less than 24 months, The latest pneumococcal dose was administered within 12 months post birth, The latest pneumococcal dose was administered less than 8 weeks ago, and Client had preterm birth: Client is not due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal48.6-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal48.6'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal48.6'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[36])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal48.6-bundle.json" }
    

  @patient=Pneumococcal49.6
  Scenario: Three pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, The client's age is less than 24 months, The latest pneumococcal dose was administered within 12 months post birth, The latest pneumococcal dose was administered more than 8 weeks ago, and Client's HIV status is positive: Client is due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal49.6-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal49.6'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal49.6'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[36])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal49.6-bundle.json" }
    

  @patient=Pneumococcal50.6
  Scenario: Three pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, The client's age is less than 24 months, The latest pneumococcal dose was administered within 12 months post birth, The latest pneumococcal dose was administered more than 8 weeks ago, and Client had preterm birth: Client is due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal50.6-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal50.6'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Pneumococcal50.6'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[36])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal50.6-bundle.json" }
    

  @patient=Pneumococcal51.4
  Scenario: Three pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, The client's age is less than 24 months, and The latest pneumococcal dose was administered after 12 months post birth: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal51.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal51.4'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Pneumococcal51.4'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal51.4-bundle.json" }
    

  @patient=Pneumococcal52.5
  Scenario: Three pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, The client's age is less than 24 months, Client's HIV status is negative or unknown, and Client did not have preterm birth: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal52.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal52.5'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Pneumococcal52.5'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal52.5-bundle.json" }
    

  @patient=Pneumococcal53.3
  Scenario: Three pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, and The client's age is more than or equal to 24 months: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal53.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal53.3'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Pneumococcal53.3'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal53.3-bundle.json" }
    

  @patient=Pneumococcal54.2
  Scenario: Three pneumococcal primary series doses were administered and One pneumococcal booster dose was administered: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal54.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal54.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Pneumococcal54.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal54.2-bundle.json" }
    

  @patient=Pneumococcal55.1
  Scenario: The client's age is more than 5 years: Clinical judgement is required. Create a clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal55.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPneumococcal3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal55.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Pneumococcal55.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal55.1-bundle.json" }
    
