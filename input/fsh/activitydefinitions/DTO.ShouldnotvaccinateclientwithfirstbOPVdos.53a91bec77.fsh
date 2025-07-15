Instance: DTO.ShouldnotvaccinateclientwithfirstbOPVdos.53a91bec77
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first bOPV dose as clients age is less than 6 weeks."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the first bOPV dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first bOPV dose as clients age is less than 6 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

