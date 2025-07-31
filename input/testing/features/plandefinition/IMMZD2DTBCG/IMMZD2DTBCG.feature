
Feature: Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule Decision Table IMMZ.D2.DT.BCG

  Background: Set the data to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-07-30"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE1"


  @patient=BCG07.0126
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is negative or unknown, and No live vaccine was administered: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG07.0126-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG07.0126'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG07.0126'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first BCG dose as no BCG dose was administered, client is within age range, HIV status is not positive and no live vaccine was administered.\nCheck for contraindications."
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG07.0126-bundle.json" }
  

  @patient=BCG08.0126
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is negative or unknown, and Live vaccine was administered in the last four weeks: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG08.0126-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG08.0126'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG08.0126'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG08.0126-bundle.json" }
  

  @patient=BCG09.012346
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, and No live vaccine was administered: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG09.012346-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG09.012346'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG09.012346'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first BCG dose as no BCG dose was administered, client is immunologically stable and no live vaccine was administered.\nCheck for contraindications."
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG09.012346-bundle.json" }
  

  @patient=BCG10.012346
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, and Live vaccine was administered in the last four weeks: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG10.012346-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG10.012346'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG10.012346'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG10.012346-bundle.json" }
  

  @patient=BCG11.01234
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not immunologically stable: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG11.01234-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG11.01234'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG11.01234'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client is not immunologically stable.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG11.01234-bundle.json" }
  

  @patient=BCG12.0123
  Scenario: No BCG primary series dose was administered, Client's age is less than or equal to 28 days, Client's HIV status is positive, and Client is currently not receiving antiretroviral therapy: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG12.0123-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG12.0123'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG12.0123'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as ART has not been started.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG12.0123-bundle.json" }
  

  @patient=BCG13.01256
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is negative or unknown, Client's TB infection test result is negative, and No live vaccine was administered in the last four weeks: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG13.01256-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG13.01256'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG13.01256'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first BCG dose as no BCG dose was administered, client's TB test result is negative and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG13.01256-bundle.json" }
  

  @patient=BCG14.01256
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is negative or unknown, Client's TB infection test result is negative, and Live vaccine was administered in the last four weeks: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG14.01256-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG14.01256'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG14.01256'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG14.01256-bundle.json" }
  

  @patient=BCG15.0125
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is negative or unknown, and Client's TB infection test result is unknown (test not done or no result yet): Clinical judgement is required. Create clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG15.0125-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG15.0125'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG15.0125'
    And resultWithMedication.contained[1].payload.contentString = "Recommend the client to perform TB infection testing.\nRe-evaluate client once the test result is available."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG15.0125-bundle.json" }
  

  @patient=BCG16.0125
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is negative or unknown, and Client's TB infection test result is positive: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG16.0125-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG16.0125'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG16.0125'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client's TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out)."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG16.0125-bundle.json" }
  

  @patient=BCG17.01234
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not immunologically stable: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG17.01234-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG17.01234'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG17.01234'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client is not immunologically stable.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG17.01234-bundle.json" }
  

  @patient=BCG18.01237
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not clinically well: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG18.01237-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG18.01237'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG18.01237'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client is not clinically well.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG18.01237-bundle.json" }
  

  @patient=BCG19.0123467
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, No live vaccine was administered in the last four weeks, and Client is clinically well: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG19.0123467-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG19.0123467'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG19.0123467'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. No live vaccine was administered in the last 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG19.0123467-bundle.json" }
  

  @patient=BCG20.0123467
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, Live vaccine was administered in the last four weeks, and Client is clinically well: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG20.0123467-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG20.0123467'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG20.0123467'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG20.0123467-bundle.json" }
  

  @patient=BCG21.0123
  Scenario: No BCG primary series dose was administered, Client's age is between 28 days and 5 years, Client's HIV status is positive, and Client is currently not receiving antiretroviral therapy: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG21.0123-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG21.0123'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG21.0123'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client is not currently receiving ART.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG21.0123-bundle.json" }
  

  @patient=BCG22.01256
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is negative or unknown, Client's TB infection test result is negative, and No live vaccine was administered in the last four weeks: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG22.01256-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG22.01256'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG22.01256'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first BCG dose as no BCG dose was administered, client's TB test result is negative and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG22.01256-bundle.json" }
  

  @patient=BCG23.01256
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is negative or unknown, Client's TB infection test result is negative, and Live vaccine was administered in the last four weeks: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG23.01256-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG23.01256'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG23.01256'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG23.01256-bundle.json" }
  

  @patient=BCG24.0125
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is negative or unknown, and Client's TB infection test result is unknown (test not done or no result yet): Clinical judgement is required. Create clinical note.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG24.0125-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG24.0125'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG24.0125'
    And resultWithMedication.contained[1].payload.contentString = "Recommend the client to perform TB infection testing.\nRe-evaluate client once the test result is available."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG24.0125-bundle.json" }
  

  @patient=BCG25.0125
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is negative or unknown, and Client's TB infection test result is positive: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG25.0125-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG25.0125'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG25.0125'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client's TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out)."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG25.0125-bundle.json" }
  

  @patient=BCG26.01234
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not immunologically stable: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG26.01234-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG26.01234'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG26.01234'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client is not immnologically stable.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG26.01234-bundle.json" }
  

  @patient=BCG27.01237
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, and Client is not clinically well: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG27.01237-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG27.01237'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG27.01237'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client is not clinically well.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG27.01237-bundle.json" }
  

  @patient=BCG28.0123467
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, No live vaccine was administered in the last four weeks, and Client is clinically well: Client is due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG28.0123467-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG28.0123467'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG28.0123467'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. No live vaccine was administered in the past 4 weeks.\nCheck for contraindications"
    And match response contains deep resultWithMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG28.0123467-bundle.json" }
  

  @patient=BCG29.0123467
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, Client is currently receiving antiretroviral therapy, Client is immunologically stable, Live vaccine was administered in the last four weeks, and Client is clinically well: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG29.0123467-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG29.0123467'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG29.0123467'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG29.0123467-bundle.json" }
  

  @patient=BCG30.0123
  Scenario: No BCG primary series dose was administered, Client's age is more than 5 years, Client's HIV status is positive, and Client is currently not receiving antiretroviral therapy: Client is not due for BCG vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG30.0123-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG30.0123'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG30.0123'
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with first BCG dose as client is not currently receiving ART.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG30.0123-bundle.json" }
  

  @patient=BCG31.0
  Scenario: and One BCG primary series dose was administered: BCG immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-BCG31.0-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/BCG31.0'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/BCG31.0'
    And resultWithMedication.contained[1].payload.contentString = "BCG immunization schedule is complete. One BCG primary series dose was administered.\nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-BCG31.0-bundle.json" }
  
