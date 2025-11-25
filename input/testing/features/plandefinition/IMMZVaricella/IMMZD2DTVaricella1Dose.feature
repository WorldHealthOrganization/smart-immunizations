
Feature: IMMZ.D2.DT.Varicella.1 dose Decision Table Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE22"


  @patient=Varicella09.1
  Scenario: Client's age is less than 12 months: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella09.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella09.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella09.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with varicella dose as client's age is less than 12 months.\nCheck for any vaccines due and inform the caregiver of when to come back for the first varicella dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella09.1-bundle.json" }
  

  @patient=Varicella10.3
  Scenario: No varicella primary series dose was administered, Cient's age is more than or equal to 12 months, and Live vaccine was administered in the past 4 weeks: Client is not due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella10.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella10.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with varicella dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first varicella dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella10.3-bundle.json" }
  

  @patient=Varicella11.3
  Scenario: No varicella primary series dose was administered, Cient's age is more than or equal to 12 months, and No live vaccine was administered in the past 4 weeks: Client is due for varicella vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella11.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Varicella11.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with varicella dose as no varicella dose was administered, client is within the appropriate age range and no live vaccine was administered in past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella11.3-bundle.json" }
  

  @patient=Varicella12.1
  Scenario: One varicella primary series dose was administered: Varicella immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Varicella12.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTVaricella1Dose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Varicella12.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Varicella12.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Varicella immunization schedule is complete. One varicella primary series dose was administered.\nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Varicella12.1-bundle.json" }
  
