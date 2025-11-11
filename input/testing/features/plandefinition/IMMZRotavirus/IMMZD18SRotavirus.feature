
Feature: IMMZ.D18.S.Rotavirus schedule Decision Table IMMZ.D18.S.Rotavirus schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-11"


    And def resultContent = {}
    And resultContent[6] = "WHO recommends that the first dose of rotavirus vaccine be administered as soon as possible after 6 weeks of age."

    And resultContent[7] = "A minimum interval of 4 weeks should be maintained between doses."

    And resultContent[8] = "For a mixed series or a series with any unknown vaccine products, a total of 3 doses of rotavirus vaccine should be administered for a complete vaccination series.\nRotaTeq, Rotavac and Rotasiil should be administered in a 3-dose schedule."


  @patient=Rotavirus07.1
  Scenario: Client's age is less than 6 weeks: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus07.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus07.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus07.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[6])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus07.1-bundle.json" }
    

  @patient=Rotavirus08.3
  Scenario: No rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, and No live vaccine was administered in the last 4 weeks: Client is due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus08.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus08.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus08.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[6])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus08.3-bundle.json" }
    

  @patient=Rotavirus09.3
  Scenario: No rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, and Live vaccine was administered in the last 4 weeks: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus09.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus09.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus09.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[6])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus09.3-bundle.json" }
    

  @patient=Rotavirus10.3
  Scenario: One rotavirus primary series dose was administered, Client's age is between 6 weeks and 24 months, and No live vaccine was administered in the last 4 weeks: Client is due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus10.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus10.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus10.3-bundle.json" }
    

  @patient=Rotavirus11.3
  Scenario: One rotavirus primary series dose was administered, Client's age is between 6 weeks and 24 months, and Live vaccine was administered in the last 4 weeks: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus11.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus11.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus11.3-bundle.json" }
    

  @patient=Rotavirus12.4
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, No live vaccine was administered in the last 4 weeks, and The series administered to the client is a mixed series or a series with unknown vaccine products: Client is due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus12.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus12.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus12.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus12.4-bundle.json" }
    

  @patient=Rotavirus13.4
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, Live vaccines was administered in the last 4 weeks, and The series administered to the client is a mixed series or a series with unknown vaccine products: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus13.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus13.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus13.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus13.4-bundle.json" }
    

  @patient=Rotavirus14.5
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, No live vaccine was administered in last 4 weeks, The series administered to the client contains the same product, and The series contain more than two doses: Client is due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus14.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus14.5'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus14.5'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus14.5-bundle.json" }
    

  @patient=Rotavirus15.5
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, Live vaccine was administered in last 4 weeks, The series administered to the client contains the same product, and The series contain more than two doses: Client is not due for rotavirus vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus15.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus15.5'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Rotavirus15.5'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus15.5-bundle.json" }
    

  @patient=Rotavirus16.4
  Scenario: Two rotavirus primary series doses were administered, Client's age is between 6 weeks and 24 months, The series administered to the client contains the same product, and The series contain less than or equal to two doses: Rotavirus immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus16.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus16.4'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Rotavirus16.4'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus16.4-bundle.json" }
    

  @patient=Rotavirus17.1
  Scenario: Three rotavirus primary series doses were administered: Rotavirus immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus17.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus17.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Rotavirus17.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus17.1-bundle.json" }
    

  @patient=Rotavirus18.1
  Scenario: Client's age is more than 24 months: Client is not due for rotavirus vaccination if immunization schedule is not complete.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Rotavirus18.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SRotavirus/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Rotavirus18.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Rotavirus18.1'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Rotavirus18.1-bundle.json" }
    
