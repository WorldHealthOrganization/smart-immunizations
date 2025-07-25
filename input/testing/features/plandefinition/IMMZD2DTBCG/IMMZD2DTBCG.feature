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

  Scenario Outline: Call $apply on patient <patient> expecting medication
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/<patient>'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[?(@.resourceType=='MedicationRequest')] contains deep { doNotPerform: false, medicationCodeableConcept: { coding: { code: '<code>' } } }
    And match response.contained[?(@.resourceType=='CommunicationRequest')] contains deep { payload: { contentString: "<content>" } }

  Examples:
    | patient | code | content |
    | 07.Alt28dHIVULV0 | DE1 | Should vaccinate client with first BCG dose as no BCG dose was administered, client is within age range, HIV status is not positive and no live vaccine was administered.\nCheck for contraindications. |
    | 09.Alt28dHIVPARTTISTLV0 | DE1 | Should vaccinate client with first BCG dose as no BCG dose was administered, client is immunologically stable and no live vaccine was administered.\nCheck for contraindications. |
    | 13.Abt28d5yHIVUTBNLVgt4w | DE1 | Should vaccinate client with first BCG dose as no BCG dose was administered, client's TB test result is negative and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications. |
    | 19.Abt28d5YHIVPARTTISTCWTLVgt4w | DE1 | Should vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. No live vaccine was administered in the last 4 weeks.\nCheck for contraindications. |
    | 22.Agt5YHIVUTBNLVgt4w | DE1 | Should vaccinate client with first BCG dose as no BCG dose was administered, client's TB test result is negative and no live vaccine was administered in the past 4 weeks.\nCheck for contraindications. |
    | 28.Agt5YHIVPARTTISTCWTLVgt4w | DE1 | Should vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. No live vaccine was administered in the past 4 weeks.\nCheck for contraindications |

  Scenario Outline: Call $apply on patient <patient> not expecting medication
    Given url urlBase
    And path 'PlanDefinition/IMMZD2DTBCG/$apply'
    And applyParams.parameter[0].valueString = 'Patient/<patient>'
    And request applyParams
    When method post
    Then status 200
    And match response.resourceType == 'CarePlan'
    And match response.contained[0].resourceType == 'RequestGroup'
    And match response.contained[?(@.resourceType=='CommunicationRequest')] contains deep { payload: { contentString: "<content>" } }

  Examples:
    | patient | content |
    | 08.Alt28dHIVULVlt4w | Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose. |
    | 10.Alt28dHIVPARTTISTLVlt4w | Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose. |
    | 11.Alt28dHIVPARTTISF | Should not vaccinate client with first BCG dose as client is not immunologically stable.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose. |
    | 12.Alt28dHIVPARTF | Should not vaccinate client with first BCG dose as ART has not been started.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose. |
    | 14.Abt28d5yHIVUTBNLVlt4w | Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first dose. |
    | 15.Abt28d5yHIVUTBU | Recommend the client to perform TB infection testing.\nRe-evaluate client once the test result is available. |
    | 16.Abt28d5yTBP | Should not vaccinate client with first BCG dose as client's TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out). |
    | 17.Abt28d5YHIVPARTTISF | Should not vaccinate client with first BCG dose as client is not immunologically stable.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose. |
    | 18.Abt28d5YHIVPARTTCWF | Should not vaccinate client with first BCG dose as client is not clinically well.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose. |
    | 20.Abt28d5YHIVPARTTISTCWTLVlt4w | Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose. |
    | 21.Abt28d5YHIVPARTF | Should not vaccinate client with first BCG dose as client is not currently receiving ART.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose. |
    | 23.Agt5YHIVUTBNLVlt4w | Should not vaccinate client with first BCG dose as live vaccine was administered in the last 4 weeks.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose. |
    | 24.Agt5YHIVUTBU | Recommend the client to perform TB infection testing.\nRe-evaluate client once the test result is available. |
    | 25.Agt5YHIVUTBP | Should not vaccinate client with first BCG dose as client's TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out). |
    | 26.Agt5YHIVPARTTISF | Should not vaccinate client with first BCG dose as client is not immnologically stable.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose. |
    | 27.Agt5YHIVPARTTCWF | Should not vaccinate client with first BCG dose as client is not clinically well.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose. |
    | 29.Agt5YHIVPARTTISTCWTLVlt4w | Should not vaccinate client with first BCG dose as live vaccine was administered in the past 4 weeks.\nCheck for any vaccines due, and inform the caregiver of when to come back for the first BCG dose. |
    | 30.Agt5YHIVPARTF | Should not vaccinate client with first BCG dose as client is not currently receiving ART.\nCheck for any vaccines due and inform the caregiver of when to come back for the first BCG dose. |
    | 31.D1 | BCG immunization schedule is complete. One BCG primary series dose was administered.\nCheck for any vaccines due. |

  Scenario: Delete the data after testing
    * def delbundle = read('Bundle-DEL-IMMZD2DTBCG.json')
    Given url urlBase
    And request delbundle
    When method post
    Then status 200
    And match each response.entry..response contains { status: "204 No Content" }

