
Feature: IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule Decision Table Sequential bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-10-10"


    And def resultContent = {}
    And resultContent[55] = "For sequential IPV– bOPV schedules, WHO recommends that the first dose of IPV be given starting from 8 weeks of age with an interval of 4–8 weeks before administration of the second IPV dose."
    And resultContent[57] = "Where a sequential IPV–bOPV schedule is used, the initial administration of 2 doses of IPV should be followed by ≥2 doses of bOPV separated by 4–8 weeks depending on the risk of exposure to poliovirus in early childhood."

  @patient=Polio56.2
  Scenario: No poliovirus primary series doses were administered and Client's age is less than 8 weeks: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio56.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio56.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio56.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[55]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio56.2-bundle.json" }
    

  @patient=Polio57.2
  Scenario: No poliovirus primary series doses were administered and Client's age is more than or equal to 8 weeks: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio57.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio57.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio57.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[55]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio57.2-bundle.json" }
    

  @patient=Polio58.2
  Scenario: One poliovirus primary series dose was administered and The latest poliovirus dose was administered less than 4 weeks ago: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio58.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio58.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio58.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[55]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio58.2-bundle.json" }
    

  @patient=Polio59.2
  Scenario: One poliovirus primary series dose was administered and The latest poliovirus dose was administered more than 4 weeks ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio59.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio59.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio59.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[55]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio59.2-bundle.json" }
    

  @patient=Polio60.1
  Scenario: Two poliovirus primary series doses were administered: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio60.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio60.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio60.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[57]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio60.1-bundle.json" }
    

  @patient=Polio61.2
  Scenario: Three poliovirus primary series doses were administered and The latest poliovirus dose was administered less than 4 weeks ago: Client is not due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio61.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio61.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio61.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[57]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio61.2-bundle.json" }
    

  @patient=Polio62.2
  Scenario: Three poliovirus primary series doses were administered and The latest poliovirus dose was administered more than 4 weeks ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio62.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio62.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio62.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[57]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio62.2-bundle.json" }
    

  @patient=Polio63.1
  Scenario: Four poliovirus primary series doses were administered: Primary series is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio63.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio63.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Polio63.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio63.1-bundle.json" }
    
