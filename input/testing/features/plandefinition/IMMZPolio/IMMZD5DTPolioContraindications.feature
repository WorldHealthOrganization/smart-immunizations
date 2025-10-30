
Feature: IMMZ.D5.DT.Polio contraindications Decision Table IMMZ.D5.DT.Polio contraindications

  Background: Set the date to use for all tests
    Given call read('../IMMZD5DT.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "2025-10-10"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "DE30"


  @patient=Polio87.1
  Scenario: The client has history of severe allergic reactions: Poliovirus vaccination could be contraindicated. Clinical judgement required
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio87.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTPolioContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio87.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithoutMedication.contained[0].subject.reference = 'Patient/Polio87.1'
    And resultWithoutMedication.contained[1].payload.contentString = "Do not vaccinate client with inactivated polio vaccine (IPV) if client has had a previous severe reaction or known allergy to streptomycin, neomycin or polymyxin B.\nDo not vaccinate client with oral polio vaccine (OPV) if client has had a allergic reaction to OPV or to the trace antibiotics contained."
    And match response contains deep resultWithoutMedication
    And match response.contained == '#[2]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio87.1-bundle.json" }
  

  @patient=Polio88.1
  Scenario: The client is severely immunocompromised: Poliovirus vaccination with bOPV is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio88.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTPolioContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio88.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Polio88.1'
    And resultWithMedication.contained[1].payload.contentString = "For bOPV dose, do not vaccinate client for bOPV dose as bOPV vaccination is contranindicated in severely immunocompromised clients. \nCheck if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio88.1-bundle.json" }
  

  @patient=Polio89.1
  Scenario: The client has immunodeficiency syndromes: Poliovirus vaccination with bOPV is contraindicated
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-Polio89.1-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/IMMZD5DTPolioContraindications/$apply'
    And applyParams.parameter[0].valueString = 'Patient/Polio89.1'
    And request applyParams
    When method post
    Then status 200
    And resultWithMedication.contained[0].subject.reference = 'Patient/Polio89.1'
    And resultWithMedication.contained[1].payload.contentString = "For bOPV dose, do not vaccinate client for bOPV dose as bOPV vaccination is contranindicated in clients with immunodeficiency disorders.\nCheck if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement."
    And match response contains deep resultWithMedication
    And match response.contained == '#[3]'

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-Polio89.1-bundle.json" }
  
