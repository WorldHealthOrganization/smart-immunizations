
Feature: Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule Scheduling Table IMMZ.D18.S.BCG schedule

  Background: Set the data to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-07-30"
    And resultSchedule.contained[1].payload.contentString = "BCG dose should be provided if the client has not received any BCG doses and is in a high incidence of tuberculosis (TB) and/or high leprosy burden. It should also be provided after a negative test result for tuberculin skin test (TST) or interferon-gamma release assay (IGRA) tests. The client should also receive vaccination if they are infected with HIV, on antiretroviral therapy (ART) and clinically well and immunologically stable. This dose also applies to neonates born to women with an unknown HIV status, as well as neonates with an unknown HIV status who were born to women infected with HIV.\nDue Date: "

  @patient=BCG07.0126
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is negative or unknown, and No live vaccine was administered: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG07.0126-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG07.0126'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG07.0126'
    And resultSchedule.contained[1].payload.contentString += "2025-07-29"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG07.0126-bundle.json" }
  

  @patient=BCG08.0126
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is negative or unknown, and Live vaccine was administered in the last four weeks: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG08.0126-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG08.0126'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG08.0126'
    And resultSchedule.contained[1].payload.contentString += "2025-07-09"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG08.0126-bundle.json" }
  

  @patient=BCG09.012346
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, and No live vaccine was administered: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG09.012346-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG09.012346'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG09.012346'
    And resultSchedule.contained[1].payload.contentString += "2025-07-16"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG09.012346-bundle.json" }
  

  @patient=BCG10.012346
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, and Live vaccine was administered in the last four weeks: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG10.012346-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG10.012346'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG10.012346'
    And resultSchedule.contained[1].payload.contentString += "2025-07-16"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG10.012346-bundle.json" }
  

  @patient=BCG11.01234
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not immunologically stable: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG11.01234-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG11.01234'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG11.01234'
    And resultSchedule.contained[1].payload.contentString += "2025-07-16"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG11.01234-bundle.json" }
  

  @patient=BCG12.0123
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is positive, and Client is currently not receiving antiretroviral therapy: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG12.0123-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG12.0123'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG12.0123'
    And resultSchedule.contained[1].payload.contentString += "2025-07-16"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG12.0123-bundle.json" }
  

  @patient=BCG13.01256
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is negative or unknown, Client's TB infection test result is negative, and No live vaccine was administered in the last four weeks: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG13.01256-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG13.01256'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG13.01256'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG13.01256-bundle.json" }
  

  @patient=BCG14.01256
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is negative or unknown, Client's TB infection test result is negative, and Live vaccine was administered in the last four weeks: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG14.01256-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG14.01256'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG14.01256'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG14.01256-bundle.json" }
  

  @patient=BCG15.0125
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is negative or unknown, and Client's TB infection test result is unknown (test not done or no result yet): Clinical judgement is required. Create clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG15.0125-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG15.0125'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG15.0125'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG15.0125-bundle.json" }
  

  @patient=BCG16.0125
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is negative or unknown, and Client's TB infection test result is positive: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG16.0125-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG16.0125'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG16.0125'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG16.0125-bundle.json" }
  

  @patient=BCG17.01234
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not immunologically stable: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG17.01234-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG17.01234'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG17.01234'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG17.01234-bundle.json" }
  

  @patient=BCG18.01237
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not clinically well: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG18.01237-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG18.01237'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG18.01237'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG18.01237-bundle.json" }
  

  @patient=BCG19.0123467
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, No live vaccine was administered in the last four weeks, and Client is clinically well: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG19.0123467-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG19.0123467'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG19.0123467'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG19.0123467-bundle.json" }
  

  @patient=BCG20.0123467
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, Live vaccine was administered in the last four weeks, and Client is clinically well: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG20.0123467-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG20.0123467'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG20.0123467'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG20.0123467-bundle.json" }
  

  @patient=BCG21.0123
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, and Client is currently not receiving antiretroviral therapy: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG21.0123-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG21.0123'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG21.0123'
    And resultSchedule.contained[1].payload.contentString += "2024-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG21.0123-bundle.json" }
  

  @patient=BCG22.01256
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is negative or unknown, Client's TB infection test result is negative, and No live vaccine was administered in the last four weeks: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG22.01256-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG22.01256'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG22.01256'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG22.01256-bundle.json" }
  

  @patient=BCG23.01256
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is negative or unknown, Client's TB infection test result is negative, and Live vaccine was administered in the last four weeks: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG23.01256-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG23.01256'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG23.01256'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG23.01256-bundle.json" }
  

  @patient=BCG24.0125
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is negative or unknown, and Client's TB infection test result is unknown (test not done or no result yet): Clinical judgement is required. Create clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG24.0125-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG24.0125'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG24.0125'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG24.0125-bundle.json" }
  

  @patient=BCG25.0125
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is negative or unknown, and Client's TB infection test result is positive: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG25.0125-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG25.0125'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG25.0125'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG25.0125-bundle.json" }
  

  @patient=BCG26.01234
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not immunologically stable: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG26.01234-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG26.01234'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG26.01234'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG26.01234-bundle.json" }
  

  @patient=BCG27.01237
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not clinically well: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG27.01237-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG27.01237'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG27.01237'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG27.01237-bundle.json" }
  

  @patient=BCG28.0123467
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, No live vaccine was administered in the last four weeks, and Client is clinically well: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG28.0123467-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG28.0123467'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG28.0123467'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG28.0123467-bundle.json" }
  

  @patient=BCG29.0123467
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, Live vaccine was administered in the last four weeks, and Client is clinically well: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG29.0123467-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG29.0123467'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG29.0123467'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG29.0123467-bundle.json" }
  

  @patient=BCG30.0123
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, and Client is currently not receiving antiretroviral therapy: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG30.0123-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG30.0123'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/BCG30.0123'
    And resultSchedule.contained[1].payload.contentString += "2019-07-30"
    And match response contains deep resultSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG30.0123-bundle.json" }
  

  @patient=BCG31.0
  Scenario: One BCG primary series dose was administered: BCG immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG31.0-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG31.0'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/BCG31.0'
    And match response contains deep resultNoSchedule

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG31.0-bundle.json" }
  
