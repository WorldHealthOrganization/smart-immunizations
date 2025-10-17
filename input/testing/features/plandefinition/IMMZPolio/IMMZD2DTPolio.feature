@ignore
Feature: Scenarios for IMMZ.D2.DT PlanDefinitions
  
  @defaults
  Scenario: Set the date to use for all tests
    Given def resultWithOPVandIPV =
    """
    {
      "resourceType": "CarePlan",
      "contained": [
        {
          "resourceType": "RequestGroup",
          "subject": {
            "reference": "#string"
          }
        },
        {
          "resourceType": "CommunicationRequest",
          "payload": {
            "contentString": "#string"
          }
        },
        {
          "resourceType": "MedicationRequest",
          "doNotPerform": false,
          "medicationCodeableConcept": {
            "coding": {
              "code": "DE30"
            }
          }
        },
        {
          "resourceType": "MedicationRequest",
          "doNotPerform": false,
          "medicationCodeableConcept": {
            "coding": {
              "code": "DE31"
            }
          }
        }
      ]
    }
    """
    And def resultWithTwoCR =
    """
    {
      "resourceType": "CarePlan",
      "contained": [
        {
          "resourceType": "RequestGroup",
          "subject": {
            "reference": "#string"
          }
        },
        {
          "resourceType": "CommunicationRequest",
          "payload": {
            "contentString": "#string"
          }
        },
        {
          "resourceType": "CommunicationRequest",
          "payload": {
            "contentString": "#string"
          }
        }
      ]
    }
    """
