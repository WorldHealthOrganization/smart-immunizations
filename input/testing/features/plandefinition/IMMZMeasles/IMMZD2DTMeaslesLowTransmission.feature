
Feature: IMMZ.D2.DT.Measles.Low transmission Decision Table Countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-12"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE9"


  @patient=Measles22.1
  Scenario: Client's age is less than 12 months: Client is not due for MCV1
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles22.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles22.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with MCV1 as client's age is less than 12 months.\nCheck for any vaccines due and inform the caregiver of when to come back for MCV1."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles22.1-bundle.json" }
  

  @patient=Measles23.3
  Scenario: No measles primary series doses were administered, Client's age is more than or equal to 12 months, and No live vaccine was administered in the last 4 weeks: Client is due for MCV1
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles23.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles23.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Measles23.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with MCV1 as no measles doses were administered, client is within appropriate age range and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles23.3-bundle.json" }
  

  @patient=Measles24.3
  Scenario: No measles primary series doses were administered, Client's age is more than or equal to 12 months, and Live vaccine was administered in the last 4 weeks: Client is not due for MCV1
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles24.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles24.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles24.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with MCV1 as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for MCV1."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles24.3-bundle.json" }
  

  @patient=Measles25.2
  Scenario: MCV1 was administered and Client's age is less than 15 months: Client is not due for MCV2
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles25.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles25.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles25.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with MCV2 as client's age is less than 15 months.\nCheck for any vaccines due and inform the caregiver of when to come back for MCV2."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles25.2-bundle.json" }
  

  @patient=Measles26.3
  Scenario: MCV1 was administered, Client's age is more than or equal to 15 months, and No live vaccine was administered in the last 4 weeks: Client is due for MCV2
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles26.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles26.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Measles26.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with MCV2 as client is within appropriate age range and no live vaccine administered in the past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles26.3-bundle.json" }
  

  @patient=Measles27.3
  Scenario: MCV1 was administered, Client's age is more than or equal to 15 months, and Live vaccine was administered in the last 4 weeks: Client is not due for MCV2
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles27.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles27.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles27.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with MCV2 as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for MCV2."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles27.3-bundle.json" }
  

  @patient=Measles28.1
  Scenario: MCV2 was administered: Measles primary series is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Measles28.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeaslesLowTransmission/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Measles28.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Measles28.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Measles primary series is complete. Two measles primary series doses were administered.\nCheck if a measles supplementary dose is appropriate for the client."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Measles28.1-bundle.json" }
  
