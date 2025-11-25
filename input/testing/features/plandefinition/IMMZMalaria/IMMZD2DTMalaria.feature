
Feature: IMMZ.D2.DT.Malaria Decision Table 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE27"


  @patient=Malaria08.1
  Scenario: Client's age is less than 5 months: Client is not due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Malaria08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first malaria dose as client's age is less than 5 months. \nCheck for any other vaccines due and inform the caregiver of when to come back for first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria08.1-bundle.json" }
  

  @patient=Malaria09.2
  Scenario: No malaria primary series doses were administered and Client's age is more than or equal to 5 months: Client is due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Malaria09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first malaria dose as no malaria doses were administered and client is within appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria09.2-bundle.json" }
  

  @patient=Malaria10.2
  Scenario: One malaria primary series dose was administered and The latest malaria dose was administered less than 4 weeks ago: Client is not due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria10.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Malaria10.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the second dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria10.2-bundle.json" }
  

  @patient=Malaria11.2
  Scenario: One malaria primary series dose was administered and The latest malaria dose was administered more than 4 weeks ago: Client is due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria11.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Malaria11.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria11.2-bundle.json" }
  

  @patient=Malaria12.2
  Scenario: Two malaria primary series doses were administered and The latest malaria dose was administered less than 4 weeks ago: Client is not due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria12.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria12.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Malaria12.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with third malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the third dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria12.2-bundle.json" }
  

  @patient=Malaria13.2
  Scenario: Two malaria primary series doses were administered and The latest malaria dose was administered more than 4 weeks ago: Client is due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria13.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria13.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Malaria13.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with third malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria13.2-bundle.json" }
  

  @patient=Malaria14.2
  Scenario: Three malaria primary series doses were administered and The latest malaria dose was administered less than 4 weeks ago: Client is not due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria14.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria14.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Malaria14.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with fourth malaria dose as the latest malaria dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver of when to come back for the fourth dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria14.2-bundle.json" }
  

  @patient=Malaria15.2
  Scenario: Three malaria primary series doses were administered and The latest malaria dose was administered more than 4 weeks ago: Client is due for malaria vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria15.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria15.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Malaria15.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with fourth malaria dose as the latest malaria dose was administered more than 4 weeks ago. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria15.2-bundle.json" }
  

  @patient=Malaria16.1
  Scenario: Four malaria primary series doses were administered: Malaria immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Malaria16.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMalaria/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Malaria16.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Malaria16.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Malaria immunization schedule is complete. Four malaria primary series doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Malaria16.1-bundle.json" }
  
