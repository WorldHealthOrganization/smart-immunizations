Instance: DTO.Shouldnotvaccinateclientwithfirstdenguedo1a8a96ab81
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first dengue dose as clients age is more than 45 years."
Description: """Check for any vaccines due.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first dengue dose as clients age is more than 45 years."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

