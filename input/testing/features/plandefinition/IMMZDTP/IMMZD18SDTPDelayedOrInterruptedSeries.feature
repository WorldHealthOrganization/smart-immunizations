
Feature: IMMZ.D18.S.DTP.Delayed or interrupted schedule Decision Table Diphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"


    And def resultContent = {}
    And resultContent[32] = "For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood."

    And resultContent[35] = "Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses."

    And resultContent[37] = "A booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥ 6 months after last primary dose)."


  @patient=DTP33.2
  Scenario: No DTP primary series doses were administered and Client's age is more than 1 year: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP33.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP33.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP33.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[32])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP33.2-bundle.json" }
    

  @patient=DTP34.2
  Scenario: One DTP primary series dose was administered and The latest DTP dose was administered less than 4 weeks ago: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP34.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP34.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP34.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[32])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP34.2-bundle.json" }
    

  @patient=DTP35.2
  Scenario: One DTP primary series dose was administered and The latest DTP dose was administered more than 4 weeks ago: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP35.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP35.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP35.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[32])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP35.2-bundle.json" }
    

  @patient=DTP36.2
  Scenario: Two DTP primary series doses were administered and The latest DTP dose was administered less than 6 months ago: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP36.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP36.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP36.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[32])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP36.2-bundle.json" }
    

  @patient=DTP37.2
  Scenario: Two DTP primary series doses were administered and The latest DTP dose was administered more than 6 months ago: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP37.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP37.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP37.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[32])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP37.2-bundle.json" }
    

  @patient=DTP38.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and The latest DTP dose was administered less than 1 year ago: Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP38.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP38.3'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP38.3'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And resultTwoSchedule.contained[2].payload.contentString.startsWith(resultContent[37])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP38.3-bundle.json" }
    

  @patient=DTP39.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and The latest DTP dose was administered more than 1 year ago: Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP39.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP39.3'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP39.3'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And resultTwoSchedule.contained[2].payload.contentString.startsWith(resultContent[37])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP39.3-bundle.json" }
    

  @patient=DTP40.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and The latest tetanus and diphtheria dose was administered less than 1 year ago: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP40.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP40.3'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP40.3'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And resultTwoSchedule.contained[2].payload.contentString.startsWith(resultContent[37])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP40.3-bundle.json" }
    

  @patient=DTP41.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and The latest tetanus and diphtheria dose was administered more than 1 year ago: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP41.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP41.3'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP41.3'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And resultTwoSchedule.contained[2].payload.contentString.startsWith(resultContent[37])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP41.3-bundle.json" }
    

  @patient=DTP42.2
  Scenario: Three DTP primary series doses were administered and Two tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP42.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP42.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP42.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[37])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP42.2-bundle.json" }
    

  @patient=DTP43.4
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, Client's age is between 1 year and 6 years, and The latest DTP dose was administered less than 6 months ago: Primary DTP series is complete. Client is not due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP43.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP43.4'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP43.4'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And resultTwoSchedule.contained[2].payload.contentString.startsWith(resultContent[37])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP43.4-bundle.json" }
    

  @patient=DTP44.4
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, Client's age is between 1 year and 6 years, and The latest DTP dose was administered more than 6 months ago: Primary DTP series is complete. Client is due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP44.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP44.4'
    And request applyParams
    When method post
    Then status 200
    And resultTwoSchedule.contained[0].subject.reference = 'Patient/DTP44.4'
    And resultTwoSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And resultTwoSchedule.contained[2].payload.contentString.startsWith(resultContent[37])
    And match response contains deep resultTwoSchedule
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP44.4-bundle.json" }
    

  @patient=DTP45.3
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, and Client's age is more than 6 years: Pertussis immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP45.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP45.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP45.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP45.3-bundle.json" }
    

  @patient=DTP46.2
  Scenario: Three DTP primary series doses were administered and One pertussis booster dose was administered: Pertussis immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP46.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP46.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/DTP46.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[35])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP46.2-bundle.json" }
    
