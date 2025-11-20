
Feature: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses Decision Table Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-19"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE2"


  @patient=Cholera44.2
  Scenario: Client's age is more than 5 years and No cholera primary series dose was administered: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera44.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera44.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera44.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as no cholera doses have been administered.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera44.2-bundle.json" }
  

  @patient=Cholera45.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered less than 1 week ago: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera45.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera45.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera45.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera45.4-bundle.json" }
  

  @patient=Cholera46.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered more than 1 week and less than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera46.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera46.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera46.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera46.4-bundle.json" }
  

  @patient=Cholera47.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered more than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera47.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera47.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera47.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera47.4-bundle.json" }
  

  @patient=Cholera48.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is more than or equal to two, and The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}: Primary series is complete. Client is due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera48.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera48.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera48.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera booster dose as the latest cholera dose was administered approximately less than 2 years ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera48.4-bundle.json" }
  

  @patient=Cholera49.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is more than or equal to two, and The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera49.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera49.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera49.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered approximately more than 2 years ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera49.4-bundle.json" }
  
