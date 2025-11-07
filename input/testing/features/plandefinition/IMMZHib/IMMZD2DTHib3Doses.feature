
Feature: IMMZ.D2.DT.Hib.3 doses Decision Table 3 primary doses without a booster dose (3p)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-07"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE4"


  @patient=Hib08.1
  Scenario: Client's age is less than 6 weeks: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first Hib dose as client's age is less than 6 weeks. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib08.1-bundle.json" }
  

  @patient=Hib09.2
  Scenario: No Hib primary series doses were administered and Client's age is between 6 weeks and 5 years: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first Hib dose as no Hib doses were administered and client is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib09.2-bundle.json" }
  

  @patient=Hib10.4
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered less than 4 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib10.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib10.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib10.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second Hib dose as latest Hib dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib10.4-bundle.json" }
  

  @patient=Hib11.4
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, Client's age was less than 1 year when first Hib dose was administered, and The latest Hib dose was administered more than 4 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib11.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib11.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib11.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second Hib dose as client's age was less than 1 year when first Hib dose was administered and the latest Hib dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib11.4-bundle.json" }
  

  @patient=Hib12.3
  Scenario: One Hib primary series dose was administered, Client's age is at least 6 weeks and not more than 5 years, and Client's age was more than 1 year when first Hib dose was administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib12.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib12.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib12.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Hib immunization schedule is complete as client's age was more than 1 year when first Hib dose was administered. One Hib primary series dose was administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib12.3-bundle.json" }
  

  @patient=Hib13.3
  Scenario: Two Hib primary series doses were administered, Client's age is between 6 weeks and not more than 5 years, and The latest Hib dose was administered less than 4 weeks ago: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib13.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib13.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib13.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third Hib dose as latest Hib dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for third dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib13.3-bundle.json" }
  

  @patient=Hib14.3
  Scenario: Two Hib primary series doses were administered, Client's age is between 6 weeks and not more than 5 years, and The latest Hib dose was administered more than 4 weeks ago: Client is due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib14.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib14.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Hib14.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third Hib dose as client is within appropriate age range and latest Hib dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib14.3-bundle.json" }
  

  @patient=Hib15.1
  Scenario: Three Hib primary series doses were administered: Hib immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib15.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib15.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib15.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Hib immunization schedule is complete. Three Hib primary series doses were administered. \nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib15.1-bundle.json" }
  

  @patient=Hib16.1
  Scenario: Client's age is more than 5 years: Client is not due for Hib vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Hib16.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTHib3Doses/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Hib16.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Hib16.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with Hib dose as client is more than 5 years old and Hib vaccination is not required for healthy children aged over 5 years. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Hib16.1-bundle.json" }
  
