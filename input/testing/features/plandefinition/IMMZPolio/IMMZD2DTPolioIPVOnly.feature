
Feature: IMMZ.D2.DT.Polio.IPV-only Decision Table Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-10-10"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE31"


  @patient=Polio71.2
  Scenario: No poliovirus primary series doses were administered and Client's age is less than 6 weeks: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio71.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio71.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio71.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Shold not vaccinate client with first IPV dose as client's age is less than 6 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first IPV dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio71.2-bundle.json" }
  

  @patient=Polio72.2
  Scenario: No poliovirus primary series doses were administered and Client's age is more than or equal to 6 weeks: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio72.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio72.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Polio72.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first IPV dose as client is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio72.2-bundle.json" }
  

  @patient=Polio73.2
  Scenario: One poliovirus primary series dose was administered and The latest poliovirus dose was administered less than 4 weeks ago: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio73.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio73.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio73.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second IPV dose as the latest IPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio73.2-bundle.json" }
  

  @patient=Polio74.2
  Scenario: One poliovirus primary series dose was administered and The latest poliovirus dose was administered more than 4 weeks ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio74.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio74.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Polio74.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second IPV dose as the latest IPV dose was administered more than 4 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio74.2-bundle.json" }
  

  @patient=Polio75.2
  Scenario: Two poliovirus primary series doses were administered and The latest poliovirus dose was administered less than 4 weeks ago: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio75.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio75.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio75.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third IPV dose as the latest IPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver when to come back for the third dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio75.2-bundle.json" }
  

  @patient=Polio76.2
  Scenario: Two poliovirus primary series doses were administered and The latest poliovirus dose was administered more than 4 weeks ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio76.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio76.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Polio76.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third IPV dose as the latest poliovirus dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio76.2-bundle.json" }
  

  @patient=Polio77.2
  Scenario: Three poliovirus primary series doses were administered and Client's age was more than 6 weeks when the primary series was started: Polio immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio77.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio77.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio77.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Polio immunization schedule is complete as client's age was more than 6 weeks when the primary series was started. Three poliovirus primary series doses were administered."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio77.2-bundle.json" }
  

  @patient=Polio78.3
  Scenario: Three poliovirus primary series doses were administered, Client's age was 6 weeks when the primary series was started, and The latest poliovirus dose was administered less than 6 months ago: Primary series is complete. Client is not due for IPV booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio78.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio78.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio78.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with IPV booster dose as the latest poliovirus dose was administered less than 6 months ago.\nCheck for any other vaccines due and inform the caregiver when to come back for the booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio78.3-bundle.json" }
  

  @patient=Polio79.4
  Scenario: Three poliovirus primary series doses were administered, Client's age was 6 weeks when the primary series was started, The latest poliovirus dose was administered more than 6 months ago, and No polio booster dose was administered: Primary series is complete. Client is due for IPV booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio79.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio79.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Polio79.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with IPV booster dose as three poliovirus primary series doses were administered, client's age was 6 weeks when the primary series was started and the latest poliovirus dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio79.4-bundle.json" }
  

  @patient=Polio80.2
  Scenario: Three poliovirus primary series doses were administered and Polio booster dose was administered: Polio immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio80.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioIPVOnly/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio80.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio80.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Polio immunization schedule is complete. Three poliovirus primary series doses and a booster dose were administered."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio80.2-bundle.json" }
  
