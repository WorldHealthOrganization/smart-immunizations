
Feature: IMMZ.D18.S.Seasonal influenza schedule Decision Table Inactivated trivalent and quadrivalent vaccines, 2-dose schedule for children aged under 9 years

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"


    And def resultContent = {}
    And resultContent[7] = "Influenza vaccines are safe and effective in children from 6 months of age"

    And resultContent[8] = "Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart"

    And resultContent[9] = "Seasonal influenza vaccine annual dose should be provided 1 year after the previous dose"


  @patient=Seasonalinfluenza08.1
  Scenario: Client's age is less than 6 months: Client is not due for seasonal influenza vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza08.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Seasonalinfluenza08.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza08.1-bundle.json" }
    

  @patient=Seasonalinfluenza09.2
  Scenario: No seasonal influenza primary series doses were administered and Client's age is more than or equal to 6 months: Client is due for seasonal influenza vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza09.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Seasonalinfluenza09.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[7]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza09.2-bundle.json" }
    

  @patient=Seasonalinfluenza10.3
  Scenario: One seasonal influenza primary series doses were administered, Client's age is less than 9 years, and The latest seasonal influenza dose was administered less than 4 weeks ago: Client is not due for seasonal influenza vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza10.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Seasonalinfluenza10.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza10.3-bundle.json" }
    

  @patient=Seasonalinfluenza11.3
  Scenario: One seasonal influenza primary series doses were administered, Client's age is less than 9 years, and The latest seasonal influenza dose was administered more than 4 weeks ago: Client is due for seasonal influenza vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza11.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Seasonalinfluenza11.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza11.3-bundle.json" }
    

  @patient=Seasonalinfluenza12.3
  Scenario: One seasonal influenza primary series doses were administered, Client's age is more than or equal to 9 years, and The latest seasonal influenza dose was administered less than 1 year ago: The primary series is complete. Client is not due for seasonal influenza annual dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza12.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza12.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Seasonalinfluenza12.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza12.3-bundle.json" }
    

  @patient=Seasonalinfluenza13.3
  Scenario: One seasonal influenza primary series doses were administered, Client's age is more than or equal to 9 years, and The latest seasonal influenza dose was administered more than 1 year ago: The primary series is complete. Client is due for seasonal influenza annual dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza13.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza13.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Seasonalinfluenza13.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[8]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza13.3-bundle.json" }
    

  @patient=Seasonalinfluenza14.2
  Scenario: Two seasonal influenza primary series doses were administered and The latest seasonal influenza dose was administered less than 1 year ago: The primary series is complete. Client is not due for seasonal influenza annual dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza14.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza14.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Seasonalinfluenza14.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza14.2-bundle.json" }
    

  @patient=Seasonalinfluenza15.2
  Scenario: Two seasonal influenza primary series doses were administered and The latest seasonal influenza dose was administered more than 1 year ago: The primary series is complete. Client is due for seasonal influenza annual dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza15.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza15.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Seasonalinfluenza15.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[9]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza15.2-bundle.json" }
    
