
Feature: IMMZ.D2.DT.Typhoid.TCV Decision Table Typhoid conjugate vaccine (TCV) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE21"


  @patient=Typhoid08.1
  Scenario: Client's age is less than 6 months: Client is not due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTCV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with typhoid dose as client's age is less than 6 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid08.1-bundle.json" }
  

  @patient=Typhoid09.2
  Scenario: No typhoid primary series doses were administered and Client's age is between 6 months and 45 years: Client is due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTCV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Typhoid09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with typhoid dose as no typhoid doses were administered and client is within appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid09.2-bundle.json" }
  

  @patient=Typhoid10.2
  Scenario: No typhoid primary series doses were administered and Client's age is more than or equal to 45 years: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTCV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid10.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid10.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Member States should update this action according to the national immunization programme."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid10.2-bundle.json" }
  

  @patient=Typhoid11.1
  Scenario: One typhoid primary series dose was administered: Typhoid immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid11.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTCV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid11.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid11.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Typhoid immunization schedule is complete. One typhoid primary series dose was administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid11.1-bundle.json" }
  
