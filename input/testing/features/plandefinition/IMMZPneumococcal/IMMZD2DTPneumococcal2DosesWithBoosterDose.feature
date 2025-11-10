
Feature: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose Decision Table 2 primary doses with a booster dose (2p+1)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-10"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE13"


  @patient=Pneumococcal08.1
  Scenario: The client's age is less than 6 weeks: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first pneumococcal dose as client's age is less than 6 weeks. Check for any vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal08.1-bundle.json" }
  

  @patient=Pneumococcal09.2
  Scenario: No pneumococcal primary series doses were administered and The client's age is between 6 weeks and 5 years: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Pneumococcal09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first pneumococcal dose as no pneumococcal doses were administered and client is within the appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal09.2-bundle.json" }
  

  @patient=Pneumococcal10.4
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to 5 years, The first pneumococcal dose was administered within 24 months post birth, and The latest pneumococcal dose was administered less than 8 weeks ago: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal10.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal10.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal10.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 8 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal10.4-bundle.json" }
  

  @patient=Pneumococcal11.4
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to 5 years, The first pneumococcal dose was administered within 24 months post birth, and The latest pneumococcal dose was administered more than 8 weeks ago: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal11.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal11.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Pneumococcal11.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 8 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal11.4-bundle.json" }
  

  @patient=Pneumococcal12.5
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to 5 years, The first pneumococcal dose was administered after 24 months post birth, The latest pneumococcal dose was administered less than 8 weeks ago, and Client is at high risk for pneumococcal infection: Client is not due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal12.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal12.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal12.5'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 8 weeks ago and client is at high risk for pneumococcal infection. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal12.5-bundle.json" }
  

  @patient=Pneumococcal13.5
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to 5 years, The first pneumococcal dose was administered after 24 months post birth, The latest pneumococcal dose was administered more than 8 weeks ago, and Client is at high risk for pneumococcal infection: Client is due for pneumococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal13.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal13.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Pneumococcal13.5'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 8 weeks ago and client is at high risk for pneumococcal infection. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal13.5-bundle.json" }
  

  @patient=Pneumococcal14.4
  Scenario: One pneumococcal primary series dose was administered, The client's age is less than or equal to 5 years, The first pneumococcal dose was administered after 24 months post birth, and Client is not at high risk for pneumococcal infection: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal14.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal14.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal14.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Pneumococcal immunization schedule is complete. One primary series dose was administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal14.4-bundle.json" }
  

  @patient=Pneumococcal15.4
  Scenario: Two pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, The client's age is less than or equal to 5 years, and The first pneumococcal dose was administered within 12 months post birth: Client is due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal15.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal15.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Pneumococcal15.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first pneumococcal booster dose as first pneumococcal dose was administered within 12 months post birth. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal15.4-bundle.json" }
  

  @patient=Pneumococcal16.4
  Scenario: Two pneumococcal primary series doses were administered, No pneumococcal booster dose was administered, The client's age is less than or equal to 5 years, and The first pneumococcal dose was administered after 12 months post birth: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal16.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal16.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal16.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Pneumococcal immunization schedule is complete. Two pneumococcal primary series doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal16.4-bundle.json" }
  

  @patient=Pneumococcal17.4
  Scenario: Two pneumococcal primary series doses were administered, One pneumococcal booster dose was administered, The client's age is less than 12 months, and Client's HIV status is positive: Client is not due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal17.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal17.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal17.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second pneumococcal booster dose as client's age is less than 12 months and client is HIV positive. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal17.4-bundle.json" }
  

  @patient=Pneumococcal18.4
  Scenario: Two pneumococcal primary series doses were administered, One pneumococcal booster dose was administered, The client's age is less than 12 months, and Client had preterm birth: Client is not due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal18.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal18.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal18.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second pneumococcal booster dose as client's age is less than 12 months and client had preterm birth. \nCheck for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal18.4-bundle.json" }
  

  @patient=Pneumococcal19.5
  Scenario: Two pneumococcal primary series doses were administered, One pneumococcal booster dose was administered, The client's age is more than or equal to 12 months and less than 24 months, The latest pneumococcal dose was administered within 12 months post birth, and Client's HIV status is positive: Client is due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal19.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal19.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Pneumococcal19.5'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second pneumococcal booster dose as client is HIV positive and latest pneumococcal dose was administered within 12 months post birth.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal19.5-bundle.json" }
  

  @patient=Pneumococcal20.5
  Scenario: Two pneumococcal primary series doses were administered, One pneumococcal booster dose was administered, The client's age is more than or equal to 12 months and less than 24 months, The latest pneumococcal dose was administered within 12 months post birth, and Client had preterm birth: Client is due for pneumococcal booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal20.5-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal20.5'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Pneumococcal20.5'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second pneumococcal booster dose as client had preterm birth and latest pneumococcal dose was administered within 12 months post birth.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal20.5-bundle.json" }
  

  @patient=Pneumococcal21.4
  Scenario: Two pneumococcal primary series doses were administered, One pneumococcal booster dose was administered, The client's age is more than or equal to 12 months and less than 24 months, and The latest pneumococcal dose was administered after 12 months post birth: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal21.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal21.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal21.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Pneumococcal immunization schedule is complete. Two pneumococcal primary series doses and one booster dose were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal21.4-bundle.json" }
  

  @patient=Pneumococcal22.4
  Scenario: Two pneumococcal primary series doses were administered, One pneumococcal booster dose was administered, Client's HIV status is negative or unknown, and Client did not have preterm birth: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal22.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal22.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal22.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Pneumococcal immunization schedule is complete. Two pneumococcal primary series doses and one booster dose were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal22.4-bundle.json" }
  

  @patient=Pneumococcal23.3
  Scenario: Two pneumococcal primary series doses were administered, One pneumococcal booster dose was administered, and The client's age is more than or equal to 24 months: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal23.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal23.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal23.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Pneumococcal immunization schedule is complete. Two pneumococcal primary series doses and one booster dose were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal23.3-bundle.json" }
  

  @patient=Pneumococcal24.2
  Scenario: Two pneumococcal primary series doses were administered and Two pneumococcal booster doses were administered: Pneumococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal24.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal24.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal24.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Pneumococcal immunization schedule is complete. Two pneumococcal primary series doses and two booster doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal24.2-bundle.json" }
  

  @patient=Pneumococcal25.1
  Scenario: The client's age is more than 5 years: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Pneumococcal25.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Pneumococcal25.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Pneumococcal25.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Members States should update this action according to the national immunization programme."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Pneumococcal25.1-bundle.json" }
  
