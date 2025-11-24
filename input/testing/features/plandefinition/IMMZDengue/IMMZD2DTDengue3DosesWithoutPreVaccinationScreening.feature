
Feature: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening Decision Table CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE25"


  @patient=Dengue24.1
  Scenario: Client's age is less than 9 years: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue24.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue24.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue24.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first dengue dose as client's age is less than 9 years. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue24.1-bundle.json" }
  

  @patient=Dengue25.1
  Scenario: Client's age is more than 45 years: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue25.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue25.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue25.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first dengue dose as client's age is more than 45 years. \nCheck for any vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue25.1-bundle.json" }
  

  @patient=Dengue26.2
  Scenario: No dengue primary series doses were administered and Client's age is between 9 years and 45 years: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue26.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue26.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue26.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first dengue dose as no dengue doses were administered and client is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue26.2-bundle.json" }
  

  @patient=Dengue27.3
  Scenario: One dengue primary series dose was administered, Client's age is between 9 years and 45 years, and The latest dengue dose was administered less than 6 months ago: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue27.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue27.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue27.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second dengue dose as latest dengue dose was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue27.3-bundle.json" }
  

  @patient=Dengue28.3
  Scenario: One dengue primary series dose was administered, Client's age is between 9 years and 45 years, and The latest dengue dose was administered more than 6 months ago: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue28.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue28.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue28.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second dengue dose as latest dengue dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue28.3-bundle.json" }
  

  @patient=Dengue29.3
  Scenario: Two dengue primary series doses were administered, Client's age is between 9 years and 45 years, and The latest dengue dose was administered less than 6 months ago: Client is not due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue29.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue29.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue29.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third dengue dose as latest dengue vaccine was administered less than 6 months ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue29.3-bundle.json" }
  

  @patient=Dengue30.3
  Scenario: Two dengue primary series doses were administered, Client's age is between 9 years and 45 years, and The latest dengue dose was administered more than 6 months ago: Client is due for dengue vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue30.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue30.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Dengue30.3'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third dengue dose as latest dengue dose was administered more than 6 months ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue30.3-bundle.json" }
  

  @patient=Dengue31.2
  Scenario: Three dengue primary series doses were administered and Client's age is between 9 years and 45 years: Dengue immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Dengue31.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Dengue31.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Dengue31.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Dengue immunization schedule is complete. Three dengue primary series doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Dengue31.2-bundle.json" }
  
