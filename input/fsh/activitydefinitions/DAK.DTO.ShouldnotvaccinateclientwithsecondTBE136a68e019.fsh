Instance: DAK.DTO.ShouldnotvaccinateclientwithsecondTBE136a68e019
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the next dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with second TBE dose as the latest dose was administered less than 1 month ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

