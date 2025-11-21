
Feature: IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule Decision Table Monovalent MenC conjugate schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"


    And def resultContent = {}
    And resultContent[29] = "For monovalent MenC conjugate vaccine, one single intramuscular dose is recommended for children aged ≥ 12 months, teenagers and adults. Children aged 2–11 months require 2 doses administered."

    And resultContent[30] = "Children 2–11 months require 2 doses administered at an interval of at least 2 months and a booster about 1 year after."

  @patient=Meningococcal30.1
  Scenario: Client's age is less than 2 months: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal30.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal30.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal30.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[29]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal30.1-bundle.json" }
    

  @patient=Meningococcal31.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than or equal to 2 months: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal31.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal31.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal31.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[29]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal31.2-bundle.json" }
    

  @patient=Meningococcal32.3
  Scenario: One meningococcal primary series dose was administered, Client's age was less than or equal to 11 months when the primary series was started, and The latest meningococcal dose was administered less than 2 months ago: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal32.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal32.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal32.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal32.3-bundle.json" }
    

  @patient=Meningococcal33.3
  Scenario: One meningococcal primary series dose was administered, Client's age was less than or equal to 11 months when the primary series was started, and The latest meningococcal dose was administered more than 2 months ago: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal33.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal33.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal33.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal33.3-bundle.json" }
    

  @patient=Meningococcal34.2
  Scenario: One meningococcal primary series dose was administered and Client's age was more than 11 months when the primary series was started: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal34.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal34.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Meningococcal34.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'


    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal34.2-bundle.json" }
    

  @patient=Meningococcal35.3
  Scenario: Two meningococcal primary series doses were administered, The latest meningococcal dose was administered less than 1 year ago, and No meningococcal booster dose was administered: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal35.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal35.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal35.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal35.3-bundle.json" }
    

  @patient=Meningococcal36.3
  Scenario: Two meningococcal primary series doses were administered, The latest meningococcal dose was administered more than 1 year ago, and No meningococcal booster dose was administered: The primary series is complete. Client is due for meningococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal36.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal36.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Meningococcal36.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[30]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal36.3-bundle.json" }
    

  @patient=Meningococcal37.2
  Scenario: Two meningococcal primary series doses were administered and Meningococcal booster dose was administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal37.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal37.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Meningococcal37.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal37.2-bundle.json" }
    
