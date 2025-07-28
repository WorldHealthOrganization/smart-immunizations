Instance: DAK.DTO.ShouldnotvaccinateclientwithfirstTBEd8ed8f267ec
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first TBE dose as clients age is less than 1 year."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the first dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first TBE dose as clients age is less than 1 year."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

