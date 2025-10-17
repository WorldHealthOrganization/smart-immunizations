
Feature: IMMZ.D2.DT.Polio.Sequential IPV–bOPV Decision Table Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-10-10"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE14"
    And string resultStr = resultWithMedication
    And json resultWithIPV = resultStr
    And resultWithIPV.contained[2].medicationCodeableConcept.coding.code = "DE31"
    And json resultWithOPV = resultStr
    And resultWithOPV.contained[2].medicationCodeableConcept.coding.code = "DE30"
    And print resultWithIPV


  @patient=Polio56.2
  Scenario: No poliovirus primary series doses were administered and Client's age is less than 8 weeks: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio56.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio56.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio56.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first IPV dose as client's age is less than 8 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for the first poliovirus dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio56.2-bundle.json" }
  

  @patient=Polio57.2
  Scenario: No poliovirus primary series doses were administered and Client's age is more than or equal to 8 weeks: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio57.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio57.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithIPV.contained[0].subject.reference = 'Patient/Polio57.2'
    And resultWithIPV.contained[1].payload.contentString = "Should vaccinate client with first IPV dose as client is within appropriate age range and IPV dose was not administered. \nCheck for contraindications."
    And match response contains deep resultWithIPV
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio57.2-bundle.json" }
  

  @patient=Polio58.2
  Scenario: One poliovirus primary series dose was administered and The latest poliovirus dose was administered less than 4 weeks ago: Client is not due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio58.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio58.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio58.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second IPV dose as the latest IPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio58.2-bundle.json" }
  

  @patient=Polio59.2
  Scenario: One poliovirus primary series dose was administered and The latest poliovirus dose was administered more than 4 weeks ago: Client is due for IPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio59.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio59.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithIPV.contained[0].subject.reference = 'Patient/Polio59.2'
    And resultWithIPV.contained[1].payload.contentString = "Should vaccinate client with second IPV dose as the latest IPV dose was administered more than 4 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithIPV
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio59.2-bundle.json" }
  

  @patient=Polio60.1
  Scenario: Two poliovirus primary series doses were administered: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio60.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio60.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithOPV.contained[0].subject.reference = 'Patient/Polio60.1'
    And resultWithOPV.contained[1].payload.contentString = "Should vaccinate client with first bOPV dose as two IPV doses were administered.\nCheck for contraindications."
    And match response contains deep resultWithOPV
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio60.1-bundle.json" }
  

  @patient=Polio61.2
  Scenario: Three poliovirus primary series doses were administered and The latest poliovirus dose was administered less than 4 weeks ago: Client is not due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio61.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio61.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio61.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second bOPV dose as the latest bOPV dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose"
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio61.2-bundle.json" }
  

  @patient=Polio62.2
  Scenario: Three poliovirus primary series doses were administered and The latest poliovirus dose was administered more than 4 weeks ago: Client is due for bOPV vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio62.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio62.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithOPV.contained[0].subject.reference = 'Patient/Polio62.2'
    And resultWithOPV.contained[1].payload.contentString = "Should vaccinate client with second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithOPV
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio62.2-bundle.json" }
  

  @patient=Polio63.1
  Scenario: Four poliovirus primary series doses were administered: Primary series is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio63.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio63.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio63.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Poliovirus primary series is complete. Assess if supplementary bOPV dose(s) are necessary and create a clinical note.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio63.1-bundle.json" }
  
