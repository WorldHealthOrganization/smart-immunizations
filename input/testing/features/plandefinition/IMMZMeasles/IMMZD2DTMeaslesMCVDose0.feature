
Feature: IMMZ.D2.DT.Measles.MCV dose 0 Decision Table Measles-containing vaccine dose 0 (MCV0) administration

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-12"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE9"


  @patient=Measles36.1
  Scenario: Client's age is less than 6 months: Client is not due for MCV0
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles36.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles36.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles36.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with MCV0 as client's age is less than 6 months. Check for any vaccines due and inform the caregiver of when to come back for MCV0."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles36.1-bundle.json" }
  

  @patient=Measles37.3
  Scenario: MCV0 was not administered, Client's age is between 6 months and 9 months, and Live vaccine was administered in the last 4 weeks: Client is not due for MCV0
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles37.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles37.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles37.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with MCV0 as live vaccine was administered in the past 4 weeks. Check for any vaccines due and inform the caregiver of when to come back for MCV0."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles37.3-bundle.json" }
  

  @patient=Measles38.3
  Scenario: MCV0 was not administered, Client's age is between 6 months and 9 months, and No live vaccine was administered in the last 4 weeks: Consider MCV0.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles38.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles38.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles38.3'
    And resultWithoutMedication.contained[1].payload.contentString = "May vaccinate client with MCV0 as client is within appropriate age range, MCV0 was not administered and no live vaccine was administered in the past 4 weeks. Check if one of the MCV0 specific scenarios is applicable."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles38.3-bundle.json" }
  

  @patient=Measles39.1
  Scenario: Client's age is more than or equal to 9 months: Client is not due for MCV0
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles39.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles39.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles39.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with MCV0 as client's age is more than 9 months.\nCheck measles routine immunization schedule."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles39.1-bundle.json" }
  

  @patient=Measles40.1
  Scenario: MCV0 was administered: Client is not due for MCV0
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles40.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesMCVDose0/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles40.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles40.1'
    And resultWithoutMedication.contained[1].payload.contentString = "MCV0 was administered.\nCheck measles routine immunization schedule."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles40.1-bundle.json" }
  
