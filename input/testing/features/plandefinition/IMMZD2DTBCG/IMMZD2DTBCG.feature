Feature: IMMZ.IND.01 Immunization coverage for BCG vaccine

  Scenario: Load the data to be used for testing
    * def databundle = read('Bundle-IMMZD2DTBCG.json')
    Given url urlBase
    And request databundle
    When method post
    Then status 200
    And match each response.entry..response contains { status: "201 Created" } 

  Scenario: Evaluate the IND.01 measure
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And params { subject: 'Patient/07.Alt28dHIVULV0' }
    When method get
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'MedicationRequest'
    And match response.contained[1].doNotPerform == false
    And match response.contained[1].medicationCodeableConcept.coding[0].code == 'DE1'
    And match response.contained[2].resourceType == 'CommunicationRequest'

  Scenario: Delete the data after testing
    * def delbundle = read('Bundle-DEL-IMMZD2DTBCG.json')
    Given url urlBase
    And request delbundle
    When method post
    Then status 200
    And match each response.entry..response contains { status: "204 No Content" }

