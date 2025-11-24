
Feature: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses Decision Table Inactivated hepatitis A virus (HAV), 2-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE5"


  @patient=HepatitisA08.1
  Scenario: Client's age is less than 12 months: Client is not due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/HepatitisA08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first hepatitis A dose as client's age is less than 12 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA08.1-bundle.json" }
  

  @patient=HepatitisA09.2
  Scenario: No hepatitis A primary series doses were administered and Client's age is more than or equal to 12 months: Client is due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/HepatitisA09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first hepatitis A dose as no Hepatitis A doses were administered and client is within the appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA09.2-bundle.json" }
  

  @patient=HepatitisA10.2
  Scenario: One hepatitis A primary series dose was administered and The latest Hepatitis A dose was administered less than 6 months ago: Client is not due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA10.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/HepatitisA10.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second hepatitis A dose as the latest hepatitis A dose was administered less than 6 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA10.2-bundle.json" }
  

  @patient=HepatitisA11.2
  Scenario: One hepatitis A primary series dose was administered and The latest Hepatitis A dose was administered more than 6 months ago: Client is due for Hepatitis A vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA11.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/HepatitisA11.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second hepatitis A dose as the latest hepatitis A dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA11.2-bundle.json" }
  

  @patient=HepatitisA12.1
  Scenario: Two hepatitis A primary series doses were administered: Hepatitis A immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA12.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA12.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/HepatitisA12.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Hepatitis A immunization schedule is complete. Two hepatitis A primary series doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA12.1-bundle.json" }
  
