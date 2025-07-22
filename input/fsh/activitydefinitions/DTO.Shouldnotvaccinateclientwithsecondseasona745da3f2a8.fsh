Instance: DTO.Shouldnotvaccinateclientwithsecondseasona745da3f2a8
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with second seasonal influenza dose as latest seasonal influenza dose was administered less than 4 weeks ago."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the second dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with second seasonal influenza dose as latest seasonal influenza dose was administered less than 4 weeks ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

