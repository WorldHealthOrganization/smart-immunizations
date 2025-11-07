
Feature: IMMZ.D2.DT.DTP.On-time start Decision Table DTP vaccination schedule, on-time start (at ≤ 12 months of age)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE24"


  @patient=DTP08.1
  Scenario: Client's age is less than 6 weeks: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first DTP dose as client is less than 6 weeks old. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP08.1-bundle.json" }
  

  @patient=DTP09.2
  Scenario: No DTP primary series doses were administered and Client's age is between 6 weeks and 1 year: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first DTP dose as no DTP doses were administered and and client's age is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP09.2-bundle.json" }
  

  @patient=DTP10.2
  Scenario: One DTP primary series dose was administered and The latest DTP dose was administered less than 4 weeks ago: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP10.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP10.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second DTP dose as latest DTP dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP10.2-bundle.json" }
  

  @patient=DTP11.2
  Scenario: One DTP primary series dose was administered and The latest DTP dose was administered more than 4 weeks ago: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP11.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP11.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second DTP dose as the latest DTP dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP11.2-bundle.json" }
  

  @patient=DTP12.2
  Scenario: Two DTP primary series doses were administered and The latest DTP dose was administered less than 4 weeks ago: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP12.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP12.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP12.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third DTP dose as the latest DTP dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP12.2-bundle.json" }
  

  @patient=DTP13.2
  Scenario: Two DTP primary series doses were administered and The latest DTP dose was administered more than 4 weeks ago: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP13.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP13.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP13.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third DTP dose as the latest DTP dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP13.2-bundle.json" }
  

  @patient=DTP14.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and Client's age is less than 12 months: Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP14.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP14.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP14.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first tetanus and diphtheria booster dose as client's age is less than 12 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for first tetanus and diphtheria booster dose.\nShould not vaccinate client with pertussis booster dose as client's age is less than 1 year. \nCheck for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP14.3-bundle.json" }
  

  @patient=DTP15.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and Client's age is more than or equal to 12 months: Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP15.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP15.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP15.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as client is at least 12 months old. Check for contraindications.\nShould vaccinate client with pertussis booster dose as no pertussis booster dose was administered, client is within the appropriate age range and the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP15.3-bundle.json" }
  

  @patient=DTP16.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and Client's age is less than 4 years: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP16.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP16.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP16.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE12"
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with second tetanus and diphtheria booster dose as client\'s age is less than 4 years. \nCheck for any other vaccines due and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.\nShould vaccinate client with pertussis booster dose as no pertussis booster dose was administered, client is within the appropriate age range and the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP16.3-bundle.json" }
  

  @patient=DTP17.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and Client's age is more than or equal to 4 years: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP17.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP17.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP17.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second tetanus and diphtheria booster dose as client is within appropriate age range and the latest tetanus and diphtheria booster dose was administered more than 4 years ago. \nCheck for contraindications.\nShould vaccinate client with pertussis booster dose as no pertussis booster dose was administered, client is within the appropriate age range and the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP17.3-bundle.json" }
  

  @patient=DTP18.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and Client's age is less than 9 years: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP18.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP18.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP18.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third tetanus and diphtheria booster dose as client\'s age is less than 9 years. \nCheck for any vaccines due, and inform the caregiver of when to come back for third tetanus and diphtheria booster dose.\nPertussis immunization schedule is complete. Three DTP primary series doses were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP18.3-bundle.json" }
  

  @patient=DTP19.3
  Scenario: Three DTP primary series doses were administered, Two tetanus and diphtheria booster doses were administered, and Client's age is more than or equal to 9 years: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP19.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP19.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP19.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third tetanus and diphtheria booster dose as client is within appropriate age range and the latest tetanus and diphtheria dose was administered more than 4 years ago. \nCheck for contraindications.\nPertussis immunization schedule is complete. Three DTP primary series doses were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP19.3-bundle.json" }
  

  @patient=DTP20.2
  Scenario: Three DTP primary series doses were administered and Three tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP20.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP20.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP20.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.\nCheck for any other vaccines due.\nPertussis immunization schedule is complete. Three DTP primary series doses were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP20.2-bundle.json" }
  

  @patient=DTP21.3
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, and Client's age is less than 1 year: Client is not due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP21.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP21.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP21.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first tetanus and diphtheria booster dose as client\'s age is less than 12 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for first tetanus and diphtheria booster dose.\nShould not vaccinate client with pertussis booster dose as client\'s age is less than 1 year. \nCheck for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP21.3-bundle.json" }
  

  @patient=DTP22.4
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, Client's age is between 1 year and 6 years, and The latest DTP dose was administered less than 6 months ago: Primary DTP series is complete. Client is not due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP22.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP22.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP22.4'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as client is at least 12 months old. Check for contraindications.\nShould not vaccinate client with pertussis booster dose as the latest DTP dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP22.4-bundle.json" }
  

  @patient=DTP23.4
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, Client's age is between 1 year and 6 years, and The latest DTP dose was administered more than 6 months ago: Primary DTP series is complete. Client is due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP23.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP23.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP23.4'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as client is at least 12 months old. Check for contraindications.\nShould vaccinate client with pertussis booster dose as no pertussis booster dose was administered, client is within the appropriate age range and the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP23.4-bundle.json" }
  

  @patient=DTP24.3
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, and Client's age is more than 6 years: Pertussis immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP24.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP24.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP24.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as client is at least 12 months old. Check for contraindications.\nPertussis immunization schedule is complete. Three DTP primary series doses were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP24.3-bundle.json" }
  

  @patient=DTP25.2
  Scenario: Three DTP primary series doses were administered and One pertussis booster dose was administered: Pertussis immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP25.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPOnTimeStart/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP25.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP25.2'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as client is at least 12 months old. Check for contraindications.\nPertussis immunization schedule is complete. Three DTP primary series doses and one pertussis booster dose were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP25.2-bundle.json" }
  
