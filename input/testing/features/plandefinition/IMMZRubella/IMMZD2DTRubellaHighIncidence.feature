
Feature: IMMZ.D2.DT.Rubella.High incidence Decision Table Countries with high incidence and mortality from rubella

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-13"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE17"


  @patient=Rubella08.1
  Scenario: Client's age is less than 9 months: Client is not due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRubellaHighIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rubella08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with rubella dose as client's age is less than 9 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella08.1-bundle.json" }
  

  @patient=Rubella09.3
  Scenario: No rubella primary series dose was administered, Client's age is more than or equal to 9 months, and No live vaccine was administered in the last 4 weeks: Client is due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRubellaHighIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella09.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rubella09.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with rubella dose as no rubella doses were administered, client is within the appropriate age range and no live vaccine was administered in the last 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella09.3-bundle.json" }
  

  @patient=Rubella10.3
  Scenario: No rubella primary series dose was administered, Client's age is more than or equal to 9 months, and Live vaccine was administered in the last 4 weeks: Client is not due for rubella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRubellaHighIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella10.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rubella10.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with rubella dose as live vaccine was administered in the last 4 weeks.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella10.3-bundle.json" }
  

  @patient=Rubella11.1
  Scenario: One rubella primary series dose was administered: Rubella immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rubella11.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRubellaHighIncidence/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rubella11.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rubella11.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Rubella immunization schedule is complete. One rubella primary series dose was administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rubella11.1-bundle.json" }
  
