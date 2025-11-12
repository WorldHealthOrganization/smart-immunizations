
Feature: IMMZ.D2.DT.Measles.Supplementary dose Decision Table Measles-containing vaccine (MCV) supplementary dose administration

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-12"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE9"


  @patient=Measles48.3
  Scenario: Measles supplementary dose was not administered, Measles routine immunization schedule is complete, and Live vaccine was administered in the past 4 weeks: Client is not due for measles supplementary dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles48.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesSupplementaryDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles48.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles48.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with measles supplementary dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for supplementary dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles48.3-bundle.json" }
  

  @patient=Measles49.3
  Scenario: Measles supplementary dose was not administered, Measles routine immunization schedule is complete, and No live vaccine was administered in the past 4 weeks: Consider measles supplementary dose. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles49.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesSupplementaryDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles49.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles49.3'
    And resultWithoutMedication.contained[1].payload.contentString = "May vaccinate client with measles supplementary dose as supplementary dose was not administered, measles routine immunization schedule is complete and no live vaccine administered in the past 4 weeks.\nCheck if one of the measles supplementary dose specific scenarios is applicable."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles49.3-bundle.json" }
  

  @patient=Measles50.1
  Scenario: Measles supplementary dose was administered: Measles immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles50.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesSupplementaryDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles50.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles50.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Measles immunization schedule is complete. Measles supplementary dose was administered."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles50.1-bundle.json" }
  
