Instance: DTO.ShouldnotvaccinateclientwithfirstJEdoseas835ab1e76b
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first JE dose as clients age is under 6 months."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the first JE dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first JE dose as clients age is under 6 months."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

