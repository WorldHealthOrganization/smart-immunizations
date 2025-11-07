
Feature: IMMZ.D2.DT.Hib.2 doses with booster dose Decision Table 2 primary doses with a booster dose (2p+1)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-07"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE4"


  @patient=Hib42.1
  Scenario: Client's age is less than 6 weeks: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib42.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib42.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib42.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first Hib dose as client's age is less than 6 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib42.1-bundle.json" }
  

  @patient=Hib43.2
  Scenario: No Hib primary series doses were administered and Client's age is between 6 weeks and 5 years: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib43.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib43.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib43.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first Hib dose as client is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib43.2-bundle.json" }
  

  @patient=Hib44.4
  Scenario: One Hib primary series doses was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered less than 8 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib44.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib44.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib44.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second Hib dose as the latest Hib dose was administered less than 8 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib44.4-bundle.json" }
  

  @patient=Hib45.4
  Scenario: One Hib primary series doses was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered more than 8 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib45.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib45.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib45.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second Hib dose as client's age was less than 1 year when first Hib dose was adminsitered and latest Hib dose was administered more than 8 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib45.4-bundle.json" }
  

  @patient=Hib46.3
  Scenario: One Hib primary series doses was administered, Client's age is at least 6 weeks and not more than 5 years, and Client's age was more than 1 year when first Hib dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib46.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib46.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib46.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Hib immunization schedule is complete as client's age was more than 1 year when first Hib dose was administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib46.3-bundle.json" }
  

  @patient=Hib47.4
  Scenario: Two Hib primary series doses were administered, No Hib booster doses were administered, Client's age is at least 6 weeks and not more than 5 years, and The latest Hib dose was administered less than 6 months ago: Primary series is complete. Client is not due for Hib booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib47.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib47.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib47.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with Hib booster dose as latest Hib dose was administered less than 6 months ago. Hib primary series is complete. \nCheck for any other vaccines due and inform the caregiver of when to come back for booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib47.4-bundle.json" }
  

  @patient=Hib48.4
  Scenario: Two Hib primary series doses were administered, No Hib booster doses were administered, Client's age is at least 6 weeks and not more than 5 years, and The latest Hib dose was administered more than 6 months ago: Primary series is complete. Client is due for Hib booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib48.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib48.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib48.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with Hib booster dose as primary series is complete and the latest Hib dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib48.4-bundle.json" }
  

  @patient=Hib49.2
  Scenario: Two Hib primary series doses were administered and One Hib booster dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib49.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib49.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib49.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Hib immunization schedule is complete. Three Hib primary series doses and a booster dose were administered. \nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib49.2-bundle.json" }
  

  @patient=Hib50.1
  Scenario: Client's age is more than 5 years: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib50.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib50.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib50.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with Hib dose as client is more than 5 years old and Hib vaccination is not required for healthy children aged over 5 years. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib50.1-bundle.json" }
  
