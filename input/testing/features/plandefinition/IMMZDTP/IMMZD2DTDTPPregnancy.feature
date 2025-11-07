
Feature: IMMZ.D2.DT.DTP.Pregnancy Decision Table Determine whether DTP-containing vaccines are needed for pregnant women

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE24"


  @patient=DTP54.2
  Scenario: No DTP primary series doses were administered and Client is currently pregnant: Client should follow 'delayed or interrupted series' decision logic
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP54.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancy/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP54.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP54.2'
    And resultWithoutMedication.contained[1].payload.contentString = "The client has a delayed start. Please follow the 'delayed or interrupted' schedule."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP54.2-bundle.json" }
  

  @patient=DTP55.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster dose was administered, and Client is currently pregnant: Client should follow 'pregnancy starting with 3 doses' decision logic
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP55.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancy/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP55.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP55.3'
    And resultWithoutMedication.contained[1].payload.contentString = "The client has received 3 tetanus-containing vaccine doses during childhood. Please follow the 'pregnancy starting with 3 doses' schedule."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP55.3-bundle.json" }
  

  @patient=DTP56.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and Client is currently pregnant: Client should follow 'pregnancy starting with 4 doses' decision logic
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP56.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancy/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP56.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP56.3'
    And resultWithoutMedication.contained[1].payload.contentString = "The client has received 4 tetanus-containing vaccines doses during childhood or pre-adulthood. Please follow the 'pregnancy starting with 4 doses' schedule."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP56.3-bundle.json" }
  

  @patient=DTP57.2
  Scenario: Three DTP primary series doses were administered and Two tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP57.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancy/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP57.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP57.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and two tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP57.2-bundle.json" }
  

  @patient=DTP58.2
  Scenario: Three DTP primary series doses were administered and Three tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP58.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPPregnancy/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP58.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP58.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and three tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP58.2-bundle.json" }
  
