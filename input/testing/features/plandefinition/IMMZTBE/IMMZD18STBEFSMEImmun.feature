
Feature: IMMZ.D18.S.TBE.FSME-Immun schedule Decision Table FSME-Immun, 3-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-18"


    And def resultContent = {}
    And resultContent[7] = "The vaccine can be given from > 1 year of age"

    And resultContent[8] = "An interval of 1–3 months is recommended between the first 2 doses"

    And resultContent[9] = "An interval of 5–12 months is recommended between the second and third doses"

    And resultContent[10] = "The manufacturer recommends a booster dose to be administered 3 years after completion of the primary series"


  @patient=TBE08.1
  Scenario: Client's age is less than 1 year: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE08.1-bundle.json" }
    

  @patient=TBE09.2
  Scenario: No TBE primary series doses were administered and Client's age is more than or equal to 1 year: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE09.2-bundle.json" }
    

  @patient=TBE10.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered less than 1 month ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE10.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE10.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE10.2-bundle.json" }
    

  @patient=TBE11.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered more than 1 month ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE11.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE11.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE11.2-bundle.json" }
    

  @patient=TBE12.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered less than 5 months ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE12.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE12.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE12.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE12.2-bundle.json" }
    

  @patient=TBE13.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered more than 5 months ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE13.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE13.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE13.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE13.2-bundle.json" }
    

  @patient=TBE14.3
  Scenario: Three TBE primary series doses were administered, No TBE booster dose was administered, and The latest TBE dose was administered less than 3 years ago: Primary series is complete. Client is not due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE14.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE14.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE14.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE14.3-bundle.json" }
    

  @patient=TBE15.3
  Scenario: Three TBE primary series doses were administered, No TBE booster dose was administered, and The latest TBE dose was administered more than 3 years ago: Primary series is complete. Client is due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE15.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE15.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/TBE15.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[10]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE15.3-bundle.json" }
    

  @patient=TBE16.2
  Scenario: Three TBE primary series doses were administered and At least one booster dose was administered: Clinical judgement is required.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE16.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18STBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE16.2'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/TBE16.2'
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE16.2-bundle.json" }
    
