
Feature: IMMZ.D2.DT.Mumps Decision Table 2-dose schedule (countries with mumps in schedule and low transmission of measles)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE11"


  @patient=Mumps08.1
  Scenario: Client's age is less than 12 months: Client is not due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Mumps08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first mumps dose as client's age is less than 12 months.\nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps08.1-bundle.json" }
  

  @patient=Mumps09.3
  Scenario: No mumps primary series doses were administered, Client's age is more than or equal to 12 months, and Live vaccine was administered in the past 4 weeks: Client is not due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps09.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Mumps09.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first mumps dose as live vaccine was administered in the past 4 weeks.\nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps09.3-bundle.json" }
  

  @patient=Mumps10.3
  Scenario: No mumps primary series doses were administered, Client's age is more than or equal to 12 months, and No live vaccine was administered in the past 4 weeks: Client is due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps10.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Mumps10.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first mumps dose as the client is within appropriate age range and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps10.3-bundle.json" }
  

  @patient=Mumps11.2
  Scenario: One mumps primary series dose was administered and The latest mumps dose was administered less than 4 weeks ago: Client is not due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps11.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Mumps11.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second mumps dose as latest mumps dose was administered less than 4 weeks ago.\nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps11.2-bundle.json" }
  

  @patient=Mumps12.3
  Scenario: One mumps primary series dose was administered, The latest mumps dose was administered more than 4 weeks ago, and Live vaccine was administered in the past 4 weeks: Client is not due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps12.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps12.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Mumps12.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second mumps dose as live vaccine was administered in the past 4 weeks.\nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps12.3-bundle.json" }
  

  @patient=Mumps13.3
  Scenario: One mumps primary series dose was administered, The latest mumps dose was administered more than 4 weeks ago, and No live vaccine was administered in the past 4 weeks: Client is due for mumps vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps13.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps13.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Mumps13.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second mumps dose as latest mumps dose was administered more than 4 weeks ago and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps13.3-bundle.json" }
  

  @patient=Mumps14.1
  Scenario: Two mumps primary series doses were administered: Mumps immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Mumps14.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMumps/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Mumps14.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Mumps14.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Mumps immunization schedule is complete. Two mumps primary series doses were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Mumps14.1-bundle.json" }
  
