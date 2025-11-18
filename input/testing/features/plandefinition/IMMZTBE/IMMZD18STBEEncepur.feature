
Feature: IMMZ.D18.S.TBE.Encepur schedule Decision Table Encepur, 3-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-18"


    And def resultContent = {}
    And resultContent[23] = "The vaccine can be given from > 1 year of age."

    And resultContent[24] = "An interval of 1–3 months is recommended between the first 2 doses."

    And resultContent[25] = "For Encepur, the requirement is 9–12 months between doses 2 and 3."

    And resultContent[26] = "The manufacturer recommends a booster dose to be administered 3 years after completion of the primary series."


  @patient=TBE24.1
  Scenario: Client's age is less than 1 year: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE24.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE24.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE24.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[23]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE24.1-bundle.json" }
    

  @patient=TBE25.2
  Scenario: No TBE primary series doses were administered and Client's age is more than or equal to 1 year: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE25.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE25.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE25.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[23]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE25.2-bundle.json" }
    

  @patient=TBE26.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered less than 1 month ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE26.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE26.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE26.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[24]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE26.2-bundle.json" }
    

  @patient=TBE27.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered more than 1 month ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE27.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE27.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE27.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[24]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE27.2-bundle.json" }
    

  @patient=TBE28.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered less than 9 months ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE28.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE28.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE28.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[25]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE28.2-bundle.json" }
    

  @patient=TBE29.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered more than 9 months ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE29.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE29.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE29.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[25]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE29.2-bundle.json" }
    

  @patient=TBE30.3
  Scenario: Three TBE primary series doses were administered, No TBE booster dose was administered, and The latest TBE dose was administered less than 3 years ago: The primary series is complete. Client is not due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE30.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE30.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE30.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE30.3-bundle.json" }
    

  @patient=TBE31.3
  Scenario: Three TBE primary series doses were administered, No TBE booster dose was administered, and The latest TBE dose was administered more than 3 years ago: The primary series is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE31.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE31.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE31.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE31.3-bundle.json" }
    

  @patient=TBE32.2
  Scenario: Three TBE primary series doses were administered and At least one booster dose was administered: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE32.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE32.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/TBE32.2'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE32.2-bundle.json" }
    
