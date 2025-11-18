
Feature: IMMZ.D2.DT.TBE.FSME-Immun Decision Table FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-18"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE20"


  @patient=TBE08.1
  Scenario: Client's age is less than 1 year: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first TBE dose as client's age is less than 1 year.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE08.1-bundle.json" }
  

  @patient=TBE09.2
  Scenario: No TBE primary series doses were administered and Client's age is more than or equal to 1 year: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first TBE dose as no TBE doses have been administered and client's age is more than 1 year.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE09.2-bundle.json" }
  

  @patient=TBE10.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered less than 1 month ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE10.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE10.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago. Check for any vaccines due and inform the caregiver of when to come back for the next dose"
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE10.2-bundle.json" }
  

  @patient=TBE11.2
  Scenario: One TBE primary series dose was administered and The latest TBE dose was administered more than 1 month ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE11.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE11.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second TBE dose as the latest dose was administered more than 1 month ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE11.2-bundle.json" }
  

  @patient=TBE12.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered less than 5 months ago: Client is not due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE12.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE12.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE12.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third TBE dose as the latest dose was administered less than 5 months ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE12.2-bundle.json" }
  

  @patient=TBE13.2
  Scenario: Two TBE primary series doses were administered and The latest TBE dose was administered more than 5 months ago: Client is due for TBE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE13.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE13.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE13.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third TBE dose as the latest dose was administered more than 5 months ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE13.2-bundle.json" }
  

  @patient=TBE14.3
  Scenario: Three TBE primary series doses were administered, No TBE booster dose was administered, and The latest TBE dose was administered less than 3 years ago: Primary series is complete. Client is not due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE14.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE14.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE14.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago.\nCheck for any vaccines due and inform the caregiver of when to come back for the booster dose"
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE14.3-bundle.json" }
  

  @patient=TBE15.3
  Scenario: Three TBE primary series doses were administered, No TBE booster dose was administered, and The latest TBE dose was administered more than 3 years ago: Primary series is complete. Client is due for TBE booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE15.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE15.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/TBE15.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with TBE booster dose as the latest TBE dose was administered more than 3 years ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE15.3-bundle.json" }
  

  @patient=TBE16.2
  Scenario: Three TBE primary series doses were administered and At least one booster dose was administered: Clinical judgement is required.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-TBE16.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTBEFSMEImmun/$apply'
    And applyParams.parameter[0].valueString = 'Patient/TBE16.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/TBE16.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Assess if supplementary booster TBE dose(s) are necessary and create a clinical note.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-TBE16.2-bundle.json" }
  
