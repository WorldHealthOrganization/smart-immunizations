Instance: DAK.DTO.Shouldnotvaccinateclientwithmeaslessu5779f91dfc
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with measles supplementary dose as live vaccine was administered in the past 4 weeks."
Description: """Check for any vaccines due and inform the caregiver of when to come back for supplementary dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with measles supplementary dose as live vaccine was administered in the past 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

