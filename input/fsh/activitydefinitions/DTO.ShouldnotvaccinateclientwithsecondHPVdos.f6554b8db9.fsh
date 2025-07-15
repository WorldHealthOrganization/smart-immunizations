Instance: DTO.ShouldnotvaccinateclientwithsecondHPVdos.f6554b8db9
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with second HPV dose as the latest HPV dose was administered less than 6 months ago."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the next dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with second HPV dose as the latest HPV dose was administered less than 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

