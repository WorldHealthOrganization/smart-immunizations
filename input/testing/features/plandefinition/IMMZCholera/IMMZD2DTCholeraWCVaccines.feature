
Feature: IMMZ.D2.DT.Cholera.WC vaccines Decision Table Whole-cell (WC) vaccines schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-19"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE2"


  @patient=Cholera08.1
  Scenario: Client's age is less than 1 year: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera dose as client's age is under 1 year.\nCheck for any vaccines due and inform the caregiver of when to come back for the first cholera dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera08.1-bundle.json" }
  

  @patient=Cholera09.2
  Scenario: Client's age is more than or equal to 1 year and No cholera primary series dose was administered: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as no doses have been given."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera09.2-bundle.json" }
  

  @patient=Cholera10.3
  Scenario: Client's age is more than or equal to 1 year, One cholera primary series dose was administered, and The latest cholera dose was administered less than 14 days ago: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera10.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera10.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera10.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 14 days ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera10.3-bundle.json" }
  

  @patient=Cholera11.3
  Scenario: Client's age is more than or equal to 1 year, One cholera primary series dose was administered, and The latest cholera dose was administered more than 14 days ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera11.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera11.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as the latest cholera dose was administered more than 14 days ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera11.3-bundle.json" }
  

  @patient=Cholera12.4
  Scenario: Client's age is more than or equal to 1 year, Two cholera primary series doses were administered, No cholera booster series dose was administered, and The latest cholera dose was administered less than 3 years ago: Primary series is complete. Client is not due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera12.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera12.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera12.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera booster dose as primary series was completed less than 3 years ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the first booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera12.4-bundle.json" }
  

  @patient=Cholera13.4
  Scenario: Client's age is more than or equal to 1 year, Two cholera primary series doses were administered, No cholera booster series dose was administered, and The latest cholera dose was administered more than 3 years ago: Primary series is complete. Client is due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera13.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera13.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera13.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as the primary series for cholera was completed more than 3 years ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera13.4-bundle.json" }
  

  @patient=Cholera14.5
  Scenario: Client's age is more than or equal to 1 year, Two cholera primary series doses were administered, At least one booster series dose was administered, Dose number of the latest dose is one, and The latest cholera dose was administered less than 14 days ago: Client is not due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera14.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera14.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera14.5'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera booster dose as the latest dose was administered less than 14 days ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera14.5-bundle.json" }
  

  @patient=Cholera15.5
  Scenario: Client's age is more than or equal to 1 year, Two cholera primary series doses were administered, At least one booster series dose was administered, Dose number of the latest dose is one, and The latest cholera dose was administered more than 14 days ago and less than 3 years ago: Client is due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera15.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera15.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera15.5'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera booster dose as the booster series is not completed and the latest cholera dose was administered more than 14 days ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera15.5-bundle.json" }
  

  @patient=Cholera16.5
  Scenario: Client's age is more than or equal to 1 year, Two cholera primary series doses were administered, At least one booster series dose was administered, Dose number of the latest dose is two, and The latest cholera dose was administered less than 3 years ago: Booster series is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera16.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera16.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera16.5'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera dose as the booster series for cholera was completed less than 3 years ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next booster series."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera16.5-bundle.json" }
  

  @patient=Cholera17.4
  Scenario: Client's age is more than or equal to 1 year, Two cholera primary series doses were administered, At least one booster series dose was administered, and The latest cholera dose was administered more than 3 years ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera17.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera17.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera17.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as the booster series for cholera was completed more than 3 years ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera17.4-bundle.json" }
  
