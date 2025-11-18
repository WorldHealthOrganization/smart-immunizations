
Feature: IMMZ.D5.DT.Yellow fever contraindications Decision Table IMMZ.D5.DT.Yellow fever contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-11-17"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE23"


  @patient=Yellowfever16.1
  Scenario: Client's age is less than 6 months: Yellow fever vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever16.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTYellowFeverContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever16.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Yellowfever16.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with yellow fever as yellow fever vaccination is contraindicated in client's aged less than 6 months."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever16.1-bundle.json" }
  

  @patient=Yellowfever17.1
  Scenario: Client's age is 6–9 months: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever17.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTYellowFeverContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever17.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Yellowfever17.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Check if exceptions to age range is being met, consider risks of vaccination and make a clinical judgement. Vaccine is not recommended for those aged 6–8 months, except during epidemics when the risk of infection with the yellow fever virus is very high."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever17.1-bundle.json" }
  

  @patient=Yellowfever18.1
  Scenario: Client's age is more than or equal to 60 years: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever18.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTYellowFeverContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever18.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Yellowfever18.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Conduct a risk–benefit assessment taking into account the risk of acquiring yellow fever disease, consider risks of potential adverse events following immunization and make a clinical judgement."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever18.1-bundle.json" }
  

  @patient=Yellowfever19.1
  Scenario: The client has a history of severe allergic reactions: Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever19.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTYellowFeverContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever19.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Yellowfever19.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with yellow fever if client has severe hypersensitivity to egg antigens."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever19.1-bundle.json" }
  

  @patient=Yellowfever20.1
  Scenario: The client is severely immunocompromised: Yellow fever vaccination is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever20.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTYellowFeverContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever20.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Yellowfever20.1'
    And resultWithMedication.contained[1].payload.contentString = "Do not vaccinate client with yellow fever as yellow fever vaccination is contraindicated in severely immunocompromised clients."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever20.1-bundle.json" }
  

  @patient=Yellowfever21.1
  Scenario: The client is currently pregnant: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever21.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTYellowFeverContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever21.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Yellowfever21.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Conduct a risk–benefit assessment since yellow fever is a live vaccine and make a clinical judgement. Pregnant women may be vaccinated during epidemics at the direction of local health authorities."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever21.1-bundle.json" }
  

  @patient=Yellowfever22.1
  Scenario: The client is lactating: Clinical judgement is required. Create a clinical note
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Yellowfever22.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTYellowFeverContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Yellowfever22.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Yellowfever22.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Conduct a risk–benefit assessment since yellow fever is a live vaccine and make a clinical judgement. Lactating women should be advised that the benefits of breastfeeding far outweigh alternatives."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Yellowfever22.1-bundle.json" }
  
