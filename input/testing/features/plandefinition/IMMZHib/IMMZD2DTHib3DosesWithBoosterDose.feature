
Feature: IMMZ.D2.DT.Hib.3 doses with booster dose Decision Table 3 primary doses with a booster dose (3p+1)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-07"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE4"


  @patient=Hib24.1
  Scenario: Client's age is less than 6 weeks: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib24.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib24.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib24.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first Hib dose as client is less than 6 weeks old. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib24.1-bundle.json" }
  

  @patient=Hib25.2
  Scenario: No Hib primary series doses were administered and Client's age is between 6 weeks and 5 years: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib25.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib25.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib25.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first Hib dose as client is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib25.2-bundle.json" }
  

  @patient=Hib26.4
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered less than 4 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib26.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib26.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib26.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second Hib dose as latest Hib dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib26.4-bundle.json" }
  

  @patient=Hib27.4
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered more than 4 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib27.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib27.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib27.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second Hib dose as client's age was less than 1 year when first Hib dose was administered and the latest Hib dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib27.4-bundle.json" }
  

  @patient=Hib28.3
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, and Client's age was more than 1 year when first Hib dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib28.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib28.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib28.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Hib immunization schedule is complete as client's age was more than 1 year when first Hib dose was administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib28.3-bundle.json" }
  

  @patient=Hib29.3
  Scenario: Two Hib primary series doses were administered, Client's age is between 6 weeks and not more than 5 years, and The latest Hib dose was administered less than 4 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib29.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib29.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib29.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third Hib dose as the latest Hib dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for third dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib29.3-bundle.json" }
  

  @patient=Hib30.3
  Scenario: Two Hib primary series doses were administered, Client's age is between 6 weeks and not more than 5 years, and The latest Hib dose was administered more than 4 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib30.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib30.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib30.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third Hib dose as client is within appropriate age range and the latest Hib dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib30.3-bundle.json" }
  

  @patient=Hib31.4
  Scenario: Three Hib primary series doses were administered, No Hib booster doses were administered, Client's age is between 6 weeks and 5 years, and The latest Hib dose was administered less than 6 months ago: Primary series is complete. Client is not due for Hib booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib31.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib31.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib31.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with Hib booster dose as the latest Hib dose was administered less than 6 months ago. Hib primary series is complete. \nCheck for any other vaccines due and inform the caregiver of when to come back for booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib31.4-bundle.json" }
  

  @patient=Hib32.4
  Scenario: Three Hib primary series doses were administered, No Hib booster doses were administered, Client's age is between 6 weeks and 5 years, and The latest Hib dose was administered more than 6 months ago: Primary series is complete. Client is due for Hib booster dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib32.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib32.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib32.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with Hib booster dose as primary series is complete and the latest Hib dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib32.4-bundle.json" }
  

  @patient=Hib33.2
  Scenario: Three Hib primary series doses were administered and One Hib booster dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib33.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib33.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib33.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Hib immunization schedule is complete. Three Hib primary series doses and one booster dose have been administered. \nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib33.2-bundle.json" }
  

  @patient=Hib34.1
  Scenario: Client's age is more than 5 years: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib34.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib34.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib34.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with Hib dose as client is more than 5 years old and Hib vaccination is not required for healthy children aged over 5 years. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib34.1-bundle.json" }
  
