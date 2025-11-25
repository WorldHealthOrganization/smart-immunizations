
Feature: IMMZ.D2.DT.Seasonal influenza Decision Table Inactivated trivalent and quadrivalent vaccines, 2-dose schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-25"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE18"


  @patient=Seasonalinfluenza08.1
  Scenario: Client's age is less than 6 months: Client is not due for seasonal influenza vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first seasonal influenza dose as client's age is less than 6 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza08.1-bundle.json" }
  

  @patient=Seasonalinfluenza09.2
  Scenario: No seasonal influenza primary series doses were administered and Client's age is more than or equal to 6 months: Client is due for seasonal influenza vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first seasonal influenza dose as no seasonal infuenza doses were administered and client is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza09.2-bundle.json" }
  

  @patient=Seasonalinfluenza10.3
  Scenario: One seasonal influenza primary series doses were administered, Client's age is less than 9 years, and The latest seasonal influenza dose was administered less than 4 weeks ago: Client is not due for seasonal influenza vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza10.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza10.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second seasonal influenza dose as latest seasonal influenza dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza10.3-bundle.json" }
  

  @patient=Seasonalinfluenza11.3
  Scenario: One seasonal influenza primary series doses were administered, Client's age is less than 9 years, and The latest seasonal influenza dose was administered more than 4 weeks ago: Client is due for seasonal influenza vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza11.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza11.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second seasonal influenza dose as client is within appropriate age range and latest seasonal influenza dose was administerered more than 4 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza11.3-bundle.json" }
  

  @patient=Seasonalinfluenza12.3
  Scenario: One seasonal influenza primary series doses were administered, Client's age is more than or equal to 9 years, and The latest seasonal influenza dose was administered less than 1 year ago: The primary series is complete. Client is not due for seasonal influenza annual dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza12.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza12.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza12.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with annual dose as the latest seasonal influenza dose was administered less than 1 year ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza12.3-bundle.json" }
  

  @patient=Seasonalinfluenza13.3
  Scenario: One seasonal influenza primary series doses were administered, Client's age is more than or equal to 9 years, and The latest seasonal influenza dose was administered more than 1 year ago: The primary series is complete. Client is due for seasonal influenza annual dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza13.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza13.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza13.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with annual dose as the latest seasonal influenza dose was administered more than 1 year ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza13.3-bundle.json" }
  

  @patient=Seasonalinfluenza14.2
  Scenario: Two seasonal influenza primary series doses were administered and The latest seasonal influenza dose was administered less than 1 year ago: The primary series is complete. Client is not due for seasonal influenza annual dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza14.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza14.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza14.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with annual dose as latest seasonal influenza dose was administered less than 1 year ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza14.2-bundle.json" }
  

  @patient=Seasonalinfluenza15.2
  Scenario: Two seasonal influenza primary series doses were administered and The latest seasonal influenza dose was administered more than 1 year ago: The primary series is complete. Client is due for seasonal influenza annual dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Seasonalinfluenza15.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Seasonalinfluenza15.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Seasonalinfluenza15.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with annual dose as latest seasonal influenza dose was administered more than 1 year ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Seasonalinfluenza15.2-bundle.json" }
  
