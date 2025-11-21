
Feature: IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule Decision Table Polysaccharide vaccines, 1-dose and booster dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"


    And def resultContent = {}
    And resultContent[67] = "Polysaccharide vaccines should be administered to individuals aged ≥ 2 years."

    And resultContent[68] = "One booster 3–5 years after the primary dose may be given to persons considered to be a continued high risk of exposure, including some health workers."


  @patient=Meningococcal68.1
  Scenario: Client's age is less than 2 years: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal68.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal68.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal68.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[67]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal68.1-bundle.json" }
    

  @patient=Meningococcal69.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than 2 years: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal69.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal69.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal69.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[67]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal69.2-bundle.json" }
    

  @patient=Meningococcal70.2
  Scenario: One meningococcal primary series dose was administered and The latest meningococcal dose was administered less than 3 years ago: The primary series is complete. Client is not due for meningococcal booster dose.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal70.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal70.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal70.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[68]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal70.2-bundle.json" }
    

  @patient=Meningococcal71.3
  Scenario: One meningococcal primary series dose was administered, The latest meningococcal dose was administered more than 3 years ago, and No meningococcal booster dose was administered: The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal71.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal71.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal71.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[68]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal71.3-bundle.json" }
    

  @patient=Meningococcal72.3
  Scenario: One meningococcal primary series dose was administered, The latest meningococcal dose was administered more than 3 years ago, and Meningococcal booster dose was administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal72.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal72.3'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Meningococcal72.3'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal72.3-bundle.json" }
    
