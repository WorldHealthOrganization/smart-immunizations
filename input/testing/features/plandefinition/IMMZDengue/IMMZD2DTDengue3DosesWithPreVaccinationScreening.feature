
Feature: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening Decision Table CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE25"


  @patient=Dengue08.1
  Scenario: Client's age is less than 9 years: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first dengue dose as client's age is less than 9 years. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue08.1-bundle.json" }
  

  @patient=Dengue09.1
  Scenario: Client's age is more than 45 years: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue09.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue09.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue09.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first dengue dose as client's age is more than 45 years. \nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue09.1-bundle.json" }
  

  @patient=Dengue10.1
  Scenario: Client's dengue serostatus is negative: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue10.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue10.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue10.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first dengue dose as client does not have evidence of past dengue infection. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue10.1-bundle.json" }
  

  @patient=Dengue11.3
  Scenario: No dengue primary series doses were administered, Client's age is between 9 years and 45 years, and Client's dengue serostatus is positive: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue11.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue11.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue11.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first dengue dose as no dengue doses were administered, client is within appropriate age range and has evidence of past dengue infection. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue11.3-bundle.json" }
  

  @patient=Dengue12.4
  Scenario: One dengue primary series dose was administered, Client's age is between 9 years and 45 years, Client's dengue serostatus is positive, and The latest dengue dose was administered less than 6 months ago: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue12.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue12.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue12.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second dengue dose as latest dengue dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue12.4-bundle.json" }
  

  @patient=Dengue13.4
  Scenario: One dengue primary series dose was administered, Client's age is between 9 years and 45 years, Client's dengue serostatus is positive, and The latest dengue dose was administered more than 6 months ago: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue13.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue13.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue13.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second dengue dose as the latest dengue dose was administered more than 6 months ago and client has evidence of past dengue infection. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue13.4-bundle.json" }
  

  @patient=Dengue14.4
  Scenario: Two dengue primary series doses were administered, Client's age is between 9 years and 45 years, Client's dengue serostatus is positive, and The latest dengue dose was administered less than 6 months ago: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue14.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue14.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue14.4'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third dengue dose as latest dengue vaccine was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue14.4-bundle.json" }
  

  @patient=Dengue15.4
  Scenario: Two dengue primary series doses were administered, Client's age is between 9 years and 45 years, Client's dengue serostatus is positive, and The latest dengue dose was administered more than 6 months ago: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue15.4-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue15.4'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue15.4'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third dengue dose as latest dengue dose was administered more than 6 months ago and client has evidence of past dengue infection. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue15.4-bundle.json" }
  

  @patient=Dengue16.2
  Scenario: Three dengue primary series doses were administered and Client's age is between 9 years and 45 years: Dengue immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue16.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue16.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue16.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Dengue immunization schedule is complete. Three dengue primary series doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue16.2-bundle.json" }
  
