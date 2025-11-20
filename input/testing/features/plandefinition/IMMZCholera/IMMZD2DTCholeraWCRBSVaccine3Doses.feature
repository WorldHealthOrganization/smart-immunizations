
Feature: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses Decision Table Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-19"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE2"


  @patient=Cholera25.1
  Scenario: Client's age is less than 2 years: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera25.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera25.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera25.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera dose as client's age is less than 2 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first cholera dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera25.1-bundle.json" }
  

  @patient=Cholera26.2
  Scenario: Client's age is 2–5 years and No cholera primary series dose was administered: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera26.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera26.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera26.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as no cholera doses have been administered.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera26.2-bundle.json" }
  

  @patient=Cholera27.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered less than 1 week ago: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera27.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera27.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera27.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera27.4-bundle.json" }
  

  @patient=Cholera28.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered more than 1 week and less than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera28.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera28.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera28.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera28.4-bundle.json" }
  

  @patient=Cholera29.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is two, and The latest cholera dose was administered less than 1 week ago: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera29.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera29.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera29.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera29.4-bundle.json" }
  

  @patient=Cholera30.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is two, and The latest cholera dose was administered more than 1 week and less than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera30.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera30.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera30.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera30.4-bundle.json" }
  

  @patient=Cholera31.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is less than three, and The latest cholera dose was administered more than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera31.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera31.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera31.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera31.4-bundle.json" }
  

  @patient=Cholera32.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is three, and The latest cholera dose was administered less than {Member States defined lower limit} days ago: Primary series is complete. Client is not due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera32.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera32.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Cholera32.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with cholera dose as the latest cholera dose was administered less than {Member States defined lower limit} days ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera32.4-bundle.json" }
  

  @patient=Cholera33.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is three, and The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}: Primary series is complete. Client is due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera33.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera33.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera33.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera booster dose as the latest cholera dose was administered less than approximately 6 months ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera33.4-bundle.json" }
  

  @patient=Cholera34.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is three, and The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera34.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera34.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Cholera34.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than approximately 6 months ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera34.4-bundle.json" }
  
