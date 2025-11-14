
Feature: IMMZ.D2.DT.Typhoid.Ty21a Decision Table Live attenuated Ty21a vaccine schedule

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-14"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE21"


  @patient=Typhoid30.1
  Scenario: Client's age is less than 6 years: Client is not due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid30.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid30.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid30.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with typhoid dose as client's age is less than 6 years.\nCheck for any other vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid30.1-bundle.json" }
  

  @patient=Typhoid31.3
  Scenario: Client's age is more than or equal to 6 years, Primary series is not complete, and No live vaccine, other than typhoid, was administered in the past 4 weeks: Client is due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid31.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid31.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Typhoid31.3'
    And resultWithMedication.contained[1].payload.contentString = "Prescribe the Ty21a primary series (if not done yet). Should vaccinate client with typhoid dose as primary series has not been completed and no live vaccines was administered in the past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid31.3-bundle.json" }
  

  @patient=Typhoid32.3
  Scenario: Client's age is more than or equal to 6 years, Primary series is not complete, and Live vaccine, other than typhoid, was administered in the past 4 weeks: Client is not due for Typhoid vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid32.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid32.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid32.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with typhoid dose as live vaccine was administered in the past 4 weeks.\nCheck for other vaccines due and inform the caregiver or the client when the next dose should be administered."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid32.3-bundle.json" }
  

  @patient=Typhoid33.3
  Scenario: Client's age is more than or equal to 6 years, Primary series is complete, and The latest typhoid dose was administered less than 3 years ago: Client is not due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid33.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid33.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid33.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with typhoid booster dose as the latest typhoid dose was administered less than 3 years ago.\nCheck for any other vaccines due and inform the caregiver or the client when the next dose should be administered."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid33.3-bundle.json" }
  

  @patient=Typhoid34.4
  Scenario: Client's age is more than or equal to 6 years, Primary series is complete, The latest typhoid dose was administered more than 3 years ago, and No live vaccine, other than typhoid, was administered in the past 4 weeks: Client is due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid34.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid34.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Typhoid34.4'
    And resultWithMedication.contained[1].payload.contentString = "Prescribe the Ty21a booster series. Should vaccinate client with typhoid booster dose as primary series has been completed, the latest typhoid dose was administered more than 3 years ago and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid34.4-bundle.json" }
  

  @patient=Typhoid35.4
  Scenario: Client's age is more than or equal to 6 years, Primary series is complete, The latest typhoid dose was administered more than 3 years ago, and Live vaccine, other than typhoid, was administered in the past 4 weeks: Client is not due for typhoid booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Typhoid35.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTTyphoidTy21a/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Typhoid35.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Typhoid35.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with typhoid booster dose as live vaccine was administered in the past 4 weeks.\nCheck for any other vaccines due and inform the caregiver or the client when the next dose should be administered"
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Typhoid35.4-bundle.json" }
  
