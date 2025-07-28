Instance: DAK.DTO.Shouldnotvaccinateclientwithrubelladoc17a755680
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with rubella dose as clients age is less than 9 months."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the first dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with rubella dose as clients age is less than 9 months."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

