Instance: DTO.ShouldnotvaccinateclientwithfirstBCGdose.23d282a80f
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first BCG dose as client is not currently receiving ART."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the first BCG dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first BCG dose as client is not currently receiving ART."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

