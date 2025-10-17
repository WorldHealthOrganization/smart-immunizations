
Feature: IMMZ.D18.S.Polio.bOPV plus IPV schedule Decision Table Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV) schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD18S.feature@defaults')
    And call read('IMMZD2DTPolio.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-10-10"


    And def resultContent = {}
    And resultContent[17] = "The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses."

    And resultContent[18] = "The first IPV dose should be administered from a minimum of 14 weeks of age."

    And resultContent[19] = "The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses."

    And resultContent[20] = "The first IPV dose should be administered from a minimum of 14 weeks of age (with the third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] or pentavalent vaccine [penta3]), with the second IPV dose being given at least 4 months later (possibly coinciding with other vaccines administered at 9 months of age)."

    And resultContent[21] = "The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses."


  @patient=Polio18.1
  Scenario: Client's age is less than 6 weeks: Client is not due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio18.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio18.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio18.1'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[17]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio18.1-bundle.json" }
    

  @patient=Polio19.2
  Scenario: No poliovirus primary series doses were administered and Client's age is between 6 weeks and 3 months: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio19.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio19.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio19.2'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[17]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio19.2-bundle.json" }
    

  @patient=Polio20.2
  Scenario: No poliovirus primary series doses were administered and Client's age is more than 3 months: Client is due for bOPV and IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio20.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio20.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio20.2'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[17]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio20.2-bundle.json" }
    

  @patient=Polio21.3
  Scenario: One poliovirus primary series dose was administered, Client's age is between 6 weeks and 14 weeks, and The latest bOPV dose was administered less than 4 weeks ago: Client is not due for polio vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio21.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio21.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio21.3'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio21.3-bundle.json" }
    

  @patient=Polio22.3
  Scenario: One poliovirus primary series dose was administered, Client's age is between 6 weeks and 14 weeks, and The latest bOPV dose was administered more than 4 weeks ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio22.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio22.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio22.3'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio22.3-bundle.json" }
    

  @patient=Polio23.4
  Scenario: One poliovirus primary series dose was administered, The poliovirus dose administered is bOPV, Client's age is more than or equal to 14 weeks, and The latest bOPV dose was administered less than 4 weeks ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio23.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio23.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio23.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio23.4-bundle.json" }
    

  @patient=Polio24.4
  Scenario: One poliovirus primary series dose was administered, The poliovirus dose administered is bOPV, Client's age is more than or equal to 14 weeks, and The latest bOPV dose was administered more than 4 weeks ago: Client is due for bOPV and IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio24.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio24.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio24.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[18]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio24.4-bundle.json" }
    

  @patient=Polio25.4
  Scenario: One poliovirus primary series dose was administered, The poliovirus dose administered is IPV, Client's age is more than or equal to 14 weeks, and The latest IPV dose was administered less than 4 months ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio25.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio25.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio25.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[17]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio25.4-bundle.json" }
    

  @patient=Polio26.4
  Scenario: One poliovirus primary series dose was administered, The poliovirus dose administered is IPV, Client's age is more than or equal to 14 weeks, and The latest IPV dose was administered more than 4 months ago: Client is due for bOPV and IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio26.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio26.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio26.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[17]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio26.4-bundle.json" }
    

  @patient=Polio27.4
  Scenario: Two poliovirus primary series doses were administered, The two doses administered are bOPV, Client's age is between 6 weeks and 14 weeks, and The latest bOPV dose was administered less than 4 weeks ago: Client is not due for polio vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio27.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio27.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio27.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[18]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio27.4-bundle.json" }
    

  @patient=Polio28.4
  Scenario: Two poliovirus primary series doses were administered, The two doses administered are bOPV, Client's age is between 6 weeks and 14 weeks, and The latest bOPV dose was administered more than 4 weeks ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio28.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio28.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio28.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[18]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio28.4-bundle.json" }
    

  @patient=Polio29.4
  Scenario: Two poliovirus primary series doses were administered, The two doses administered are bOPV, Client's age is more than or equal to 14 weeks, and The latest bOPV dose was administered less than 4 weeks ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio29.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio29.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio29.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[18]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio29.4-bundle.json" }
    

  @patient=Polio30.4
  Scenario: Two poliovirus primary series doses were administered, The two doses administered are bOPV, Client's age is more than or equal to 14 weeks, and The latest bOPV dose was administered more than 4 weeks ago: Client is due for bOPV and IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio30.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio30.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio30.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[18]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio30.4-bundle.json" }
    

  @patient=Polio31.4
  Scenario: Two poliovirus primary series doses were administered, From the two doses administered one is bOPV and one is IPV, The latest bOPV dose was administered less than 4 weeks ago, and The latest IPV dose was administered less than 4 months ago: Client is not due for polio vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio31.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio31.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio31.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio31.4-bundle.json" }
    

  @patient=Polio32.4
  Scenario: Two poliovirus primary series doses were administered, From the two doses administered one is bOPV and one is IPV, The latest bOPV dose was administered less than 4 weeks ago, and The latest IPV dose was administered more than 4 months ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio32.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio32.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio32.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio32.4-bundle.json" }
    

  @patient=Polio33.4
  Scenario: Two poliovirus primary series doses were administered, From the two doses administered one is bOPV and one is IPV, The latest bOPV dose was administered more than 4 weeks ago, and The latest IPV dose was administered less than 4 months ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio33.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio33.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio33.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio33.4-bundle.json" }
    

  @patient=Polio34.4
  Scenario: Two poliovirus primary series doses were administered, From the two doses administered one is bOPV and one is IPV, The latest bOPV dose was administered more than 4 weeks ago, and The latest IPV dose was administered more than 4 months ago: Client is due for bOPV and IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio34.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio34.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio34.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[19]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[20]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio34.4-bundle.json" }
    

  @patient=Polio35.2
  Scenario: Two poliovirus primary series doses were administered and The two doses administered are IPV: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio35.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio35.2'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio35.2'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[17]) 
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio35.2-bundle.json" }
    

  @patient=Polio36.3
  Scenario: Three poliovirus primary series doses were administered, The three doses administered are bOPV, and Client's age is less than 14 weeks: Client is not due for polio vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio36.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio36.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio36.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio36.3-bundle.json" }
    

  @patient=Polio37.3
  Scenario: Three poliovirus primary series doses were administered, The three doses administered are bOPV, and Client's age is more than or equal to 14 weeks: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio37.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio37.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio37.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[18])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio37.3-bundle.json" }
    

  @patient=Polio38.4
  Scenario: Three poliovirus primary series doses were administered, From the three doses administered, one is IPV and two are bOPV, The latest bOPV dose was administered less than 4 weeks ago, and The latest IPV dose was administered less than 4 months ago: Client is not due for polio vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio38.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio38.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio38.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[20]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio38.4-bundle.json" }
    

  @patient=Polio39.4
  Scenario: Three poliovirus primary series doses were administered, From the three doses administered, one is IPV and two are bOPV, The latest bOPV dose was administered less than 4 weeks ago, and The latest IPV dose was administered more than 4 months ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio39.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio39.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio39.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[20]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio39.4-bundle.json" }
    

  @patient=Polio40.4
  Scenario: Three poliovirus primary series doses were administered, From the three doses administered, one is IPV and two are bOPV, The latest bOPV dose was administered more than 4 weeks ago, and The latest IPV dose was administered less than 4 months ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio40.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio40.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio40.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[20]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio40.4-bundle.json" }
    

  @patient=Polio41.4
  Scenario: Three poliovirus primary series doses were administered, From the three doses administered, one is IPV and two are bOPV, The latest bOPV dose was administered more than 4 weeks ago, and The latest IPV dose was administered more than 4 months ago: Client is due for bOPV and IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio41.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio41.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithTwoCR.contained[0].subject.reference = 'Patient/Polio41.4'
    And resultWithTwoCR.contained[1].payload.contentString.startsWith(resultContent[20]) 
    And resultWithTwoCR.contained[2].payload.contentString.startsWith(resultContent[21]) 
    And match response contains deep resultWithTwoCR
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio41.4-bundle.json" }
    

  @patient=Polio42.3
  Scenario: Three poliovirus primary series doses were administered, From the three doses administered, one is bOPV and two are IPV, and The latest bOPV dose was administered less than 4 weeks ago: Client is not due for polio vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio42.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio42.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio42.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio42.3-bundle.json" }
    

  @patient=Polio43.3
  Scenario: Three poliovirus primary series doses were administered, From the three doses administered, one is bOPV and two are IPV, and The latest bOPV dose was administered more than 4 weeks ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio43.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio43.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio43.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[19])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio43.3-bundle.json" }
    

  @patient=Polio44.3
  Scenario: Four poliovirus primary series doses were administered, From the four doses administered, one is IPV and three are bOPV, and The latest IPV dose was administered less than 4 months ago: Client is not due for polio vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio44.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio44.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio44.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[20])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio44.3-bundle.json" }
    

  @patient=Polio45.3
  Scenario: Four poliovirus primary series doses were administered, From the four doses administered, one is IPV and three are bOPV, and The latest IPV dose was administered more than 4 months ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio45.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio45.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio45.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[20])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio45.3-bundle.json" }
    

  @patient=Polio46.3
  Scenario: Four poliovirus primary series doses were administered, From the four doses administered, two are IPV and two are bOPV, and The latest bOPV dose was administered less than 4 weeks ago: Client is not due for polio vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio46.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio46.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio46.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[21])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio46.3-bundle.json" }
    

  @patient=Polio47.3
  Scenario: Four poliovirus primary series doses were administered, From the four doses administered, two are IPV and two are bOPV, and The latest bOPV dose was administered more than 4 weeks ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio47.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio47.3'
    And request applyParams
    When method post
    Then status 200
    And resultSchedule.contained[0].subject.reference = 'Patient/Polio47.3'
    And resultSchedule.contained[1].payload.contentString.startsWith(resultContent[21])
    And match response contains deep resultSchedule
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio47.3-bundle.json" }
    

  @patient=Polio48.1
  Scenario: Five poliovirus primary series doses were administered: Polio immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio48.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD18SPolioBOPVPlusIPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio48.1'
    And request applyParams
    When method post
    Then status 200
    And resultNoSchedule.contained[0].subject.reference = 'Patient/Polio48.1'
    
    And match response contains deep resultNoSchedule
    And match response.contained == '#[1]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio48.1-bundle.json" }
    
