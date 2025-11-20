
Feature: IMMZ.D18.S.Cholera.WC-rBS vaccine 2-dose schedule Decision Table Whole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 2-dose schedule for clients aged ≥ 6 years

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-19"


    And def resultContent = {}
    And resultContent[43] = "For WC-rBS vaccine (Dukoral), 2 doses should be given to children aged ≥ 6 years and adults, with an interval of 1–6 weeks between doses. If the interval since the last dose ≥ 6 weeks, restart the primary series.\n\nRevaccination for those aged ≥ 6 years: If more than 2 years have passed since completion of primary vaccination series, the primary series of 2 doses should be repeated."

    And resultContent[44] = "For WC-rBS vaccine (Dukoral) 2 doses should be given to children aged ≥6 years and adults, with an interval of 1-6 weeks between doses."

    And resultContent[45] = "For WC-rBS vaccine, for those aged ≥ 6 years of age, if less than 2 years have passed since completion of primary vaccination series, 1 dose for revaccination."


  @patient=Cholera44.2
  Scenario: Client's age is more than 5 years and No cholera primary series dose was administered: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera44.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera44.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera44.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[43]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera44.2-bundle.json" }
    

  @patient=Cholera45.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered less than 1 week ago: Client is not due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera45.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera45.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera45.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[44]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera45.4-bundle.json" }
    

  @patient=Cholera46.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered more than 1 week and less than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera46.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera46.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera46.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[44]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera46.4-bundle.json" }
    

  @patient=Cholera47.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is one, and The latest cholera dose was administered more than 6 weeks ago: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera47.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera47.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera47.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[44]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera47.4-bundle.json" }
    

  @patient=Cholera48.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is more than or equal to two, and The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}: Primary series is complete. Client is due for cholera booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera48.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera48.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera48.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[45]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera48.4-bundle.json" }
    

  @patient=Cholera49.4
  Scenario: Client's age is more than 5 years, At least one cholera primary series dose was administered, Dose number of the latest primary series dose is more than or equal to two, and The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}: Client is due for cholera vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Cholera49.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SCholeraWCRBSVaccine2Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Cholera49.4'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Cholera49.4'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[43]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Cholera49.4-bundle.json" }
    
