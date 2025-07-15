Instance: DTO.Shouldnotvaccinateclientwithrubelladoseasc8ae2a3a6d
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with rubella dose as live vaccine was administered in the last 4 weeks."
Description: """Check for any other vaccines due.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with rubella dose as live vaccine was administered in the last 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

