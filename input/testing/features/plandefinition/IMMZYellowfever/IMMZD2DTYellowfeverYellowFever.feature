
Feature: IMMZ.D2.DT.Yellow fever Decision Table IMMZ.D2.DT.Yellow fever

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-17"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE23"


  @patient=Yellowfever07.2
  Scenario: No yellow fever primary series doses were administered and Client's age is less than 9 months: Client is not due for yellow fever vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever07.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTYellowfeverYellowFever/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever07.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Yellowfever07.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with yellow fever dose as client's age is less than 9 months. Check for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever07.2-bundle.json" }
  

  @patient=Yellowfever08.3
  Scenario: No yellow fever primary series doses were administered, Client's age is more than or equal to 9 months, and Live vaccine was administered in the past 4 weeks: Client is not due for yellow fever vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever08.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTYellowfeverYellowFever/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever08.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Yellowfever08.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with yellow fever dose as live vaccine was administered in the past 4 weeks. \nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever08.3-bundle.json" }
  

  @patient=Yellowfever09.3
  Scenario: No yellow fever primary series doses were administered, Client's age is more than or equal to 9 months, and No live vaccine was administered in the past 4 weeks: Client is due for yellow fever vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTYellowfeverYellowFever/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever09.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Yellowfever09.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with yellow fever dose as no yellow fever dose was administered, client is within appropriate age range and no live vaccine was administered in the past 4 weeks. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever09.3-bundle.json" }
  

  @patient=Yellowfever10.1
  Scenario: One yellow fever primary series dose was administered: Yellow fever immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever10.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTYellowfeverYellowFever/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever10.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Yellowfever10.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Yellow fever immunization schedule is complete. One yellow fever primary series dose was administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever10.1-bundle.json" }
  
