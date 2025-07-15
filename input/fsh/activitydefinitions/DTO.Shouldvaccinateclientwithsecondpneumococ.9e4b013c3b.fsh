Instance: DTO.Shouldvaccinateclientwithsecondpneumococ.9e4b013c3b
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 8 weeks ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 8 weeks ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

