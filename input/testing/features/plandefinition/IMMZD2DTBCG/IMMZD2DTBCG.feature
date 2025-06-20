Feature: IMMZ.D2.DT.BCG Decision Table

  Background: Set the date to use for all tests
    * def applyParams =
    """
    { 
      resourceType: 'Parameters', 
      parameter: [ 
        {
          name: 'subject', valueString: ''
        },
        { name: 'parameters', resource: {
          resourceType: 'Parameters',
            parameter: [
              { name: 'Today', valueDate: '2025-06-11' }
            ]
          }
        }
      ] 
    }
    """

  Scenario: Load the data to be used for testing
    * def databundle = read('Bundle-IMMZD2DTBCG.json')
    Given url urlBase
    And request databundle
    When method post
    Then status 200
    And match each response.entry..response contains { status: "201 Created" } 

  Scenario: Call $apply on patient 07.Alt28dHIVULV0
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/07.Alt28dHIVULV0'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'MedicationRequest'
    And match response.contained[1].doNotPerform == false
    And match response.contained[1].medicationCodeableConcept.coding[0].code == 'DE1'
    And match response.contained[2].resourceType == 'CommunicationRequest'

  Scenario: Call $apply on patient 08.Alt28dHIVULVlt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/08.Alt28dHIVULVlt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 09.Alt28dHIVPARTTISTLV0
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/09.Alt28dHIVPARTTISTLV0'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'MedicationRequest'
    And match response.contained[1].doNotPerform == false
    And match response.contained[1].medicationCodeableConcept.coding[0].code == 'DE1'
    And match response.contained[2].resourceType == 'CommunicationRequest'

  Scenario: Call $apply on patient 10.Alt28dHIVPARTTISTLVlt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/10.Alt28dHIVPARTTISTLVlt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 11.Alt28dHIVPARTTISF
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/11.Alt28dHIVPARTTISF'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 12.Alt28dHIVPARTF
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/12.Alt28dHIVPARTF'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 13.Abt28d5yHIVUTBNLVgt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/13.Abt28d5yHIVUTBNLVgt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'MedicationRequest'
    And match response.contained[1].doNotPerform == false
    And match response.contained[1].medicationCodeableConcept.coding[0].code == 'DE1'
    And match response.contained[2].resourceType == 'CommunicationRequest'
  
  Scenario: Call $apply on patient 14.Abt28d5yHIVUTBNLVlt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/14.Abt28d5yHIVUTBNLVlt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 15.Abt28d5yHIVUTBU
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/15.Abt28d5yHIVUTBU'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 16.Abt28d5yTBP
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/16.Abt28d5yTBP'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 17.Abt28d5YHIVPARTTISF
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/17.Abt28d5YHIVPARTTISF'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 18.Abt28d5YHIVPARTTCWF
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/18.Abt28d5YHIVPARTTCWF'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 19.Abt28d5YHIVPARTTISTCWTLVgt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/19.Abt28d5YHIVPARTTISTCWTLVgt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'MedicationRequest'
    And match response.contained[1].doNotPerform == false
    And match response.contained[1].medicationCodeableConcept.coding[0].code == 'DE1'
    And match response.contained[2].resourceType == 'CommunicationRequest'

  Scenario: Call $apply on patient 20.Abt28d5YHIVPARTTISTCWTLVlt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/20.Abt28d5YHIVPARTTISTCWTLVlt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 21.Abt28d5YHIVPARTF
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/21.Abt28d5YHIVPARTF'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 22.Agt5YHIVUTBNLVgt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/22.Agt5YHIVUTBNLVgt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'MedicationRequest'
    And match response.contained[1].doNotPerform == false
    And match response.contained[1].medicationCodeableConcept.coding[0].code == 'DE1'
    And match response.contained[2].resourceType == 'CommunicationRequest'

  Scenario: Call $apply on patient 23.Agt5YHIVUTBNLVlt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/23.Agt5YHIVUTBNLVlt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 24.Agt5YHIVUTBU
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/24.Agt5YHIVUTBU'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 25.Agt5YHIVUTBP
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/25.Agt5YHIVUTBP'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 26.Agt5YHIVPARTTISF
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/26.Agt5YHIVPARTTISF'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 27.Agt5YHIVPARTTCWF
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/27.Agt5YHIVPARTTCWF'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 28.Agt5YHIVPARTTISTCWTLVgt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/28.Agt5YHIVPARTTISTCWTLVgt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'MedicationRequest'
    And match response.contained[1].doNotPerform == false
    And match response.contained[1].medicationCodeableConcept.coding[0].code == 'DE1'
    And match response.contained[2].resourceType == 'CommunicationRequest'

  Scenario: Call $apply on patient 29.Agt5YHIVPARTTISTCWTLVlt4w
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/29.Agt5YHIVPARTTISTCWTLVlt4w'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 30.Agt5YHIVPARTF
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/30.Agt5YHIVPARTF'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Call $apply on patient 31.D1
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/31.D1'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[1].resourceType == 'CommunicationRequest'
    And match response.contained[2] == '#notpresent'

  Scenario: Delete the data after testing
    * def delbundle = read('Bundle-DEL-IMMZD2DTBCG.json')
    Given url urlBase
    And request delbundle
    When method post
    Then status 200
    And match each response.entry..response contains { status: "204 No Content" }

