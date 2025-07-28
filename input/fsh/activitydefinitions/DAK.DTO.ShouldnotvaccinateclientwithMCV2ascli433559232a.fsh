Instance: DAK.DTO.ShouldnotvaccinateclientwithMCV2ascli433559232a
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with MCV2 as clients age is less than 15 months."
Description: """Check for any vaccines due and inform the caregiver of when to come back for MCV2.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with MCV2 as clients age is less than 15 months."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

