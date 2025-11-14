
Feature: IMMZ.D2.DT.JE.Live attenuated vaccine Decision Table Live attenuated vaccination schedule (1-dose scheme)
JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-14"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE8"


  @patient=JE20.1
  Scenario: Client's age is less than 8 months: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE20.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJELiveAttenuatedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE20.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/JE20.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with JE dose as client's age is less than 8 months. Check for any vaccines due and inform the caregiver of when to come back for the first JE dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE20.1-bundle.json" }
  

  @patient=JE21.3
  Scenario: No JE primary series doses were administered, Client's age is more than or equal to 8 months, and No live vaccine was administered in the last 4 weeks: Client is due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE21.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJELiveAttenuatedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE21.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/JE21.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with JE dose as no JE dose was administered, client is within the appropriate age range and no live vaccine was administered in last 4 weeks. Check for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE21.3-bundle.json" }
  

  @patient=JE22.3
  Scenario: No JE primary series doses were administered, Client's age is more than or equal to 8 months, and Live vaccine was administered in the last 4 weeks: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE22.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJELiveAttenuatedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE22.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/JE22.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with JE dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the first JE dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE22.3-bundle.json" }
  

  @patient=JE23.1
  Scenario: One JE primary series dose was administered: JE immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE23.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJELiveAttenuatedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE23.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/JE23.1'
    And resultWithoutMedication.contained[1].payload.contentString = "JE immunization schedule is complete. One JE primary series dose was administered. Check for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE23.1-bundle.json" }
  
