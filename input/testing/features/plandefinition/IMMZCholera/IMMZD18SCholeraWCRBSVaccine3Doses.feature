
Feature: IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule Decision Table Whole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 3-dose schedule for clients aged 2–5 years

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-19"


    And def resultContent = {}
    And resultContent[24] = "For WC-rBS vaccine (Dukoral), 3 doses should be given to children 2–5 years of age, with an interval of 1-6 weeks between doses. If the interval since the last dose ≥ 6 weeks, restart the primary series.\n\nRevaccination for children aged 2–5 years: If more than 6 months have passed since completion of primary vaccination series, the primary series of 3 doses should be repeated."

    And resultContent[25] = "For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years, with an interval of 1–6 weeks between doses."

    And resultContent[26] = "For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years, with an interval of 1–6 weeks between doses."

    And resultContent[27] = "For WC-rBS vaccine, for children aged 2–5 years, if less than 6 months have passed since completion of primary vaccination series, 1 dose for revaccination."


  @patient=Cholera25.1
  Scenario: Client's age is less than 2 years: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera25.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera25.1'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera25.1'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[24]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera25.1-bundle.json" }
    

  @patient=Cholera26.2
  Scenario: Client's age is 2–5 years and No cholera primary series dose was administered: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera26.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera26.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera26.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[24]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera26.2-bundle.json" }
    

  @patient=Cholera27.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered less than 1 week ago: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera27.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera27.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera27.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[25]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera27.4-bundle.json" }
    

  @patient=Cholera28.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered more than 1 week and less than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera28.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera28.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera28.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[25]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera28.4-bundle.json" }
    

  @patient=Cholera29.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is two, and The latest cholera dose was administered less than 1 week ago: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera29.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera29.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera29.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera29.4-bundle.json" }
    

  @patient=Cholera30.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is two, and The latest cholera dose was administered more than 1 week and less than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera30.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera30.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera30.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[26]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera30.4-bundle.json" }
    

  @patient=Cholera31.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is less than three, and The latest cholera dose was administered more than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera31.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera31.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera31.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[24]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera31.4-bundle.json" }
    

  @patient=Cholera32.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is three, and The latest cholera dose was administered less than {Member States defined lower limit} days ago: Primary series is complete. Client is not due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera32.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera32.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera32.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[27]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera32.4-bundle.json" }
    

  @patient=Cholera33.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is three, and The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}: Primary series is complete. Client is due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera33.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera33.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera33.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[27]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera33.4-bundle.json" }
    

  @patient=Cholera34.4
  Scenario: Client's age is 2–5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is three, and The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera34.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera34.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera34.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[24]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera34.4-bundle.json" }
    
