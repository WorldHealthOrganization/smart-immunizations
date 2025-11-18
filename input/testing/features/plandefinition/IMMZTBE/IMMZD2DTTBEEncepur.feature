
Feature: IMMZ.D2.DT.TBE.Encepur Decision Table Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-18"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE20"


  @patient=TBE24.1
  Scenario: Client's age is less than 1 year: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE24.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE24.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE24.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first TBE dose as client's age is less than 1 year. \nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE24.1-bundle.json" }
  

  @patient=TBE25.2
  Scenario: No TBE primary series doses were administered and Client's age is more than or equal to 1 year: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE25.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE25.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE25.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first TBE dose as no TBE doses have been administered and client's age is more than 1 year. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE25.2-bundle.json" }
  

  @patient=TBE26.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered less than 1 month ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE26.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE26.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE26.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE26.2-bundle.json" }
  

  @patient=TBE27.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered more than 1 month ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE27.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE27.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE27.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE27.2-bundle.json" }
  

  @patient=TBE28.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered less than 9 months ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE28.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE28.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE28.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third TBE dose as the latest dose was administered less than 9 months ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE28.2-bundle.json" }
  

  @patient=TBE29.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered more than 9 months ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE29.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE29.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE29.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third TBE dose as the latest dose was administered more than 9 months ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE29.2-bundle.json" }
  

  @patient=TBE30.3
  Scenario: Three TBE primary series doses were administered, No TBE booster dose was administered, and The latest TBE dose was administered less than 3 years ago: The primary series is complete. Client is not due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE30.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE30.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE30.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago. \nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE30.3-bundle.json" }
  

  @patient=TBE31.3
  Scenario: Three TBE primary series doses were administered, No TBE booster dose was administered, and The latest TBE dose was administered more than 3 years ago: The primary series is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE31.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE31.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE31.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with TBE booster dose as the primary series has been completed and the latest TBE dose was administered more than 3 years ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE31.3-bundle.json" }
  

  @patient=TBE32.2
  Scenario: Three TBE primary series doses were administered and At least one booster dose was administered: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE32.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEEncepur/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE32.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE32.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Assess if supplementary booster TBE dose(s) are necessary and create a clinical note. \nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE32.2-bundle.json" }
  
