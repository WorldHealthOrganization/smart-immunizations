
Feature: IMMZ.D2.DT.Rotavirus Decision Table IMMZ.D2.DT.Rotavirus

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-11"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE16"


  @patient=Rotavirus07.1
  Scenario: Client's age is less than 6 weeks: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus07.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus07.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus07.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first rotavirus dose as client's age is less than 6 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus07.1-bundle.json" }
  

  @patient=Rotavirus08.3
  Scenario: No rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, and No live vaccine was administered in the last 4 weeks: Client is due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus08.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus08.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rotavirus08.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first rotavirus dose as no rotavirus doses were administered, client's age is within appropriate age range and no live vaccine was administered in last 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus08.3-bundle.json" }
  

  @patient=Rotavirus09.3
  Scenario: No rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, and Live vaccine was administered in the last 4 weeks: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus09.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus09.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first rotavirus dose as live vaccine was administered in last 4 weeks. Check for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus09.3-bundle.json" }
  

  @patient=Rotavirus10.3
  Scenario: One rotavirus primary series dose was administered, Client's age is between 6 weeks and 24 months, and No live vaccine was administered in the last 4 weeks: Client is due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus10.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rotavirus10.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second rotavirus dose as client's age is within appropriate age range and no live vaccine was administered in the last 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus10.3-bundle.json" }
  

  @patient=Rotavirus11.3
  Scenario: One rotavirus primary series dose was administered, Client's age is between 6 weeks and 24 months, and Live vaccine was administered in the last 4 weeks: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus11.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus11.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second rotavirus dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the next dose"
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus11.3-bundle.json" }
  

  @patient=Rotavirus12.4
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, No live vaccine was administered in the last 4 weeks, and The series administered to the client is a mixed series or a series with unknown vaccine products: Client is due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus12.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus12.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rotavirus12.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third rotavirus dose as no live vaccine was administered in the last 4 weeks and series administered to client is a mixed or unknown series.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus12.4-bundle.json" }
  

  @patient=Rotavirus13.4
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, Live vaccines was administered in the last 4 weeks, and The series administered to the client is a mixed series or a series with unknown vaccine products: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus13.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus13.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus13.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third rotavirus dose as live vaccine was administered in the last 4 weeks and series administered to client is a mixed or unknown series. Check for any other vaccines due and inform the caregiver of when to come back for the next dose"
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus13.4-bundle.json" }
  

  @patient=Rotavirus14.5
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, No live vaccine was administered in last 4 weeks, The series administered to the client contains the same product, and The series contain more than two doses: Client is due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus14.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus14.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Rotavirus14.5'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third rotavirus dose as series contains more than two doses and no live vaccine was administered in the last 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus14.5-bundle.json" }
  

  @patient=Rotavirus15.5
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, Live vaccine was administered in last 4 weeks, The series administered to the client contains the same product, and The series contain more than two doses: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus15.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus15.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus15.5'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third rotavirus dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus15.5-bundle.json" }
  

  @patient=Rotavirus16.4
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, The series administered to the client contains the same product, and The series contain less than or equal to two doses: Rotavirus immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus16.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus16.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus16.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Rotavirus immunization schedule is complete. Two rotavirus doses were administered. Check for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus16.4-bundle.json" }
  

  @patient=Rotavirus17.1
  Scenario: Three rotavirus primary series doses were administered: Rotavirus immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus17.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus17.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus17.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Rotavirus immunization schedule is complete. Three rotavirus primary series doses were administered. Check for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus17.1-bundle.json" }
  

  @patient=Rotavirus18.1
  Scenario: Client's age is more than 24 months: Client is not due for rotavirus vaccination if immunization schedule is not complete.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus18.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus18.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Rotavirus18.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with rotavirus dose as client's age is more than 24 months. Check for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus18.1-bundle.json" }
  
