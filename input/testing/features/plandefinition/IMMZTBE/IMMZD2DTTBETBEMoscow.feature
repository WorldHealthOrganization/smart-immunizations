
Feature: IMMZ.D2.DT.TBE.TBE-Moscow Decision Table TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-18"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE20"


  @patient=TBE40.1
  Scenario: Client's age is less than 3 years: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE40.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE40.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE40.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first TBE dose as client's age is under 3 years.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE40.1-bundle.json" }
  

  @patient=TBE41.2
  Scenario: No TBE primary series doses were administered and Client's age is more than or equal to 3 years: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE41.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE41.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE41.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first TBE dose as no TBE doses have been administered and client's age is more than 3 years.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE41.2-bundle.json" }
  

  @patient=TBE42.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered less than 1 month ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE42.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE42.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE42.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE42.2-bundle.json" }
  

  @patient=TBE43.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered more than 1 month ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE43.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE43.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE43.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE43.2-bundle.json" }
  

  @patient=TBE44.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered less than 12 months ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE44.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE44.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE44.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third TBE dose as the latest dose was administered less than 12 months ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose"
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE44.2-bundle.json" }
  

  @patient=TBE45.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered more than 12 months ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE45.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE45.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE45.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third TBE dose as the latest dose was administered more than 12 months ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE45.2-bundle.json" }
  

  @patient=TBE46.2
  Scenario: Three TBE primary series doses were administered and The latest TBE dose was administered less than 3 years ago: Primary series is complete. Client is not due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE46.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE46.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE46.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago.\nCheck for contraindications."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE46.2-bundle.json" }
  

  @patient=TBE47.2
  Scenario: Three TBE primary series doses were administered and The latest TBE dose was administered more than 3 years ago: Primary series is complete. Client is due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE47.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBETBEMoscow/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE47.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE47.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with TBE booster dose as the primary series has been completed and the latest TBE dose was administered more than 3 years ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE47.2-bundle.json" }
  
