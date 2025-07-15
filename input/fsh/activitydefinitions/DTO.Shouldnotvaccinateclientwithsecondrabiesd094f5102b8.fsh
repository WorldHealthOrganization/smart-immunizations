Instance: DTO.Shouldnotvaccinateclientwithsecondrabiesd094f5102b8
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the second dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

