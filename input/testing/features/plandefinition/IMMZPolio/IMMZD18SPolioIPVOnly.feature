
Feature: IMMZ.D18.S.Polio.IPV-only schedule Decision Table Inactivated polio vaccine (IPV)-only schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-10-10"


    And def resultContent = {}
    And resultContent[70] = "A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended."
    And resultContent[73] = "If the primary series begins at 6 weeks, a booster dose should be given 6 months or more after the third dose"


  @patient=Polio71.2
  Scenario: No poliovirus primary series doses were administered and Client's age is less than 6 weeks: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio71.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio71.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio71.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[70]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio71.2-bundle.json" }
    

  @patient=Polio72.2
  Scenario: No poliovirus primary series doses were administered and Client's age is more than or equal to 6 weeks: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio72.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio72.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio72.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[70]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio72.2-bundle.json" }
    

  @patient=Polio73.2
  Scenario: One poliovirus primary series dose was administered and The latest poliovirus dose was administered less than 4 weeks ago: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio73.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio73.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio73.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[70]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio73.2-bundle.json" }
    

  @patient=Polio74.2
  Scenario: One poliovirus primary series dose was administered and The latest poliovirus dose was administered more than 4 weeks ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio74.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio74.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio74.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[70]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio74.2-bundle.json" }
    

  @patient=Polio75.2
  Scenario: Two poliovirus primary series doses were administered and The latest poliovirus dose was administered less than 4 weeks ago: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio75.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio75.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio75.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[70]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio75.2-bundle.json" }
    

  @patient=Polio76.2
  Scenario: Two poliovirus primary series doses were administered and The latest poliovirus dose was administered more than 4 weeks ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio76.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio76.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio76.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[70]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio76.2-bundle.json" }
    

  @patient=Polio77.2
  Scenario: Three poliovirus primary series doses were administered and Client's age was more than 6 weeks when the primary series was started: Polio immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio77.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio77.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio77.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[70]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio77.2-bundle.json" }
    

  @patient=Polio78.3
  Scenario: Three poliovirus primary series doses were administered, Client's age was 6 weeks when the primary series was started, and The latest poliovirus dose was administered less than 6 months ago: Primary series is complete. Client is not due for IPV booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio78.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio78.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio78.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[73]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio78.3-bundle.json" }
    

  @patient=Polio79.4
  Scenario: Three poliovirus primary series doses were administered, Client's age was 6 weeks when the primary series was started, The latest poliovirus dose was administered more than 6 months ago, and No polio booster dose was administered: Primary series is complete. Client is due for IPV booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio79.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio79.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio79.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[73]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio79.4-bundle.json" }
    

  @patient=Polio80.2
  Scenario: Three poliovirus primary series doses were administered and Polio booster dose was administered: Polio immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio80.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio80.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Polio80.2'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio80.2-bundle.json" }
    
