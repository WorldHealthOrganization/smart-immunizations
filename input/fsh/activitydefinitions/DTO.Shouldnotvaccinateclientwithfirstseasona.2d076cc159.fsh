Instance: DTO.Shouldnotvaccinateclientwithfirstseasona.2d076cc159
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first seasonal influenza dose as clients age is less than 6 months."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for first dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first seasonal influenza dose as clients age is less than 6 months."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

