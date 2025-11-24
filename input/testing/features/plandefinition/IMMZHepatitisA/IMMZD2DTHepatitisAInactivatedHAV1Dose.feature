
Feature: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose Decision Table Inactivated hepatitis A virus (HAV), 1-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE5"


  @patient=HepatitisA20.1
  Scenario: Client's age is less than 12 months: Client is not due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA20.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA20.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/HepatitisA20.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with Hepatitis A dose as client's age is less than 12 months.\nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA20.1-bundle.json" }
  

  @patient=HepatitisA21.2
  Scenario: No hepatitis A primary series dose was administered and Client's age is more than or equal to 12 months: Client is due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA21.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA21.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/HepatitisA21.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with hepatitis A dose as no hepatitis A dose was administered and client's age is within appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA21.2-bundle.json" }
  

  @patient=HepatitisA22.1
  Scenario: One hepatitis A primary series dose was administered: Hepatitis A immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA22.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/HepatitisA22.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Hepatitis A immunization schedule is complete. One hepatitis A primary series dose was administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA22.1-bundle.json" }
  
