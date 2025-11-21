
Feature: IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines Decision Table Polysaccharide vaccines schedule
(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)

  Background: Set the date to use for all tests
    Given call read('../IMMZD2DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-20"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE10"


  @patient=Meningococcal68.1
  Scenario: Client's age is less than 2 years: Client is not due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal68.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal68.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal68.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with first meningococcal dose as client's age is less than 2 years. Check for any other vaccines due and inform the caregiver of when to come back for the first dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal68.1-bundle.json" }
  

  @patient=Meningococcal69.2
  Scenario: No meningococcal primary series dose was administered and Client's age is more than 2 years: Client is due for meningococcal vaccination
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal69.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal69.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Meningococcal69.2'
    And resultWithMedication.contained[1].payload.contentString = "Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.\nCheck for contraindications."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal69.2-bundle.json" }
  

  @patient=Meningococcal70.2
  Scenario: One meningococcal primary series dose was administered and The latest meningococcal dose was administered less than 3 years ago: The primary series is complete. Client is not due for meningococcal booster dose.
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal70.2-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal70.2'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal70.2'
    And resultWithoutMedication.contained[1].payload.contentString = "Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 3 years ago.\nCheck for any other vaccines due and inform the caregiver of when to come back for the booster dose."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal70.2-bundle.json" }
  

  @patient=Meningococcal71.3
  Scenario: One meningococcal primary series dose was administered, The latest meningococcal dose was administered more than 3 years ago, and No meningococcal booster dose was administered: The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal71.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal71.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal71.3'
    And resultWithoutMedication.contained[1].payload.contentString = "May administer meningococcal booster dose if the client is considered to be at continued high risk of exposure. Evaluate the client and use clinical judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal71.3-bundle.json" }
  

  @patient=Meningococcal72.3
  Scenario: One meningococcal primary series dose was administered, The latest meningococcal dose was administered more than 3 years ago, and Meningococcal booster dose was administered: Meningococcal immunization schedule is complete
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Meningococcal72.3-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD2DTMeningococcalPolysaccharideVaccines/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Meningococcal72.3'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Meningococcal72.3'
    And resultWithoutMedication.contained[1].payload.contentString = "Meningococcal immunization schedule is complete. One primary series dose and one booster dose have been administered.\nCheck for any other vaccines due."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Meningococcal72.3-bundle.json" }
  
