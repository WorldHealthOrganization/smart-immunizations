Instance: DAK.DTO.Shouldnotvaccinateclientwithcholerado5b61ed252c
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with cholera dose as clients age is less than 2 years."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the first cholera dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with cholera dose as clients age is less than 2 years."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

