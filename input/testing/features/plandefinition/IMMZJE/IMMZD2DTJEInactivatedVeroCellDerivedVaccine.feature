
Feature: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine Decision Table Inactivated Vero cell-derived vaccination schedule (2-dose scheme)
JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-14"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE8"


  @patient=JE08.1
  Scenario: Client's age is less than 6 months: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE08.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE08.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/JE08.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first JE dose as client's age is under 6 months. \nCheck for any vaccines due and inform the caregiver of when to come back for the first JE dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE08.1-bundle.json" }
  

  @patient=JE09.2
  Scenario: No JE primary series doses were administered and Client's age is more than or equal to 6 months: Client is due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/JE09.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first JE dose as no JE doses were administered and client is within the appropriate age range. \nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE09.2-bundle.json" }
  

  @patient=JE10.2
  Scenario: One JE primary series dose was administered and The latest JE dose was administered less than 4 weeks ago: Client is not due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE10.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE10.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/JE10.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with second JE dose as the latest JE dose was administered less than 4 weeks ago. \nCheck for any other vaccines due and inform the caregiver when to come back for the second JE dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE10.2-bundle.json" }
  

  @patient=JE11.2
  Scenario: One JE primary series dose was administered and The latest JE dose was administered more than 4 weeks ago: Client is due for JE vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE11.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE11.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/JE11.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with second JE dose as the latest JE dose was administered more than 4 weeks ago.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE11.2-bundle.json" }
  

  @patient=JE12.1
  Scenario: Two JE primary series doses were administered: JE immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-JE12.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine/$apply'
    And applyParams.parameter[0].valueString = 'Patient/JE12.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/JE12.1'
    And resultWithoutMedication.contained[1].payload.contentString = "JE immunization schedule is complete. Two JE primary series doses were administered. \nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-JE12.1-bundle.json" }
  
