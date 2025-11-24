
Feature: IMMZ.D5.DT.Hepatitis A contraindications Decision Table IMMZ.D5.DT.Hepatitis A contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-24"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE5"


  @patient=HepatitisA39.1
  Scenario: The client is currently pregnant: Live attentuated Hepatitis A-containing vaccine is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA39.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTHepatitisAContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA39.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/HepatitisA39.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with hepatitis A as hepatitis A vaccination is contraindicated for pregnant client and may pose a theoretical risk to the developing fetus."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA39.1-bundle.json" }
  

  @patient=HepatitisA40.1
  Scenario: The client is severely immunocompromised: Live attentuated Hepatitis A-containing vaccine is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA40.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTHepatitisAContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA40.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/HepatitisA40.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with hepatitis A as hepatitis A vaccination is contraindicated for severely immunocompromised clients."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA40.1-bundle.json" }
  

  @patient=HepatitisA41.1
  Scenario: The client has a history of severe allergic reactions: Hepatitis A vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-HepatitisA41.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTHepatitisAContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/HepatitisA41.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/HepatitisA41.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with inactivated hepatitis A vaccination if client has had a severe allergic reaction to the previous dose.\nDo not vaccinate client with live attenuated hepatitis A vaccination if client has severe allergy to components included in the live attenuated hepatitis A-containing vaccines."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-HepatitisA41.1-bundle.json" }
  
