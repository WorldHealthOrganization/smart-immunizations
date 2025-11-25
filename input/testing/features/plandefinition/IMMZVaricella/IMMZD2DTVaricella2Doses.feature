
Feature: IMMZ.D2.DT.Varicella.2 doses Decision Table Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE22"


  @patient=Varicella21.1
  Scenario: Client's age is less than 12 months: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella21.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella21.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella21.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first varicella dose as client's age is less than 12 months. Check for any other vaccines due and inform the caregiver of when to come back for the first varicella dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella21.1-bundle.json" }
  

  @patient=Varicella22.3
  Scenario: No varicella primary series doses were administered, Cient's age is more than or equal to 12 months, and Live vaccine was administered in the past 4 weeks: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella22.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella22.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella22.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first varicella dose as live vaccine was administered in the past 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the first varicella dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella22.3-bundle.json" }
  

  @patient=Varicella23.3
  Scenario: No varicella primary series doses were administered, Cient's age is more than or equal to 12 months, and No live vaccine was administered in the past 4 weeks: Client is due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella23.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella23.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Varicella23.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first varicella dose as no varicella dose was administered, client is within appropriate age range and no live vaccine was administered in past 4 weeks. Check for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella23.3-bundle.json" }
  

  @patient=Varicella24.2
  Scenario: One varicella primary series dose was administered and The latest varicella dose administered less than 4 weeks ago: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella24.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella24.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella24.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second varicella dose as the latest varicella dose was administered less than 4 weeks ago. Check for any other vaccines due and inform the caregiver when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella24.2-bundle.json" }
  

  @patient=Varicella25.3
  Scenario: One varicella primary series dose was administered, The latest varicella dose administered more than 4 weeks ago, and Live vaccine was administered in the past 4 weeks: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella25.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella25.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella25.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second varicella dose as live vaccine was administered in the past 4 weeks. Check for any vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella25.3-bundle.json" }
  

  @patient=Varicella26.3
  Scenario: One varicella primary series dose was administered, The latest varicella dose administered more than 4 weeks ago, and No live vaccine was administered in the past 4 weeks: Client is due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella26.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella26.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Varicella26.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second varicella dose as the latest varicella dose was administered more than 4 weeks ago and no live vaccine was administered in past 4 weeks. Check for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella26.3-bundle.json" }
  

  @patient=Varicella27.1
  Scenario: Two varicella primary series doses were administered: Varicella immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella27.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella27.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella27.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Varicella immunization schedule is complete. Two varicella primary series doses were administered. Check for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella27.1-bundle.json" }
  
