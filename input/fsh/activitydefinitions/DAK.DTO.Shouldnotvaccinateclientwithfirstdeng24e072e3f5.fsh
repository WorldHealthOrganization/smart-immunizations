Instance: DAK.DTO.Shouldnotvaccinateclientwithfirstdeng24e072e3f5
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first dengue dose as client does not have evidence of past dengue infection."
Description: """Check for any other vaccines due.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first dengue dose as client does not have evidence of past dengue infection."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

