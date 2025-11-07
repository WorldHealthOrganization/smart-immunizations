
Feature: IMMZ.D2.DT.DTP.Delayed or interrupted series Decision Table DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-05"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE24"


  @patient=DTP33.2
  Scenario: No DTP primary series doses were administered and Client's age is more than 1 year: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP33.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP33.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP33.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first DTP dose as no DTP doses were administered and client's age is more than 1 year. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP33.2-bundle.json" }
  

  @patient=DTP34.2
  Scenario: One DTP primary series dose was administered and The latest DTP dose was administered less than 4 weeks ago: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP34.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP34.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP34.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second DTP dose as the latest DTP dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second DTP dose"
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP34.2-bundle.json" }
  

  @patient=DTP35.2
  Scenario: One DTP primary series dose was administered and The latest DTP dose was administered more than 4 weeks ago: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP35.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP35.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP35.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second DTP dose as the latest DTP dose was administered more than 4 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP35.2-bundle.json" }
  

  @patient=DTP36.2
  Scenario: Two DTP primary series doses were administered and The latest DTP dose was administered less than 6 months ago: Client is not due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP36.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP36.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP36.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third DTP dose the latest DTP dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for third DTP dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP36.2-bundle.json" }
  

  @patient=DTP37.2
  Scenario: Two DTP primary series doses were administered and The latest DTP dose was administered more than 6 months ago: Client is due for DTP vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP37.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP37.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP37.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third DTP dose as the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP37.2-bundle.json" }
  

  @patient=DTP38.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and The latest DTP dose was administered less than 1 year ago: Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP38.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP38.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP38.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first tetanus and diphtheria booster dose as the latest DTP dose was administered less than 1 year ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for first tetanus and diphtheria booster dose.\nShould not vaccinate client with pertussis booster dose as the latest DTP dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP38.3-bundle.json" }
  

  @patient=DTP39.3
  Scenario: Three DTP primary series doses were administered, No tetanus and diphtheria booster doses were administered, and The latest DTP dose was administered more than 1 year ago: Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP39.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP39.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP39.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as the latest DTP dose was administered more than 1 year ago. \nCheck for contraindications.\nShould vaccinate client with pertussis booster dose as no pertussis booster doses were administered, client is within appropriate age range and the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP39.3-bundle.json" }
  

  @patient=DTP40.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and The latest tetanus and diphtheria dose was administered less than 1 year ago: Client is not due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP40.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP40.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP40.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE12"
    And resultWithMedication.contained[1].payload.contentString = "Should not vaccinate client with second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered less than 1 year ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.\nShould vaccinate client with pertussis booster dose as no pertussis booster doses were administered, client is within appropriate age range and the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP40.3-bundle.json" }
  

  @patient=DTP41.3
  Scenario: Three DTP primary series doses were administered, One tetanus and diphtheria booster dose was administered, and The latest tetanus and diphtheria dose was administered more than 1 year ago: Client is due for tetanus and diphtheria booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP41.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP41.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP41.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. \nCheck for contraindications.\nShould vaccinate client with pertussis booster dose as no pertussis booster doses were administered, client is within appropriate age range and the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP41.3-bundle.json" }
  

  @patient=DTP42.2
  Scenario: Three DTP primary series doses were administered and Two tetanus and diphtheria booster doses were administered: Tetanus and diphtheria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP42.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP42.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP42.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and two tetanus and diphtheria booster doses were administered.\nCheck for any other vaccines due.\nShould not vaccinate client with pertussis booster dose as the latest DTP dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP42.2-bundle.json" }
  

  @patient=DTP43.4
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, Client's age is between 1 year and 6 years, and The latest DTP dose was administered less than 6 months ago: Primary DTP series is complete. Client is not due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP43.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP43.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/DTP43.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first tetanus and diphtheria booster dose as the latest DTP dose was administered less than 1 year ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for first tetanus and diphtheria booster dose.\nShould not vaccinate client with pertussis booster dose as the latest DTP dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP43.4-bundle.json" }
  

  @patient=DTP44.4
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, Client's age is between 1 year and 6 years, and The latest DTP dose was administered more than 6 months ago: Primary DTP series is complete. Client is due for pertussis booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP44.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP44.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP44.4'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as the latest DTP dose was administered more than 1 year ago. \nCheck for contraindications.\nShould vaccinate client with pertussis booster dose as no pertussis booster doses were administered, client is within appropriate age range and the latest DTP dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP44.4-bundle.json" }
  

  @patient=DTP45.3
  Scenario: Three DTP primary series doses were administered, No pertussis booster doses were administered, and Client's age is more than 6 years: Pertussis immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP45.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP45.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP45.3'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as the latest DTP dose was administered more than 1 year ago. \nCheck for contraindications.\nPertussis immunization schedule is complete. Three DTP primary series doses were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP45.3-bundle.json" }
  

  @patient=DTP46.2
  Scenario: Three DTP primary series doses were administered and One pertussis booster dose was administered: Pertussis immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-DTP46.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries/$apply'
    And applyParams.parameter[0].valueString = 'Patient/DTP46.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/DTP46.2'
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE28"
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first tetanus and diphtheria booster dose as the latest DTP dose was administered more than 1 year ago. \nCheck for contraindications.\nPertussis immunization schedule is complete. Three DTP primary series doses and one pertussis booster dose were administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-DTP46.2-bundle.json" }
  
