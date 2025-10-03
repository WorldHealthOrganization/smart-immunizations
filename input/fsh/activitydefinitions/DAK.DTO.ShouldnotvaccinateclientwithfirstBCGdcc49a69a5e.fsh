Instance: DAK.DTO.ShouldnotvaccinateclientwithfirstBCGdcc49a69a5e
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first BCG dose as ART has not been started."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the first BCG dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first BCG dose as ART has not been started."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

