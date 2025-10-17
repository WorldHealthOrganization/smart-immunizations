
Feature: IMMZ.D2.DT.Polio.Birth dose Decision Table Birth dose administration as part of "bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-10-10"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE30"


  @patient=Polio08.2
  Scenario: bOPV birth dose (a zero dose) was not administered and Client's age is less than 1 week: Client is due for the bOPV birth dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio08.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioBirthDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio08.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Polio08.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with bOPV birth dose (a zero dose) as poliovirus birth dose was not administered and client's age is less than 1 week. Check for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio08.2-bundle.json" }
  

  @patient=Polio09.2
  Scenario: bOPV birth dose (a zero dose) was not administered and Client's age is more than or equal to 1 week: Client is not due for the bOPV birth dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio09.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioBirthDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio09.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio09.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with bOPV birth dose (a zero dose) as client's age is more than or equal to 1 week. Check for any other vaccines due and inform the caregiver of when to come back for the next dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio09.2-bundle.json" }
  

  @patient=Polio10.1
  Scenario: bOPV birth dose (a zero dose) was administered: Client is not due for the bOPV birth dose
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio10.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTPolioBirthDose/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio10.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio10.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Poliovirus birth dose was already administered. Check poliovirus immunization schedule."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio10.1-bundle.json" }
  
